const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;

app.get('/',(req,res)=>{
    res.json({ message: 'Hello World' });

});

app.listen(PORT,()=>{
    console.log(`Server is running on port ${PORT}`); 
    // Template Literal: It's denoted by the backticks (` `) instead of single or double quotes. backtick `` when you need to include dynamic values. 
})