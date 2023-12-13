const mysql = require('mysql')
const inquirer = require('inquirer')
let roles;
let departments;
let managers;
let employees;
const connection = mysql.createConnection({
    host:'localhost',
    user:'root',
    database:'business_db',
    password:'Mcrenold12?',
    port:3306
})
const start = () => {
    init();
}

const init = () => {
    inquirer.prompt([
        {
            name: 'start',
            type: "list",
            choices:["View all Departments","View all Roles","View all Employees","Add a Role", "Add an employee", "Add a department","Update an employee role","Exit"],
        }
    ]).then((answers) => {
        switch (answers.start) {
            case "View all Departments ":
                viewAllDepartments()
                break;
        
                case "View all Roles":
                viewAllRoles()
                break;
        
            case "View all Employees":
                viewAllEmployees()
            break;
            
            case "Exit":
                connection.end();
                break;
        }
        console.log(answers)
    })
}

start();