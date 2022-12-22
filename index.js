const inquirer = require('inquirer');

// Import and require mysql2
const mysql = require('mysql2');

// connect to sql database
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3001,
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


