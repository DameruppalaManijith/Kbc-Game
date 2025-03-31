process.on("uncaughtException", (err) => {
    console.error("🔥 Uncaught Exception:", err);
    process.exit(1); // Force restart logging
});

process.on("unhandledRejection", (reason, promise) => {
    console.error("🔥 Unhandled Promise Rejection at:", promise, "reason:", reason);
    process.exit(1); // Force restart logging
});
import db from "./database.js"
import express from "express"
import bodyParser from "body-parser"
import cors from "cors"
const app = express();
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));
var users=0;
var fffusers=0;
var previousquestion={};
var currentquestion={};
app.listen(5000,(err)=>{
    if(err){
        console.log("Server not connected");
    }
    else{
        console.log("Server conncected");
    }
    
});

function getRandomElement(arr) {
    return arr[Math.floor(Math.random() * arr.length)];
}
function getRandomItems(arr, numItems) {
    if (arr.length < numItems) {
        throw new Error("Not enough items in the array!");
    }

    // Shuffle the array using Fisher-Yates algorithm
    let shuffled = [...arr]; // Create a copy to avoid modifying the original array
    for (let i = shuffled.length - 1; i > 0; i--) {
        let j = Math.floor(Math.random() * (i + 1));
        [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]]; // Swap elements
    }

    // Return the first 'numItems' elements
    return shuffled.slice(0, numItems);
}
app.post("/user",(req,res)=>{
    users++;
    //SELECT COUNT (*) FROM players

    db.query("INSERT INTO players (id,name,email)  VALUES (?, ? ,? )",[users,req.body.name,req.body.email],(err,result)=>{
        if(err){
            console.log("error");
        }
        else{
           
            return res.status(200).send("User added successfully");
        }
    });
    
});
app.post("/enterFFF",(req,res)=>{
    fffusers++;
    db.query("INSERT INTO fffplayers (id,name,email,time,correctanswers,answered) VALUES (?,?,?,0,0,0)",[fffusers,req.body.name,req.body.email],(err,result)=>{});
   console.log("insertion finne");
    db.query("DELETE FROM players WHERE id = ?",[req.body.id],(err,result)=>{res.sendStatus(200);});
    console.log("deletion fine");
});

app.get("/usercount",(req,res)=>{
    res.json({"usercount":users});
});
app.get("/fffusercount",(req,res)=>{
    res.json({"usercount":fffusers});
});
app.post("/userinfo",(req,res)=>{
    db.query("SELECT * FROM players WHERE id = ?",[req.body.id],(err,result)=>{
       if(err){
        console.log("error from userinfo");
       }
       else{
        res.json(result);
       }
    });
});
app.get("/getfffplayerinfo",(req,res)=>{

    db.query("SELECT * FROM fffplayers ORDER BY correctanswers DESC, time ASC",(err,result)=>{
        if(err){
            console.log("error fetching getting fffplayer info");
        }
        else{

            // if(fffusers === 2){
            //     console.log(result[0].time,result[1].time);
            // }
            // else if(fffusers === 1){
            //     console.log(result[0].time);
            // }
        
        res.json(result);
        }
    });
});
app.get("/fffusers",(req,res)=>{
    db.query("SELECT * FROM fffplayers",(err,result)=>{
        res.json(result);
    });
});
app.get("/admininfo",(req,res)=>{
    db.query("SELECT id,name,email FROM players",(err,result)=>{
        res.json(result);
    });
});
app.post("/updateinfo",(req,res)=>{
    db.query("UPDATE players SET clicked = 1",(err,result)=>{});
    db.query("UPDATE players SET selected = 1 WHERE id= ?",[req.body.id],(err,result)=>{res.sendStatus(200);});
});
app.post("/getquestion",(req,res)=>{
    db.query("SELECT * FROM questions WHERE level = ?",[req.body.level],(err,result)=>{
        if(Object.keys(previousquestion).length === 0 ){
            previousquestion = getRandomElement(result);
            res.json(previousquestion);
        }
        else{
            currentquestion = getRandomElement(result);
            while(currentquestion.question === previousquestion.question){
                currentquestion = getRandomElement(result);
            }
            previousquestion = currentquestion;
            res.json(currentquestion);
        }
    });
}
);
app.get("/getfffquestions",(req,res)=>{
    db.query("UPDATE accessquestion SET startfff = 1",(err,result)=>{ if(err){
        console.log("error");
    }});
    db.query("SELECT * FROM fffquestions",(err,result)=>{
        if(err){
            console.log("error");
        }
        else{
        res.json(getRandomItems(result,10));
        }
    });
});
app.get("/getstart",(req,res)=>{
    db.query("SELECT * FROM accessquestion",(err,result)=>{
        if(err){
            console.log("error");
        }
        else{
        res.json(result);
        }
    });
});
app.post("/changeselected",(req,res)=>{
    if(req.body.type === "waitingroom"){
    users--;
    db.query("DELETE FROM players WHERE id= ?",[req.body.id],(err,result)=>{});
    db.query("UPDATE players SET clicked = 0",(err,result)=>{
        if(err){
            console.log("error");
        }
        else{
           
            return res.status(200).send("User added successfully");
        }
    });
}
    else if(req.body.type === "fff"){
        fffusers--;
        db.query("DELETE FROM fffplayers WHERE id = ? ",[req.body.fffid],(err,result)=>{res.sendStatus(200);});    
    }
});
app.post("/setoption",(req,res)=>{
    db.query("UPDATE options SET value = ?",[req.body.option],(err,result)=>{
        if(err){
            console.log("error updating");
        }
        else{
            console.log("updated ",req.body.option);
            res.sendStatus(200);
        }
    });
});
app.get("/fetchoption",(req,res)=>{
    db.query("SELECT * FROM options",(err,result)=>{
        if(err){
            console.log("error");
        }
        else{
        res.json(result);
        }
    })
})
app.post("/sendid",(req,res)=>{
   db.query("UPDATE accessquestion SET questionid = ?",[req.body.id],(err,result)=>{ if(err){
    console.log("error");
}
    else{
        res.sendStatus(200);
    }});
});
app.get("/fetchfffquestion",(req,res)=>{
    db.query("SELECT questionid FROM accessquestion",(err,result1)=>{
        if(err){
            console.log("error");
        }
        else{
        db.query("SELECT * FROM fffquestions WHERE number = ?",[result1[0].questionid],(err,result2)=>{
           // console.log(result1,result2);
            res.json(result2);
        });
    }
    });
});
app.post("/inserttimecorrect",(req,res)=>{
    db.query("UPDATE fffplayers SET time = ?,correctanswers = ?,answered = ? WHERE id = ? ",[req.body.time,req.body.answeredcorrectly,req.body.answered,req.body.fffid],(err,result)=>{ if(err){
        console.log("error");
    }
    else{
        res.sendStatus(200);
        // console.log(req.body.time,req.body.answeredcorrectly,req.body.answered,req.body.fffid);
    }
});


});
app.get("/fetchanswered",(req,res)=>{
    db.query("SELECT answered FROM fffplayers",(err,result)=>{
        if(err){
            console.log("error");
        }
        else{
        res.json(result);
        }
    });
});
app.get("/setstartandquestionid",(req,res)=>{
    db.query("UPDATE choose SET value=0",(err,result)=>{});
    db.query("UPDATE accessquestion SET startfff=0,questionid=0",(err,result)=>{
        if(err){
            console.log("error");
        }
        else{
            res.sendStatus(200);
        }
    });
})
app.post("/getselectedinfo",(req,res)=>{
    db.query("SELECT selected FROM players WHERE id=?",[req.body.id],(err,result)=>{
        res.json(result);
    });
});
app.get("/cw",(req,res)=>{
    db.query("UPDATE choose SET value = 1",(err,result)=>{res.sendStatus(200);});
})
app.get("/fetchvalue",(req,res)=>{
    db.query("SELECT * FROM choose",(err,result)=>{
        res.json(result);
    });
});
app.get("/fetchwinner",(req,res)=>{
    db.query("SELECT id FROM fffplayers ORDER BY correctanswers DESC, time ASC LIMIT 1",(err,result)=>{
        console.log(result);
        res.json(result);
    });
});
app.post("/getbackfromfff",(req,res)=>{
    fffusers--;
    db.query("UPDATE accessquestion SET startfff=0,questionid=0",(err,result)=>{});
    db.query("DELETE FROM fffplayers WHERE id = ?",[req.body.id],(err,result)=>{res.sendStatus(200);});
});
app.get("/setbackstart",(req,res)=>{
    db.query("UPDATE accessquestion SET startfff=0,questionid=0",(err,result)=>{});
    res.sendStatus(200);
})
app.get("/setbackvalue",(req,res)=>{
    db.query("UPDATE choose SET value = 0",(err,result)=>{res.sendStatus(200);});
})
