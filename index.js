const inquirer = require('inquirer');

// Import and require mysql2
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;

// connect to sql database
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Root',
    database: 'employee_db'
},
console.log(`Connected to the employees database.`)
);





// establish key values
inquirer.prompt = [{
    message: 'What do you want to do?',
    type: 'list',
    choices: ['view departments', 'view roles', 'view employees', 'add department', 
    'add role', 'add employee', 'update employee role'],
    name: 'initial'
}]
.then(initial=>{

})


