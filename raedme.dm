# Node.js-app
# 🚀 Express.js Hello World Application

This project is a beginner-friendly introduction to building web applications using [Express.js](https://expressjs.com/) and Node.js. You’ll learn how to:

- Set up a new Node.js project
- Install Express and Body-Parser with fixed versions
- Create a simple route
- Start an HTTP server on port 3000

---

## ✅ Prerequisites

- [Node.js](https://nodejs.org/) installed
- A terminal (like bash, PowerShell, or the VS Code terminal)
- Optional: A REST client like [Postman](https://www.postman.com/) or `curl` to test your API

---

## 📁 Project Initialization

Create a new directory in VS Code and navigate into it:

```bash
mkdir containerize-express-app
cd containerize-express-app
code .
```


# Setup
Run this command to create a new package.json with default settings:

```
npm init -y
```
Then install the required packages with exact versions:

```
npm install express@4.19.2 body-parser@1.20.2 --save-exact
```

## 📝 Create index.js file
In VS Code, create a file named index.js in the root of the project.

Paste the following code into it:
```js
const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Use middleware to parse JSON request bodies
app.use(bodyParser.json());

// Define a GET route
app.get('/', (req, res) => {
  res.send('Hello World');
});

// Start the server
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
```



In the file package.json, adjust line 6 to:

```js
{
  "name": "containerize-express-app",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "start": "node index.js" 
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "type": "commonjs",
  "dependencies": {
    "body-parser": "1.20.2",
    "express": "4.19.2"
  }
}

```
The "start" script runs the server using node index.js 
## How to start the application
Run the following command to start the server:

```
npm start
```
This command runs the script defined under "start" in the package.json file, which starts the Node.js server (node index.js).

You should see the message:
```
server listening on port 3000
```

indicating that the server is running and ready to accept requests.

## 🌐 Test the Application
Open your browser and visit:

```
http://localhost:3000
```

Or test using curl:
```
curl http://localhost:3000
```
You should see:

````
Hello Worls

