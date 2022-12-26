const { prompt, default: inquirer } = require("inquirer");
const cTable = require('console.table')
// Import and require mysql2
const mysql = require("mysql2");

const PORT = process.env.PORT || 3001;

// connect to sql database
const connection = mysql.createConnection(
  {
    host: "localhost",
    user: "root",
    password: "Root",
    database: 'employee_tracker'
  },
  console.log(`Connected to the employees database.`)
);

// throw error if there is a problem connecting
connection.connect(function (err) {
  if (err) throw err;
});

// establish key values
function inquirerPrompts() {
  prompt([
    {
      message: "Select a choice",
      type: "list",
      choices: [
        "view departments",
        "view roles",
        "view employees",
        "view employees by role",
        "view employees by department",
        "add department",
        "add role",
        "add employee",
        "update employee role",
        "Exit",
      ],
      name: "action",
    },
  ]).then(function (answers) {
  
    switch (answers.action) {
      
      // view departments
      case "view departments":
        viewDepartments();
        break;

      // view roles
      case "view roles":
        viewRoles();
        break;

      // view employees
      case "view employees":
        viewEmployees();
        break;

      // view employees by role
      case "view employees by role":
        viewEmpRoles();
        break;

      // view employees by department
      case "view employees by department":
        viewEmpDept();
        break;

      // add department
      case "add department":
        addDept();
        break;

      // add role
      case "add role":
        addRole();
        break;

      // add employee
      case "add employee":
        addEmp();
        break;

      // update employee role
      case "update employee role":
        updateEmpRole();
        break;

      // exit
      case "Exit":
        console.log('Completed');
        connection.end();
        break;
    }
  });
}

// view department
function  viewDepartments() {
  connection.query("select * from department",(err,data)=>{
    console.log(err);
    console.table(data)
    inquirerPrompts()
  })
}
  // view roles
function  viewRoles() {
  connection.query("select * from role",(err,data)=>{
    console.log(err);
    console.table(data)
    inquirerPrompts()
  })
}
    // view employees
function  viewEmployees() {
  connection.query("select * from employee",(err,data)=>{
    console.log(err);
    console.table(data)
    inquirerPrompts()
  })
}

   // view employees by role
   function  viewEmpRoles() {
    connection.query("select * from empRoles",(err,data)=>{
      console.log(err);
      console.table(data)
      inquirerPrompts()
    })
  }
  // "add department",
 function addDept() {

    prompt([{
        type: "input",
        message: "What is the name of the new department?",
        name: "department"
    }]).then(answer => {
        connection.query(`INSERT INTO department(name)
            VALUES(?)`, answer.department, (err, results) => {
              if (err) {
              console.log(err);
              } else {
              db.query(`SELECT * FROM department`, (err, results) => {
                err ? console.error(err) : console.table(results);
                action();
              })
              console.log('Department Added');
              }
        })
inquirerPrompts();
});
}

  // "add role",
// title, salary, department

// function addRole() {
//   const array = [];
//   getDepartmentsAsync()
//   .then(data => {
//           for (let i=0; i<data.length; i++) {
//               array.push(data[i])
//           }
//       })
//   .catch(err => {
//       console.log(err);
//   });

//   inquirer.prompt([
//       {
//           type: 'input',
//           name: 'title',   
//           message: 'What is the title of the new role?',


  
  // "add employee",

  // "update employee role",

inquirerPrompts();