const express = require(`express`)
const bodyParser = require(`body-parser`)

const app = express();
const port = 3000;

app.use(bodyParser.json());

app.get(`/`,(req, res)=>{
    res.send(`hello worls!`);

})

app.listen(port, ()=>{
    console.log(`server listening on port ${port}`);
})