const mysql = require('mysql2')

const db = mysql.createConnection('mysql://rootroot@localhost:3006/employees.db')

const inquirer = require('inquirer')


// establish key values
inquirer.prompt([{
    message: 'What do you want to do?',
    type: 'list',
    choices: ('view departments', 'view roles', 'view employees', 'add department', 
    'add role', 'add employee', 'update employee role'),
    name: 'initial'
}])
