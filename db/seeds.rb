# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Professions
Profession.destroy_all
Test.destroy_all
Problem.destroy_all

dev = Profession.create(field: "Full Stack Developer")
advisor = Profession.create(field: "DevOps Engineer")
# animator = Profession.create(field: "Senior Developer")
# manager = Profession.create(field: "UX Designer")
# cs_rep = Profession.create(field: "Junior Developer")

#tests
dev_test = Test.create(profession_id: dev.id, name: "Software Developer ", level: 1)
dev_ops = Test.create(profession_id: advisor.id, name: "DevOps", level: 1)
# manager_test = Test.create(profession_id: manager.id, name: "Senior Developer", level: 1)
# animator_test = Test.create(profession_id: animator.id, name: "UX Designer", level: 1)
# cs_test = Test.create(profession_id: cs_rep.id, name: "Junior Developer", level: 1)

#questions
#dev_quest
dev_questions = Problem.create([{
    test_id: dev_test.id,
    question: "Inside which HTML element do we put the JavaScript??" ,
    choice1: "<script>",
    choice2: "<javascript>",
    choice3: "<js>",
    choice4: "<scripting>",
    answer: 1
},
{
    test_id: dev_test.id,
    question: "What is the correct syntax for referring to an external script called 'xxx.js'?" ,
    choice1: "<script href='xxx.js'>",
    choice2: "<script name='xxx.js'>",
    choice3: "<script src='xxx.js'>",
    choice4: "<script file='xxx.js'>",
    answer: 3
},
{

    test_id: dev_test.id,
    question: "How do you write 'Hello World' in an alert box?" ,
    choice1: "msgBox('Hello World');",
    choice2: "alertBox('Hello World');",
    choice3: "msg('Hello World');",
    choice4: "alert('Hello World');",
    answer: 4
},
{
    test_id: dev_test.id,
    question: "Which of the following will throw an error?" ,
    choice1: "Cookies.all.select {|cookie| cookie.type}",
    choice2: "Cookie.all {|cookie| cookie.type}>",
    choice3: "button.addEventListener('submit', handleSubmit)",
    choice4: "function()",
    answer: 2
},
{

    test_id: dev_test.id,
    question: "Inside which HTML element do we put the body" ,
    choice1: "<html></html>",
    choice2: "<docTYPE>",
    choice3: "<div class='body'>",
    choice4: "None of these",
    answer: 1
},
{

    test_id: dev_test.id,
    question: "How do you use DOM elements in a .js file?" ,
    choice1: "const element = document.QuerySelector('.element')",
    choice2: "var elemant = document.QuerySelector('.element')",
    choice3: "const element = document.GetElementById('.element')",
    choice4: ".js files only can only be called in the index.html file",
    answer: 1
},
{

    test_id: dev_test.id,
    question: "Which of the following declarations will create a variable whose content CANNOT be changed?" ,
    choice1: "const lunchOrder = 'rock salt'",
    choice2: "let lunchOrder = 'soup'",
    choice3: "var lunchOrder = 'tofu'",
    choice4: "static lunchOrder()",
    answer: 1
},
{
    test_id: dev_test.id,
    question: "Which of the following JavaScript statements will change the text of the node with the id of 'dog' to the text 'Byron'?" ,
    choice1: "document.querySelectorAll('span[0]').textContent = 'Byron';",
    choice2: "document.querySelector('li').innerHTML = 'Byron';",
    choice3: "document.GetElementById('dog').textContent = 'Byron';",
    choice4: "document.getElementsByClass('span')[0].textContent = 'Byron'",
    answer: 3
},
{

    test_id: dev_test.id,
    question: "What JavaScript command would return the name of the mongoose?" ,
    choice1: "document.querySelectorAll('mongoose').text;",
    choice2: "document.querySelector('mongoose').textContent;",
    choice3: "document.querySelector('mongoose').text;",
    choice4: "document.querySelectorAll('mongoose').content;",
    answer: 2

},
{

    test_id: dev_test.id,
    question: "Given a method called razzle, how do you trigger its behavior?" ,
    choice1: "(razzle)",
    choice2: "razzle[]",
    choice3: "razzle()",
    choice4: "razzle",
    answer: 3
}])

dev_ops = Problem.create([{
    test_id: dev_ops.id,
    question: "Which of the following best describes DevOps?" ,
    choice1: "Dev Ops is a person who can work in both velopment and operations",
    choice2: "Dev ops is a systematic approcah to improving cooperation between the development and operations",
    choice3: "Dev Ops is a top selling Tom Clancy stealth shooter",
    choice4: "DevOps is SPOVED spelled backwards",
    answer: 3
},
{
    test_id: dev_ops.id,
    question: "The DevOps movement grew out of which software development methodologies?" ,
    choice1: "Agile",
    choice2: "Waterfall",
    choice3: "Skittles",
    choice4: "Starbucks",
    answer: 1
},
{
    test_id: dev_ops.id,
    question: "Which of these tools are NOT associated with DevOps?" ,
    choice1: "Chef ",
    choice2: "Puppet",
    choice3: "Origami",
    choice4: "Juju",
    answer: 3
},
{
    test_id: dev_ops.id,
    question: "Which of the following has nothing to do with DevOps?" ,
    choice1: "CI/CD",
    choice2: "Iaas",
    choice3: "AC/DC",
    choice4: "DevSecOps",
    answer: 3
},
{
    test_id: dev_ops.id,
    question: "DevOps automation tools epend on coding skills" ,
    choice1: "True",
    choice2: "False",
    choice3: "Does not apply ",
    choice4: "Coding is for losers",
    answer: 2

},
{
    test_id: dev_ops.id,
    question: "DevOps automation tools epend on coding skills" ,
    choice1: "True",
    choice2: "False",
    choice3: "Does not apply ",
    choice4: "Coding is for losers",
    answer: 2
}])
