// Import the Express framework
const express = require(`express`);
// Import body-parser to read JSON data from the request body
const bodyParser = require(`body-parser`);

//--------------------------------------------------------------

// Initialize the Express app
const app = express();
// Define the port the server will listen on
const port = 3000;
// Simple array to store user IDs
const users = [];

//--------------------------------------------------------------

// Middleware: parses incoming JSON requests and makes the data available in req.body
app.use(bodyParser.json());

// GET request for the homepage – just returns a text message
app.get('/', (req, res) => {
  res.send('Welcome! Built by Hicham Bouzalim. Visit: github.com/hichambouzalim');
});

//------------------------------------------------------------------

// GET request to return all registered users
app.get('/users', (req, res) => {
  return res.json({ users }); // Respond with the users array in JSON format
});

//-------------------------------------------------------------------


// POST request to register a new user
app.post('/users', (req, res) => {
  const newUserId = req.body.userId; // Get the userId from the request body

  // If no userId is provided, return an error
  if (!newUserId) {
    return res.status(400).send('Missing userId.');
  }

  // If the userId already exists, return an error
  if (users.includes(newUserId)) {
    return res.status(400).send('userId already exists.');
  }

  // Add the new userId to the users array
  users.push(newUserId);

  // Send a success response
  return res.status(201).send('User registered.');
});

//-----------------------------------------------------------------

// Start the server and print a message to the console
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});