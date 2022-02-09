# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "limpiando base de datos"

Answer.destroy_all
Exam.destroy_all
Detail.destroy_all
Course.destroy_all
User.destroy_all if Rails.env.development?


puts "creando nuevas seeds"
usuario1 = User.create(email:  "carolina@gmail.com", password: "Carolina123", password_confirmation: "Carolina123")
usuario2 = User.create(email:  "paola@gmail.com", password: "Paola123", password_confirmation: "Paola123")
usuario3 = User.create(email:  "daniel@gmail.com", password: "Daniel123", password_confirmation: "Daniel123")

file1 = URI.open('https://media.istockphoto.com/photos/website-landing-page-development-sketch-on-math-book-picture-id842811508?b=1&k=20&m=842811508&s=170667a&w=0&h=Sxgr2DWoKex-B9MtYWqQf7kE5jAaTJ1fP5IoSPId-Cg=')
course1 = Course.create(description: "¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propio landing page?🤔
Aprende a crear tu landing page desde cero.
En Creativa diseñamos un programa de 1 mes que te entrenará para crear tu propia web profesional en Webflow :grito:
:ordenador: Sesiones en vivo y grabadas.
:profesor: Tendrás el acompañamiento de expertos durante todo el programa.
:trofeo: Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Crea una Landing Page para un perfil profesional")
course1.photo.attach(io: file1, filename: 'nes1.png', content_type: 'image1/png')
course1.save!

file2 = URI.open('https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8d2VifGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
course2 = Course.create(description: "Aprende a lanzar tu web con éxito al mercado
¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propio landing page?🤔:lupa:
En Creativa diseñamos un programa de 1 mes que te entrenará para lanzar con dominio y hosting:grito:
:ordenador: Online en vivo.
:profesor: Tendrás el acompañamiento de expertos durante todo el programa.
:trofeo: Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Lanzamiento de una web")
course2.photo.attach(io: file2, filename: 'nes2.png', content_type: 'image2/png')
course2.save!

file3 = URI.open('https://images.unsplash.com/file-1636585210491-f28ca34ea8ecimage')
course3 = Course.create(description: "Curso e-commerce: Cómo montar tu tienda online con Shopify
¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propia tienda e-commerce?:cara_pensativa::lupa:
En Creativa diseñamos un programa de 1 mes que te entrenará para crear tu tienda desde cero:grito:
:ordenador: Sesiones en vivo y grabadas
:profesor: Tendrás el acompañamiento de expertos durante todo el programa.
:trofeo: Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Crea un e-commerce para tu marca")
course3.photo.attach(io: file3, filename: 'nes3.png', content_type: 'image3/png')
course3.save!

file4 = URI.open('https://media.istockphoto.com/photos/stock-exchange-market-concept-businesswoman-hand-trader-press-digital-picture-id1276312812?b=1&k=20&m=1276312812&s=170667a&w=0&h=VuiRQD_6y4XMIyXtp1zZmQJsa_YvPuY41E-xsCJO448=')
course4 = Course.create(description: "En este curso de Liderazgo a través del servicio, aprenderás a reconocer tus fortalezas como líder y aquellas características propias que te limitan y te impiden liberar todo tu potencial de impacto e influencia en los otros y tu entorno.
De la mano de Jose Luis Pinheira, tu profesor en este curso de Liderazgo a través del servicio, entenderás qué es el thought leadership organization, cuáles son sus características y qué necesitas para construir una organización basada en el thought leadership.
En Creativa diseñamos un programa de 1 mes que te entrenará para desarrollar habilidades de liderazgo growth:grito:
:ordenador: Sesiones en vivo y grabadas
:profesor: Tendrás el acompañamiento de expertos durante todo el programa.
:trofeo: Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Liderazgo Digital Growth")
course4.photo.attach(io: file4, filename: 'nes4.png', content_type: 'image4/png')
course4.save!

detail1 = Detail.create!(name: "Moodboard y Branding", content: "https://www.youtube.com/embed/D-3Qg4pf-E4", course: course1)
Detail.create!(name: "Diseño de Home principal", content: "https://www.youtube.com/embed/LRfaU7bdnPY", course: course1)
Detail.create!(name: "Creación de CMS Blog", content: "https://www.youtube.com/embed/9cGqmcWJ2JA", course: course1)

# Course1 Detail1
Exam.create!(question: "¿Qué significa HTML?", answer_solution: "b", detail: detail1, answerA: "Lenguaje de máquina de hipertexto", answerB: "Lenguaje de marcado de hipertexto", answerC: "Lenguaje de marcas de hipertexto")
Exam.create!(question: "¿Cómo se inicializa el tipo de documento en HTML5?", answer_solution: "c", detail: detail1, answerA: "<!DOCTYPE HTML>", answerB: "</DOCTYPE>", answerC: "</DOCTYPE html>")
Exam.create!(question: "¿Cuál de las siguientes es la forma correcta de crear un hipervínculo en HTML?", answer_solution: "b", detail: detail1, answerA: "<a>www.geeksforgeeks.org <Geeksforgeeks /a>", answerB: "<a href=“www.geeksforgeeks.org” Geeksforgeeks /a>", answerC: "<a link=“www.geeksforgeeks.org” Geeksforgeeks> </a>")
Exam.create!(question: "¿Cuál es el HTML correcto para insertar una imagen de fondo?", answer_solution: "b", detail: detail1, answerA: "<background img='background.gif'>", answerB: "<body style='background-image:url(background.gif)'>", answerC: "<body background='background.gif'>")
#Exam.create!(question: "¿Qué código es correcto para una imagen en html?", answer_solution: "c", detail: detail1, answerA: "<img src='pic_mountain.jpg'/", answerB: "</DOCTYPE>", answerC: "</DOCTYPE html>")
# Course1 Detail2
Exam.create!(question: "¿Cómo se agrega un color de fondo para todos los elementos <h1>?", answer_solution: "a", detail: detail2, answerA: "h1 {background-color:#FFFFFF;}", answerB: "all.h1 {background-color:#FFFFFF;}", answerC: "h1.all {background-color:#FFFFFF;}")
Exam.create!(question: "¿Cuál es la sintaxis CSS correcta?", answer_solution: "a", detail: detail2, answerA: "body {color:black;}", answerB: "{body;color:black;}", answerC: "body:color=black;")
Exam.create!(question: "¿Cómo se inserta un comentario en un archivo CSS?", answer_solution: "c", detail: detail2, answerA: "//esto es un comentario//", answerB: "'esto es un comentario'", answerC: "/*esto es un comentario*/")
Exam.create!(question: "¿Qué propiedad se utiliza para cambiar el color de fondo?", answer_solution: "a", detail: detail2, answerA: "background-color", answerB: "bgcolor", answerC: "color")
# Course1 Detail3
Exam.create!(question: "¿Cuál es la sintaxis de JavaScript correcta para cambiar el contenido del elemento HTML
a continuación? <p id='demo'>Esta es una demostración.</p>", answer_solution: "a", detail: detail3, answerA: "document.getElementById('demo').innerHTML = 'Hello World!';", answerB: "document.getElementsByName('p').innerHTML = 'Hello World!';", answerC: "#demo.innerHTML = 'Hello World!';")
Exam.create!(question: "¿Cómo se crea una función en JavaScript?", answer_solution: "a", detail: detail3, answerA: "function myFunction()", answerB: "function:myFunction()", answerC: "function = myFuntion()")
Exam.create!(question: "¿Cómo llamas a una función llamada 'myFunction'?", answer_solution: "c", detail: detail3, answerA: "call function myFunction()", answerB: "call myFunction()", answerC: "myFunction()")
Exam.create!(question: "¿Cuál es la forma correcta de escribir una matriz de JavaScript?", answer_solution: "b", detail: detail3, answerA: "let colors = (1:'red',2:'green',3:'blue')", answerB: "let colors = ['red','green','blue']", answerC: "let colors = 'red', 'green', 'blue'")


# Course2 Detail1
Exam.create!(question: "¿Qué significa HTML?", answer_solution: "b", detail: detail1, answerA: "Lenguaje de máquina de hipertexto", answerB: "Lenguaje de marcado de hipertexto", answerC: "Lenguaje de marcas de hipertexto")
Exam.create!(question: "¿Cómo se inicializa el tipo de documento en HTML5?", answer_solution: "c", detail: detail1, answerA: "<!DOCTYPE HTML>", answerB: "</DOCTYPE>", answerC: "</DOCTYPE html>")
Exam.create!(question: "¿Cuál de las siguientes es la forma correcta de crear un hipervínculo en HTML?", answer_solution: "b", detail: detail1, answerA: "<a>www.geeksforgeeks.org <Geeksforgeeks /a>", answerB: "<a href=“www.geeksforgeeks.org” Geeksforgeeks /a>", answerC: "<a link=“www.geeksforgeeks.org” Geeksforgeeks> </a>")
Exam.create!(question: "¿Cuál es el HTML correcto para insertar una imagen de fondo?", answer_solution: "b", detail: detail1, answerA: "<background img='background.gif'>", answerB: "<body style='background-image:url(background.gif)'>", answerC: "<body background='background.gif'>")
#Exam.create!(question: "¿Qué código es correcto para una imagen en html?", answer_solution: "c", detail: detail1, answerA: "<img src='pic_mountain.jpg'/", answerB: "</DOCTYPE>", answerC: "</DOCTYPE html>")
# Course2 Detail2
Exam.create!(question: "¿Cómo se agrega un color de fondo para todos los elementos <h1>?", answer_solution: "a", detail: detail2, answerA: "h1 {background-color:#FFFFFF;}", answerB: "all.h1 {background-color:#FFFFFF;}", answerC: "h1.all {background-color:#FFFFFF;}")
Exam.create!(question: "¿Cuál es la sintaxis CSS correcta?", answer_solution: "a", detail: detail2, answerA: "body {color:black;}", answerB: "{body;color:black;}", answerC: "body:color=black;")
Exam.create!(question: "¿Cómo se inserta un comentario en un archivo CSS?", answer_solution: "c", detail: detail2, answerA: "//esto es un comentario//", answerB: "'esto es un comentario'", answerC: "/*esto es un comentario*/")
Exam.create!(question: "¿Qué propiedad se utiliza para cambiar el color de fondo?", answer_solution: "a", detail: detail2, answerA: "background-color", answerB: "bgcolor", answerC: "color")
# Course2 Detail3
Exam.create!(question: "¿Cuál es la sintaxis de JavaScript correcta para cambiar el contenido del elemento HTML
a continuación? <p id='demo'>Esta es una demostración.</p>", answer_solution: "a", detail: detail3, answerA: "document.getElementById('demo').innerHTML = 'Hello World!';", answerB: "document.getElementsByName('p').innerHTML = 'Hello World!';", answerC: "#demo.innerHTML = 'Hello World!';")
Exam.create!(question: "¿Cómo se crea una función en JavaScript?", answer_solution: "a", detail: detail3, answerA: "function myFunction()", answerB: "function:myFunction()", answerC: "function = myFuntion()")
Exam.create!(question: "¿Cómo llamas a una función llamada 'myFunction'?", answer_solution: "c", detail: detail3, answerA: "call function myFunction()", answerB: "call myFunction()", answerC: "myFunction()")
Exam.create!(question: "¿Cuál es la forma correcta de escribir una matriz de JavaScript?", answer_solution: "b", detail: detail3, answerA: "let colors = (1:'red',2:'green',3:'blue')", answerB: "let colors = ['red','green','blue']", answerC: "let colors = 'red', 'green', 'blue'")

# Course3 Detail1
Exam.create!(question: "¿Qué significa HTML?", answer_solution: "b", detail: detail1, answerA: "Lenguaje de máquina de hipertexto", answerB: "Lenguaje de marcado de hipertexto", answerC: "Lenguaje de marcas de hipertexto")
Exam.create!(question: "¿Cómo se inicializa el tipo de documento en HTML5?", answer_solution: "c", detail: detail1, answerA: "<!DOCTYPE HTML>", answerB: "</DOCTYPE>", answerC: "</DOCTYPE html>")
Exam.create!(question: "¿Cuál de las siguientes es la forma correcta de crear un hipervínculo en HTML?", answer_solution: "b", detail: detail1, answerA: "<a>www.geeksforgeeks.org <Geeksforgeeks /a>", answerB: "<a href=“www.geeksforgeeks.org” Geeksforgeeks /a>", answerC: "<a link=“www.geeksforgeeks.org” Geeksforgeeks> </a>")
Exam.create!(question: "¿Cuál es el HTML correcto para insertar una imagen de fondo?", answer_solution: "b", detail: detail1, answerA: "<background img='background.gif'>", answerB: "<body style='background-image:url(background.gif)'>", answerC: "<body background='background.gif'>")
#Exam.create!(question: "¿Qué código es correcto para una imagen en html?", answer_solution: "c", detail: detail1, answerA: "<img src='pic_mountain.jpg'/", answerB: "</DOCTYPE>", answerC: "</DOCTYPE html>")
# Course3 Detail2
Exam.create!(question: "¿Cómo se agrega un color de fondo para todos los elementos <h1>?", answer_solution: "a", detail: detail2, answerA: "h1 {background-color:#FFFFFF;}", answerB: "all.h1 {background-color:#FFFFFF;}", answerC: "h1.all {background-color:#FFFFFF;}")
Exam.create!(question: "¿Cuál es la sintaxis CSS correcta?", answer_solution: "a", detail: detail2, answerA: "body {color:black;}", answerB: "{body;color:black;}", answerC: "body:color=black;")
Exam.create!(question: "¿Cómo se inserta un comentario en un archivo CSS?", answer_solution: "c", detail: detail2, answerA: "//esto es un comentario//", answerB: "'esto es un comentario'", answerC: "/*esto es un comentario*/")
Exam.create!(question: "¿Qué propiedad se utiliza para cambiar el color de fondo?", answer_solution: "a", detail: detail2, answerA: "background-color", answerB: "bgcolor", answerC: "color")
# Course3 Detail3
Exam.create!(question: "¿Cuál es la sintaxis de JavaScript correcta para cambiar el contenido del elemento HTML
a continuación? <p id='demo'>Esta es una demostración.</p>", answer_solution: "a", detail: detail3, answerA: "document.getElementById('demo').innerHTML = 'Hello World!';", answerB: "document.getElementsByName('p').innerHTML = 'Hello World!';", answerC: "#demo.innerHTML = 'Hello World!';")
Exam.create!(question: "¿Cómo se crea una función en JavaScript?", answer_solution: "a", detail: detail3, answerA: "function myFunction()", answerB: "function:myFunction()", answerC: "function = myFuntion()")
Exam.create!(question: "¿Cómo llamas a una función llamada 'myFunction'?", answer_solution: "c", detail: detail3, answerA: "call function myFunction()", answerB: "call myFunction()", answerC: "myFunction()")
Exam.create!(question: "¿Cuál es la forma correcta de escribir una matriz de JavaScript?", answer_solution: "b", detail: detail3, answerA: "let colors = (1:'red',2:'green',3:'blue')", answerB: "let colors = ['red','green','blue']", answerC: "let colors = 'red', 'green', 'blue'")


Review.create(content: "Aprende", detail: detail1, user: usuario1)
Review.create(content: "crear ", detail: detail1, user: usuario1)
