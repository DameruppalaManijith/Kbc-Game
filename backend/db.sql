CREATE DATABASE kbc;

SHOW DATABASES;
USE kbc;
CREATE TABLE players (
          id INT PRIMARY KEY,
          name VARCHAR(255),
          email VARCHAR(255),
          selected INT DEFAULT 0,
          clicked INT DEFAULT 0
      );

CREATE TABLE questions (
          level INT,
          question VARCHAR(255),
          optionA VARCHAR(255),
          optionB VARCHAR(255),
          optionC VARCHAR(255),
          optionD VARCHAR(255),
          answer VARCHAR(255)
      );
CREATE TABLE options(
      value varchar(255)
);

INSERT INTO options (value) VALUES ('');
CREATE TABLE fffquestions (
    number INT,
    fquestion TEXT,
    foptionA VARCHAR(255),
    foptionB VARCHAR(255),
    foptionC VARCHAR(255),
    foptionD VARCHAR(255),
    fanswer VARCHAR(255)
);
INSERT INTO fffquestions (number, fquestion, foptionA, foptionB, foptionC, foptionD, fanswer) VALUES
(1, "Arrange the following planets in increasing order of distance from the Sun.", "Mercury, Venus, Earth, Mars", "Venus, Earth, Mars, Jupiter", "Mars, Jupiter, Saturn, Uranus", "Earth, Mars, Jupiter, Saturn", "Mercury, Venus, Earth, Mars"),

(2, "Arrange the following historical events in chronological order.", "World War I, World War II, Cold War", "French Revolution, American Revolution, Industrial Revolution", "Fall of Berlin Wall, Moon Landing, Independence of India", "Signing of Magna Carta, Renaissance, Discovery of America", "Signing of Magna Carta, Renaissance, Discovery of America"),

(3, "Arrange the following computing technologies in order of their invention.", "Vacuum Tubes, Transistors, Integrated Circuits, Microprocessors", "Microprocessors, Integrated Circuits, Transistors, Vacuum Tubes", "Transistors, Vacuum Tubes, Microprocessors, Integrated Circuits", "Integrated Circuits, Transistors, Microprocessors, Vacuum Tubes", "Vacuum Tubes, Transistors, Integrated Circuits, Microprocessors"),

(4, "Arrange the following programming languages in the order they were created.", "C, Python, Java, JavaScript", "FORTRAN, C, Python, Ruby", "COBOL, Pascal, C++, Swift", "BASIC, Lisp, Prolog, Go", "FORTRAN, C, Python, Ruby"),

(5, "Arrange the following Indian cities from north to south.", "Delhi, Mumbai, Hyderabad, Bangalore", "Chandigarh, Jaipur, Chennai, Coimbatore", "Shimla, Kolkata, Pune, Thiruvananthapuram", "Lucknow, Bhopal, Nagpur, Mysore", "Delhi, Mumbai, Hyderabad, Bangalore"),

(6, "Arrange the following wars in chronological order.", "American Civil War, World War I, World War II, Cold War", "Napoleonic Wars, American Civil War, Cold War, Vietnam War", "French Revolution, Napoleonic Wars, World War I, World War II", "Crimean War, Spanish-American War, World War I, Gulf War", "American Civil War, World War I, World War II, Cold War"),

(7, "Arrange the following footballers by their year of birth.", "Pele, Maradona, Ronaldo, Messi", "Maradona, Pele, Ronaldo, Messi", "Messi, Ronaldo, Maradona, Pele", "Ronaldo, Messi, Maradona, Pele", "Pele, Maradona, Ronaldo, Messi"),

(8, "Arrange the following famous books in order of publication.", "Hamlet, Pride and Prejudice, War and Peace, The Great Gatsby", "Pride and Prejudice, War and Peace, The Great Gatsby, Hamlet", "The Great Gatsby, Hamlet, War and Peace, Pride and Prejudice", "War and Peace, Pride and Prejudice, Hamlet, The Great Gatsby", "Hamlet, Pride and Prejudice, War and Peace, The Great Gatsby"),

(9, "Arrange the following mobile operating systems by release date.", "Symbian, Android, iOS, Windows Phone", "Windows Phone, Symbian, Android, iOS", "iOS, Symbian, Windows Phone, Android", "Android, Windows Phone, Symbian, iOS", "Symbian, Android, iOS, Windows Phone"),

(10, "Arrange the following internet technologies by their invention.", "Email, WWW, Social Media, Cloud Computing", "Cloud Computing, Email, WWW, Social Media", "WWW, Email, Social Media, Cloud Computing", "Social Media, Cloud Computing, WWW, Email", "Email, WWW, Social Media, Cloud Computing"),

(11, "Arrange the following famous scientists in order of birth.", "Newton, Einstein, Tesla, Hawking", "Einstein, Tesla, Hawking, Newton", "Tesla, Newton, Hawking, Einstein", "Hawking, Newton, Tesla, Einstein", "Newton, Einstein, Tesla, Hawking"),

(12, "Arrange the following musical genres by their emergence.", "Classical, Jazz, Rock, Hip-Hop", "Rock, Classical, Hip-Hop, Jazz", "Jazz, Hip-Hop, Classical, Rock", "Hip-Hop, Rock, Jazz, Classical", "Classical, Jazz, Rock, Hip-Hop"),

(13, "Arrange the following sports by their first Olympic appearance.", "Wrestling, Athletics, Football, Basketball", "Football, Basketball, Wrestling, Athletics", "Athletics, Wrestling, Basketball, Football", "Basketball, Wrestling, Football, Athletics", "Wrestling, Athletics, Football, Basketball"),

(14, "Arrange the following countries in order of gaining independence.", "USA, India, Brazil, Canada", "Brazil, USA, Canada, India", "India, USA, Brazil, Canada", "USA, Canada, India, Brazil", "USA, India, Brazil, Canada"),

(15, "Arrange the following social media platforms in order of launch.", "Facebook, Twitter, Instagram, TikTok", "Twitter, Instagram, Facebook, TikTok", "Instagram, TikTok, Facebook, Twitter", "TikTok, Facebook, Twitter, Instagram", "Facebook, Twitter, Instagram, TikTok"),

(16, "Arrange the following films in order of release.", "The Godfather, Star Wars, Titanic, Avatar", "Avatar, Titanic, Star Wars, The Godfather", "Titanic, Star Wars, The Godfather, Avatar", "The Godfather, Star Wars, Titanic, Avatar", "The Godfather, Star Wars, Titanic, Avatar"),

(17, "Arrange the following famous inventions by date.", "Telephone, Television, Computer, Internet", "Computer, Telephone, Internet, Television", "Internet, Computer, Telephone, Television", "Television, Internet, Computer, Telephone", "Telephone, Television, Computer, Internet"),

(18, "Arrange the following Indian Prime Ministers in order of service.", "Nehru, Indira Gandhi, Rajiv Gandhi, Modi", "Indira Gandhi, Nehru, Modi, Rajiv Gandhi", "Modi, Rajiv Gandhi, Nehru, Indira Gandhi", "Rajiv Gandhi, Indira Gandhi, Modi, Nehru", "Nehru, Indira Gandhi, Rajiv Gandhi, Modi"),

(19, "Arrange the following cars by their launch date.", "Ford Model T, Volkswagen Beetle, Toyota Corolla, Tesla Model S", "Toyota Corolla, Tesla Model S, Volkswagen Beetle, Ford Model T", "Volkswagen Beetle, Ford Model T, Tesla Model S, Toyota Corolla", "Tesla Model S, Ford Model T, Toyota Corolla, Volkswagen Beetle", "Ford Model T, Volkswagen Beetle, Toyota Corolla, Tesla Model S"),

(20, "Arrange the following programming paradigms by history.", "Procedural, Object-Oriented, Functional, Reactive", "Object-Oriented, Procedural, Functional, Reactive", "Functional, Reactive, Procedural, Object-Oriented", "Reactive, Object-Oriented, Procedural, Functional", "Procedural, Object-Oriented, Functional, Reactive");
CREATE TABLE accessquestion(
startfff INT,
questionid INT
);
CREATE TABLE fffplayers(
id INT,
name VARCHAR(255),
email VARCHAR(255),
time FLOAT,
correctanswers INT,
answered INT
);
CREATE TABLE choose(
value INT
);
INSERT INTO choose VALUES (0);
INSERT INTO accessquestion VALUES (0,0);
INSERT INTO questions (level, question, optionA, optionB, optionC, optionD, answer) VALUES 
-- Level 1
(1, 'The SI unit of electric charge is:', 'Joule', 'Coulomb', 'Tesla', 'Henry', 'Coulomb'),
(1, 'Newton’s second law states that force is equal to:', 'Mass × Velocity', 'Mass × Acceleration', 'Mass × Displacement', 'Momentum', 'Mass × Acceleration'),
(1, 'If f(x) = x² + 3x + 2, then what is f\'(x)?', '2x + 3', 'x + 3', '2x + 2', '3x + 2', '2x + 3'),
(1, 'If sin A = 3/5, then cos A is:', '4/5', '3/5', '2/5', '1/5', '4/5'),
(1, 'Which of the following is a scalar quantity?', 'Velocity', 'Force', 'Work', 'Momentum', 'Work'),

-- Level 2

(2, 'The SI unit of electric field is:', 'Newton', 'Volt/meter', 'Coulomb', 'Joule', 'Volt/meter'),
(2, 'The equation of a line passing through (1,2) with slope 3 is:', 'y = 3x + 1', 'y = 3x - 1', 'y = 3x - 2', 'y = 3x + 2', 'y = 3x - 1'),
(2, 'What is the escape velocity from Earth?', '11.2 km/s', '9.8 km/s', '7.9 km/s', '15 km/s', '11.2 km/s'),
(2, 'The value of integral limits 0 to 1 (3x² + 2x + 1) dx is:', '11/3', '10/3', '9/3', '8/3', '11/3'),

-- Level 3
(3, 'If A = [[1,2],[3,4]], then det(A) is:', '-2', '2', '1', '0', '-2'),
(3, 'The sum of the first 50 natural numbers is:', '1275', '1225', '1250', '1275', '1275'),
(3, 'The capacitance of a parallel plate capacitor depends on:', 'Charge only', 'Plate area and separation', 'Voltage only', 'Mass of plates', 'Plate area and separation'),
(3, 'The time period of a simple pendulum depends on:', 'Its length', 'Its mass', 'Its amplitude', 'None of these', 'Its length'),
(3, 'The roots of the equation x² - 7x + 10 = 0 are:', '2, 5', '1, 6', '3, 4', '-2, -3', '2, 5'),

-- Level 4
(4, 'A body in uniform circular motion has:', 'Constant velocity', 'Constant speed', 'Constant acceleration', 'Zero velocity', 'Constant speed'),
(4, 'Which of the following is NOT a fundamental force?', 'Gravitational', 'Electromagnetic', 'Frictional', 'Strong nuclear', 'Frictional'),
(4, 'The acceleration due to gravity on the Moon is approximately:', '1.6 m/s²', '9.8 m/s²', '3.7 m/s²', '12 m/s²', '1.6 m/s²'),
(4, 'The number of solutions of cos x = x in the interval [0,1] is:', '0', '1', '2', 'Infinite', '1'),
(4, 'Coulomb\'s law is applicable for:', 'Point charges', 'Line charges', 'Surface charges', 'All types of charges', 'Point charges'),

-- Level 5
(5, 'The area of a triangle with sides 6, 8, and 10 is:', '24', '48', '30', '20', '24'),
(5, 'The derivative of e^x is:', 'e^x', 'xe^x', 'e^x + 1', 'x^e', 'e^x'),
(5, 'The dimensional formula of work is:', 'MLT⁻²', 'ML²T⁻²', 'ML⁻¹T²', 'MLT²', 'ML²T⁻²');
INSERT INTO questions (level, question, optionA, optionB, optionC, optionD, answer) VALUES
-- Level 6
(6, 'A satellite is orbiting the Earth in a circular orbit of radius R. The total energy of the satellite in this orbit is:', '-GMm/R', 'GMm/R', '-GMm/2R', 'GMm/2R', '-GMm/2R'),
(6, 'The escape velocity from Earth is v. The escape velocity from a planet having four times the mass and double the radius of Earth is:', '2v', 'v', '4v', 'v/2', '2v'),
(6, 'The time period of a satellite in a low Earth orbit depends on:', 'The radius of the Earth only', 'The mass of the satellite', 'The mass and radius of the Earth', 'The orbital velocity of the satellite', 'The mass and radius of the Earth'),
(6, 'Two satellites of equal masses are orbiting the Earth in circular orbits of radii R and 2R. The ratio of their orbital speeds is:', '1:2', '2:1', 'sqrt(2) : 1', '1: sqrt(2)', 'sqrt(2) : 1'),
(6, 'If the radius of Earth shrinks to half of its present value, keeping its mass unchanged, the acceleration due to gravity on the surface will:', 'Increase by 4 times', 'Decrease by 4 times', 'Remain the same', 'Increase by 2 times', 'Increase by 4 times'),

-- Level 7
(7, 'A satellite in an orbit of radius r has orbital speed v. What will be its speed if the radius of the orbit is increased to 4r?', '2v', 'v/2', 'v/sqrt(2)', 'v/4', 'v/sqrt(2)'),
(7, 'A planet has half the radius of Earth but the same density. The acceleration due to gravity on its surface will be:', 'g', 'g/2', 'g/4', 'g/8', 'g/2'),
(7, 'If a satellite is taken to a higher orbit, then:', 'Its orbital speed increases', 'Its time period decreases', 'Its orbital speed decreases', 'Its angular momentum decreases', 'Its orbital speed decreases'),
(7, 'The mass of the Moon is 1/81 times the mass of Earth, and its radius is 1/4 of Earth''s radius. If the escape velocity from Earth is 11.2 km/s, then the escape velocity from the Moon is approximately:', '2.5 km/s', '4.0 km/s', '5.6 km/s', '1.2 km/s', '2.5 km/s'),
(7, 'If the Sun were to collapse into a black hole, its Schwarzschild radius would be approximately:', '3 km', '30 km', '300 km', '3000 km', '30 km'),

-- Level 8
(8, 'If A = [[1, 2], [3, 4]], then det(A) is:', '-2', '2', '0', '1', '-2'),
(8, 'The number of solutions of sin(x) = x is:', '0', '1', '2', 'Infinite', '1'),
(8, 'If A and B are independent events, then P(A ∩ B) is given by:', 'P(A) + P(B)', 'P(A) P(B)', 'P(A) - P(B)', 'P(A) / P(B)', 'P(A) P(B)'),
(8, 'The derivative of f(x) = x^x is:', 'x^x (1 + ln x)', 'x^x (1 - ln x)', 'x^x ln x', 'x^x', 'x^x (1 + ln x)'),
(8, 'The value of lim (x → 0) (sin 5x / x) is:', '1', '5', '0', 'Infinity', '5'),

-- Level 9
(9, 'The sum of the first 100 natural numbers is:', '5050', '5000', '5100', '4950', '5050'),
(9, 'The integral ∫ e^x cos x dx is solved using:', 'Integration by parts', 'Substitution', 'Partial fractions', 'Direct formula', 'Integration by parts'),
(9, 'The sum of an infinite geometric series with first term 3 and common ratio 1/2 is:', '6', '5', '4', '3', '6'),
(9, 'The area enclosed by |x| + |y| = 4 is:', '16', '32', '8', '64', '32'),
(9, 'If a_n = 3^n + 2^n, then the limit lim (n → ∞) (a_(n+1) / a_n) is:', '3', '2', '1.5', 'Infinity', '3'),

-- Level 10
(10, 'Find the moment of inertia of a thin rod of mass M and length L about an axis perpendicular to it and passing through one end:', '(1/3)ML²', '(1/2)ML²', '(1/4)ML²', '(1/6)ML²', '(1/3)ML²'),
(10, 'The acceleration due to gravity at a depth d inside the Earth (where d << R) is given by:', 'g(1 - d/R)', 'g(1 + d/R)', 'g(1 - d^2/R^2)', 'g(1 + d^2/R^2)', 'g(1 - d/R)'),
(10, 'A geostationary satellite orbits around Earth in:', 'Polar orbit', 'Equatorial orbit', 'Circular orbit at any angle', 'Any arbitrary orbit', 'Equatorial orbit'),
(10, 'A binary star system consists of two stars of masses M and 2M. The center of mass of the system is at:', 'The location of the heavier star', 'The midpoint of the line joining them', 'A point closer to the heavier star', 'Equally spaced between them', 'A point closer to the heavier star'),
(10, 'The gravitational field inside a spherical shell is:', 'Zero', 'Constant', 'Varies linearly', 'Depends on distance from center', 'Zero');
INSERT INTO questions (level, question, optionA, optionB, optionC, optionD, answer) VALUES
-- Level 11
(11, 'A charged particle moves in a uniform magnetic field. What is the nature of its path if the velocity has a component along the field?', 'Straight line', 'Helix', 'Circle', 'Parabola', 'Helix'),
(11, 'A wire carrying current is placed in a magnetic field perpendicular to it. The force experienced by the wire is given by:', 'F = BIL', 'F = BIL sinθ', 'F = BIL cosθ', 'F = BIL tanθ', 'F = BIL sinθ'),
(11, 'A coil of wire carrying current produces:', 'Electric field', 'Gravitational field', 'Magnetic field', 'None of these', 'Magnetic field'),
(11, 'The SI unit of magnetic field intensity is:', 'Weber', 'Tesla', 'Henry', 'Farad', 'Tesla'),
(11, 'The force on a moving charge in a magnetic field is maximum when the angle between velocity and field is:', '0°', '45°', '90°', '180°', '90°'),

-- Level 12
(12, 'The time period of a simple pendulum of length L in a satellite is:', '0', 'Infinite', '2π√(L/g)', '2π√(L/2g)', '0'),
(12, 'A geostationary satellite moves in:', 'Polar orbit', 'Equatorial orbit', 'Elliptical orbit', 'Random orbit', 'Equatorial orbit'),
(12, 'If the radius of the Earth shrinks by 1%, the acceleration due to gravity on the surface will:', 'Increase by 1%', 'Decrease by 1%', 'Remain unchanged', 'Increase by 2%', 'Increase by 2%'),
(12, 'Escape velocity depends on:', 'Mass of object', 'Mass of planet', 'Charge of object', 'Both mass of object and planet', 'Mass of planet'),
(12, 'The work done in bringing a body from infinity to the surface of Earth is:', 'Positive', 'Negative', 'Zero', 'Infinity', 'Negative'),

-- Level 13
(13, 'The potential energy of an electric dipole in a uniform electric field is:', '-pE cosθ', 'pE sinθ', '-pE sinθ', 'pE cosθ', '-pE cosθ'),
(13, 'The resistance of an ideal ammeter is:', 'Zero', 'Infinite', 'Very high', 'Very low', 'Zero'),
(13, 'A 100 W bulb is connected to a 200 V supply. The current through the bulb is:', '0.2 A', '0.5 A', '1 A', '2 A', '0.5 A'),
(13, 'In a parallel circuit, the voltage across each resistor is:', 'Different', 'Same', 'Zero', 'Depends on resistance', 'Same'),
(13, 'The total charge flowing in a circuit in 10 seconds at 2A current is:', '5C', '10C', '20C', '30C', '20C'),

-- Level 14
(14, 'The power factor of a pure resistive circuit is:', '1', '0', 'Infinity', '0.5', '1'),
(14, 'The equivalent resistance of three 6Ω resistors in parallel is:', '2Ω', '3Ω', '4Ω', '1Ω', '2Ω'),
(14, 'The unit of self-inductance is:', 'Farad', 'Tesla', 'Henry', 'Weber', 'Henry'),
(14, 'When capacitors are connected in parallel, their equivalent capacitance:', 'Increases', 'Decreases', 'Remains same', 'Depends on voltage', 'Increases'),
(14, 'The energy stored in a capacitor is given by:', 'QV', '1/2 QV', '1/2 CV²', 'Both B and C', 'Both B and C'),

-- Level 15
(15, 'In a transformer, the number of turns in the primary coil is greater than the secondary coil. The transformer is:', 'Step-up', 'Step-down', 'Ideal', 'None', 'Step-down'),
(15, 'The peak value of AC voltage if the RMS value is 220V is:', '220V', '311V', '110V', '440V', '311V'),
(15, 'A moving coil galvanometer can be converted into an ammeter by:', 'Adding a high resistance in series', 'Adding a low resistance in parallel', 'Adding a high resistance in parallel', 'Adding a low resistance in series', 'Adding a low resistance in parallel'),
(15, 'The efficiency of a transformer is generally:', 'Less than 50%', 'About 100%', 'More than 100%', 'Between 90-99%', 'Between 90-99%'),
(15, 'Lenz’s Law is based on:', 'Conservation of charge', 'Conservation of energy', 'Newton’s third law', 'Coulomb’s law', 'Conservation of energy'),

-- Level 16
(16, 'The force between two parallel current-carrying conductors is:', 'Attractive if current is in same direction', 'Repulsive if current is in same direction', 'Zero', 'Infinite', 'Attractive if current is in same direction'),
(16, 'The frequency of AC in India is:', '50 Hz', '60 Hz', '100 Hz', '120 Hz', '50 Hz'),
(16, 'A charged particle moves in a circular path in a uniform magnetic field. The time period of its motion depends on:', 'Velocity', 'Magnetic field', 'Charge to mass ratio', 'Both B and C', 'Both B and C'),
(16, 'The unit of magnetic flux is:', 'Weber', 'Tesla', 'Henry', 'Farad', 'Weber'),
(16, 'An ideal voltmeter has:', 'Zero resistance', 'Infinite resistance', 'Very low resistance', '1 ohm resistance', 'Infinite resistance');
INSERT INTO questions (level, question, optionA, optionB, optionC, optionD, answer) VALUES
(17, 'Let f(x) = x^3 - 3x + 2. Find the sum of all real roots of f(f(x)) = 0.', '0', '-2', '-3', '1', '-3'),
(17, 'If z = e^(iθ), then the sum of the distinct values of z^6 + 1/z^6 for θ = (2πk)/7, k = 1,2,...,6, is:', '0', '1', '2', '-1', '0'),
(17, 'The number of real solutions of the equation 2^(x^2 - 5x + 6) + 2^(|x - 2|) = 1 is:', '0', '1', '2', '3', '2'),
(17, 'A charged particle of mass m and charge q is projected into a region with a uniform magnetic field B perpendicular to its velocity. If its initial speed is v, the radius of its circular path is:', 'mv/qB', 'qB/mv', 'mB/qv', 'qv/mB', 'mv/qB'),
(17, 'A particle is projected with speed u at an angle θ with the horizontal. The radius of curvature at the highest point of its trajectory is given by:', 'u^2/g', 'u^2 sin^2θ / g', 'u^2 cos^2θ / g', 'u^2 tanθ / g', 'u^2 cos^2θ / g');
INSERT INTO questions (level, question, optionA, optionB, optionC, optionD, answer) VALUES
-- Level 1 (Basic Financial Management)
(1, 'What is the main objective of financial management?', 'Profit Maximization', 'Wealth Maximization', 'Revenue Growth', 'Cost Cutting', 'Wealth Maximization'),
(1, 'Which financial statement shows the company’s revenues and expenses?', 'Balance Sheet', 'Income Statement', 'Cash Flow Statement', 'Retained Earnings Statement', 'Income Statement'),
(1, 'Which of the following is a short-term source of finance?', 'Debentures', 'Trade Credit', 'Equity Shares', 'Term Loans', 'Trade Credit'),
(1, 'What is working capital?', 'Fixed Assets - Current Liabilities', 'Current Assets - Current Liabilities', 'Total Assets - Total Liabilities', 'Equity + Liabilities', 'Current Assets - Current Liabilities'),
(1, 'Which financial ratio measures a company’s ability to pay short-term obligations?', 'Debt-to-Equity Ratio', 'Current Ratio', 'Price-to-Earnings Ratio', 'Return on Assets', 'Current Ratio'),

-- Level 2 (Basic-Intermediate Financial Management)
(2, 'Which of the following represents owners’ equity in a company?', 'Debentures', 'Preference Shares', 'Equity Shares', 'Bonds', 'Equity Shares'),
(2, 'What does ROI (Return on Investment) measure?', 'Liquidity', 'Profitability', 'Leverage', 'Operational Efficiency', 'Profitability'),
(2, 'Which financial statement provides a snapshot of a company’s financial position at a specific point in time?', 'Income Statement', 'Balance Sheet', 'Cash Flow Statement', 'Profit and Loss Statement', 'Balance Sheet'),
(2, 'What is the formula for calculating net profit?', 'Revenue - Expenses', 'Revenue - Fixed Costs', 'Revenue - Depreciation', 'Revenue - Liabilities', 'Revenue - Expenses'),
(2, 'Which term refers to the process of planning and controlling a company’s financial resources?', 'Cost Accounting', 'Financial Planning', 'Risk Management', 'Capital Structure', 'Financial Planning'),

-- Level 3 (Intermediate Financial Management)
(3, 'What is the time value of money?', 'Money loses value over time', 'Money gains value over time', 'A dollar today is worth more than a dollar tomorrow', 'Money is constant in value', 'A dollar today is worth more than a dollar tomorrow'),
(3, 'Which of the following is a long-term source of finance?', 'Bank Overdraft', 'Trade Credit', 'Debentures', 'Accounts Payable', 'Debentures'),
(3, 'Which financial metric measures a firm’s profitability in relation to its total assets?', 'Return on Equity', 'Debt-to-Equity Ratio', 'Return on Assets', 'Current Ratio', 'Return on Assets'),
(3, 'Which ratio helps in determining how efficiently a company is utilizing its fixed assets?', 'Fixed Asset Turnover Ratio', 'Current Ratio', 'Debt-to-Equity Ratio', 'Operating Profit Margin', 'Fixed Asset Turnover Ratio'),
(3, 'Which financial instrument represents ownership in a company?', 'Bonds', 'Debentures', 'Equity Shares', 'Fixed Deposits', 'Equity Shares'),

-- Level 4 (Intermediate Financial Management)
(4, 'Which method is used to evaluate the profitability of an investment project?', 'Net Present Value (NPV)', 'Current Ratio', 'Debt-to-Equity Ratio', 'Return on Assets', 'Net Present Value (NPV)'),
(4, 'What does the capital structure of a company refer to?', 'Combination of debt and equity financing', 'Total assets of a company', 'Cash flow statement components', 'Revenue sources', 'Combination of debt and equity financing'),
(4, 'What does financial leverage measure?', 'Liquidity', 'Solvency', 'Debt usage in capital structure', 'Profitability', 'Debt usage in capital structure'),
(4, 'What is the cost of capital?', 'Total cost of goods sold', 'Minimum return required by investors', 'Operating expenses of a company', 'Total assets divided by liabilities', 'Minimum return required by investors'),
(4, 'Which factor does not influence working capital requirements?', 'Business Cycle', 'Nature of Business', 'Fixed Assets', 'Credit Policy', 'Fixed Assets'),

-- Level 5 (Advanced Financial Management)
(5, 'What is the break-even point in financial management?', 'Point where total revenue equals total cost', 'Point where fixed costs exceed total revenue', 'Point where marginal cost is zero', 'Point where operating profit is maximum', 'Point where total revenue equals total cost'),
(5, 'What does "Dividend Payout Ratio" measure?', 'Total dividends paid to shareholders', 'Portion of earnings distributed as dividends', 'Net profit of a company', 'Gross profit margin', 'Portion of earnings distributed as dividends'),
(5, 'Which term refers to the risk of a company being unable to meet its financial obligations?', 'Operational Risk', 'Credit Risk', 'Liquidity Risk', 'Market Risk', 'Liquidity Risk'),
(5, 'What is capital budgeting?', 'Short-term investment decisions', 'Long-term investment decisions', 'Daily cash flow management', 'Pricing strategy for goods and services', 'Long-term investment decisions'),
(5, 'Which of the following is NOT a method of capital budgeting?', 'Net Present Value', 'Internal Rate of Return', 'Payback Period', 'Debt-to-Equity Ratio', 'Debt-to-Equity Ratio'),

-- Level 6 (Advanced-Expert Financial Management)
(6, 'Which financial strategy involves using borrowed money to increase returns?', 'Diversification', 'Hedging', 'Leverage', 'Liquidity Management', 'Leverage'),
(6, 'Which concept explains the effect of fixed costs on profits as sales increase?', 'Operating Leverage', 'Financial Leverage', 'Risk Diversification', 'Cash Flow Management', 'Operating Leverage'),
(6, 'Which of the following factors affect a company’s capital structure?', 'Company’s Risk', 'Cost of Capital', 'Market Conditions', 'All of the Above', 'All of the Above'),
(6, 'Which valuation method is used to determine the value of a company?', 'Discounted Cash Flow (DCF)', 'Earnings Before Interest and Taxes (EBIT)', 'Return on Assets (ROA)', 'Quick Ratio', 'Discounted Cash Flow (DCF)'),
(6, 'What is the Modigliani-Miller theorem related to?', 'Capital Structure Irrelevance', 'Efficient Market Hypothesis', 'Time Value of Money', 'Risk-Return Tradeoff', 'Capital Structure Irrelevance');

-- More levels can be added in a similar format.
INSERT INTO questions (level, question, optionA, optionB, optionC, optionD, answer) VALUES
-- Level 7
(7, 'What is the speed of light in a vacuum?', '3 × 10^8 m/s', '3 × 10^6 m/s', '3 × 10^5 m/s', '3 × 10^7 m/s', '3 × 10^8 m/s'),
(7, 'Which scientist formulated the theory of special relativity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Stephen Hawking', 'Albert Einstein'),
(7, 'What happens to time as an object approaches the speed of light?', 'Time speeds up', 'Time slows down', 'Time remains unchanged', 'Time stops', 'Time slows down'),
(7, 'What is the term for the effect where time runs slower for a moving observer?', 'Time Expansion', 'Gravitational Shift', 'Time Dilation', 'Lorentz Effect', 'Time Dilation'),
(7, 'What is the equation that relates energy and mass in special relativity?', 'E = mc', 'E = mc^2', 'E = mgh', 'E = ½ mv^2', 'E = mc^2'),

-- Level 8
(8, 'Which of these is an assumption of special relativity?', 'Time is absolute', 'Light speed is constant', 'Mass is invariant', 'Space and time are independent', 'Light speed is constant'),
(8, 'What is the twin paradox in special relativity?', 'A paradox about identical twins', 'A contradiction in Newton’s laws', 'A paradox about time dilation', 'A gravitational time dilation effect', 'A paradox about time dilation'),
(8, 'What is the name of the transformation equations in special relativity?', 'Maxwell’s Equations', 'Lorentz Transformations', 'Newtonian Transformations', 'Einstein’s Equations', 'Lorentz Transformations'),
(8, 'What is the proper time in relativity?', 'Time measured in any frame', 'Time measured in an observer’s frame', 'Time measured in an accelerated frame', 'Time measured in the object’s rest frame', 'Time measured in the object’s rest frame'),
(8, 'How does length appear for an observer moving at relativistic speeds?', 'Length increases', 'Length remains the same', 'Length contracts', 'Length oscillates', 'Length contracts'),

-- Level 9
(9, 'Which effect explains why GPS satellites experience time dilation?', 'Gravitational redshift', 'Special relativity', 'General relativity', 'Quantum entanglement', 'General relativity'),
(9, 'What is the general theory of relativity mainly concerned with?', 'Electromagnetic fields', 'Motion of light', 'Gravity and spacetime', 'Quantum particles', 'Gravity and spacetime'),
(9, 'Which phenomenon shows that gravity affects time?', 'Doppler Effect', 'Time Dilation', 'Gravitational Time Dilation', 'Michelson-Morley Experiment', 'Gravitational Time Dilation'),
(9, 'What happens to time in stronger gravitational fields?', 'It speeds up', 'It slows down', 'It remains unchanged', 'It reverses', 'It slows down'),
(9, 'Which experiment confirmed time dilation due to gravity?', 'Young’s Double-Slit Experiment', 'Michelson-Morley Experiment', 'Hafele-Keating Experiment', 'Davisson-Germer Experiment', 'Hafele-Keating Experiment'),

-- Level 10
(10, 'What shape does spacetime take around a massive object?', 'Flat', 'Spherical', 'Curved', 'Irregular', 'Curved'),
(10, 'Which equation describes the curvature of spacetime in general relativity?', 'Schrödinger’s Equation', 'Maxwell’s Equations', 'Einstein Field Equations', 'Heisenberg’s Equation', 'Einstein Field Equations'),
(10, 'What is the event horizon of a black hole?', 'The center', 'The boundary beyond which light cannot escape', 'A ring of high radiation', 'The gravitational singularity', 'The boundary beyond which light cannot escape'),
(10, 'What is a wormhole in theoretical physics?', 'A type of black hole', 'A shortcut through spacetime', 'A collapsed star', 'A time dilation zone', 'A shortcut through spacetime'),
(10, 'Which experiment attempted to detect the motion of Earth through the aether?', 'Hafele-Keating Experiment', 'Michelson-Morley Experiment', 'Einstein’s Thought Experiment', 'Davisson-Germer Experiment', 'Michelson-Morley Experiment'),

-- Level 11
(11, 'Which famous paradox discusses faster-than-light communication?', 'Twin Paradox', 'EPR Paradox', 'Lorentz Paradox', 'Time Travel Paradox', 'EPR Paradox'),
(11, 'What is the Schwarzschild radius?', 'The size of a neutron star', 'The radius of an event horizon', 'The distance of an orbit', 'The radius of the universe', 'The radius of an event horizon'),
(11, 'What happens to an observer falling into a black hole as seen from an outside observer?', 'They accelerate infinitely', 'They slow down and freeze at the event horizon', 'They disappear instantly', 'They travel back in time', 'They slow down and freeze at the event horizon'),
(11, 'What is the relativistic mass equation?', 'm = m0 * sqrt(1 - v^2/c^2)', 'm = m0 * (1 - v^2/c^2)', 'm = m0 / sqrt(1 - v^2/c^2)', 'm = m0 * v^2/c^2', 'm = m0 / sqrt(1 - v^2/c^2)'),
(11, 'What is a frame of reference in relativity?', 'A fixed point in space', 'A set of coordinates to measure motion', 'An absolute space', 'A measure of gravity', 'A set of coordinates to measure motion'),

-- Level 12
(12, 'Which scientist expanded relativity to include acceleration and gravity?', 'Max Planck', 'Stephen Hawking', 'Albert Einstein', 'Isaac Newton', 'Albert Einstein'),
(12, 'What is gravitational lensing?', 'Light bending due to a medium', 'Distortion of light due to gravity', 'Reflection of light in space', 'Light scattering in the atmosphere', 'Distortion of light due to gravity'),
(12, 'Which theory predicts the existence of gravitational waves?', 'Quantum Mechanics', 'General Relativity', 'Newtonian Mechanics', 'Special Relativity', 'General Relativity'),
(12, 'What is the main postulate of general relativity?', 'Space and time are independent', 'Gravity is a force', 'Spacetime is curved by mass and energy', 'Speed of light varies with gravity', 'Spacetime is curved by mass and energy'),
(12, 'What happens to the perceived frequency of light from an object moving away from the observer?', 'It shifts to blue', 'It shifts to red', 'It remains unchanged', 'It oscillates', 'It shifts to red');
INSERT INTO questions (level, question, optionA, optionB, optionC, optionD, answer) VALUES
-- Level 12
(12, 'What is the study of aerodynamics primarily concerned with?', 'Motion of celestial bodies', 'Forces acting on moving air', 'Behavior of solid structures', 'Earthquake dynamics', 'Forces acting on moving air'),
(12, 'Which force opposes the motion of an aircraft through air?', 'Thrust', 'Lift', 'Drag', 'Weight', 'Drag'),
(12, 'What is the term for the upward force that allows an airplane to fly?', 'Thrust', 'Lift', 'Drag', 'Weight', 'Lift'),
(12, 'Which shape is commonly used for high-speed aircraft wings?', 'Rectangular', 'Elliptical', 'Delta', 'Circular', 'Delta'),
(12, 'Which law explains how an aircraft wing generates lift?', 'Newton’s First Law', 'Bernoulli’s Principle', 'Pascal’s Law', 'Archimedes’ Principle', 'Bernoulli’s Principle'),

-- Level 13
(13, 'What happens to air pressure as velocity increases over an aircraft wing?', 'Increases', 'Decreases', 'Remains constant', 'Oscillates', 'Decreases'),
(13, 'Which aerodynamic force is responsible for pushing an aircraft forward?', 'Lift', 'Drag', 'Thrust', 'Gravity', 'Thrust'),
(13, 'Which part of an aircraft is mainly responsible for generating lift?', 'Fuselage', 'Wings', 'Tail', 'Cockpit', 'Wings'),
(13, 'What is the term for air resistance acting against an aircraft?', 'Thrust', 'Lift', 'Drag', 'Inertia', 'Drag'),
(13, 'What is the function of wing flaps in an aircraft?', 'Increase lift and drag', 'Decrease lift', 'Increase speed', 'Reduce engine thrust', 'Increase lift and drag'),

-- Level 14
(14, 'What is the critical angle of attack in aerodynamics?', 'Angle where lift is maximized', 'Angle where drag is zero', 'Angle where thrust is highest', 'Angle where weight is maximum', 'Angle where lift is maximized'),
(14, 'What happens when an aircraft exceeds its critical angle of attack?', 'Speed increases', 'Lift is lost', 'Drag disappears', 'Engine stops', 'Lift is lost'),
(14, 'What is a stall in aerodynamics?', 'Engine failure', 'Loss of lift due to high angle of attack', 'A sudden increase in speed', 'An increase in fuel consumption', 'Loss of lift due to high angle of attack'),
(14, 'Which aerodynamic force counteracts weight?', 'Thrust', 'Lift', 'Drag', 'Gravity', 'Lift'),
(14, 'What is the region behind an object moving through air where pressure is low?', 'Shockwave', 'Wake', 'Streamline', 'Vortex', 'Wake'),

-- Level 15
(15, 'What is Mach 1 in aerodynamics?', 'Speed of sound', 'Speed of light', 'Maximum aircraft speed', 'The fastest speed possible', 'Speed of sound'),
(15, 'What is the name for airflows that remain smooth and parallel?', 'Turbulent flow', 'Laminar flow', 'Vortex flow', 'Shock flow', 'Laminar flow'),
(15, 'Which part of an aircraft is responsible for pitch control?', 'Ailerons', 'Elevators', 'Flaps', 'Rudder', 'Elevators'),
(15, 'What is the function of a rudder on an aircraft?', 'Control roll', 'Control pitch', 'Control yaw', 'Reduce drag', 'Control yaw'),
(15, 'What is the purpose of winglets on an aircraft?', 'Increase weight', 'Reduce drag and improve efficiency', 'Increase turbulence', 'Increase speed', 'Reduce drag and improve efficiency'),

-- Level 16
(16, 'What is supersonic speed?', 'Speed above Mach 1', 'Speed below Mach 1', 'Speed at Mach 1', 'Speed of light', 'Speed above Mach 1'),
(16, 'Which part of an aircraft helps in reducing turbulence?', 'Ailerons', 'Flaps', 'Winglets', 'Elevators', 'Winglets'),
(16, 'What is the term for air moving faster than the speed of sound?', 'Sonic boom', 'Turbulent flow', 'Shockwave', 'Hypersonic flow', 'Shockwave'),
(16, 'Which design helps aircraft minimize drag at high speeds?', 'Rectangular wings', 'Elliptical wings', 'Swept-back wings', 'Delta wings', 'Swept-back wings'),
(16, 'What happens to drag as the speed of an aircraft increases?', 'Decreases', 'Remains constant', 'Increases', 'Becomes zero', 'Increases'),

-- Level 17
(17, 'What is the purpose of a supersonic intake in a jet engine?', 'Reduce fuel consumption', 'Increase lift', 'Slow down airflow before combustion', 'Increase drag', 'Slow down airflow before combustion'),
(17, 'What is the term for the effect of spinning objects creating lift?', 'Bernoulli Effect', 'Magnus Effect', 'Venturi Effect', 'Coanda Effect', 'Magnus Effect'),
(17, 'What is the relationship between Reynolds number and aerodynamic flow?', 'Determines lift generation', 'Predicts transition between laminar and turbulent flow', 'Increases aircraft speed', 'Determines engine efficiency', 'Predicts transition between laminar and turbulent flow'),
(17, 'What is an aerospike engine designed for?', 'Increasing propeller efficiency', 'Variable thrust control in different altitudes', 'Reducing aircraft weight', 'Improving passenger comfort', 'Variable thrust control in different altitudes'),
(17, 'Which aircraft first broke the sound barrier?', 'Boeing 747', 'Lockheed SR-71', 'Bell X-1', 'F-22 Raptor', 'Bell X-1');
