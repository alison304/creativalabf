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
# usuario3 = User.create(email:  "daniel@gmail.com", password: "Daniel123", password_confirmation: "Daniel123")

file1 = URI.open('https://media.istockphoto.com/photos/website-landing-page-development-sketch-on-math-book-picture-id842811508?b=1&k=20&m=842811508&s=170667a&w=0&h=Sxgr2DWoKex-B9MtYWqQf7kE5jAaTJ1fP5IoSPId-Cg=')
course1 = Course.create(description: "¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propio landing page?🤔
Aprende a crear tu landing page desde cero.
En Creativa diseñamos un programa de 1 mes que te entrenará para crear tu propia web profesional en Webflow 🤯
💻 Sesiones en vivo y grabadas.
👩‍🏫 Tendrás el acompañamiento de expertos durante todo el programa.
🏆 Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Landing Page para un perfil profesional")
course1.photo.attach(io: file1, filename: 'nes1.png', content_type: 'image1/png')
course1.save!

file2 = URI.open('https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8d2VifGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
course2 = Course.create(description: "Aprende a lanzar tu web con éxito al mercado
¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propio landing page?🤔🎯
En Creativa diseñamos un programa de 1 mes que te entrenará para lanzar con dominio y hosting 🤯
💻 Online en vivo.
👩‍🏫 Tendrás el acompañamiento de expertos durante todo el programa.
🏆 Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Diseño UX|UI para marketers")
course2.photo.attach(io: file2, filename: 'nes2.png', content_type: 'image2/png')
course2.save!

file3 = URI.open('https://images.unsplash.com/file-1636585210491-f28ca34ea8ecimage')
course3 = Course.create(description: "Curso e-commerce: Cómo montar tu tienda online con Shopify
¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propia tienda e-commerce?🤔🎯
En Creativa diseñamos un programa de 1 mes que te entrenará para crear tu tienda desde cero 👌🤯
💻 Sesiones en vivo y grabadas
👩‍🏫 Tendrás el acompañamiento de expertos durante todo el programa.
🏆 Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Crea un e-commerce para tu marca")
course3.photo.attach(io: file3, filename: 'nes3.png', content_type: 'image3/png')
course3.save!

file4 = URI.open('https://media.istockphoto.com/photos/stock-exchange-market-concept-businesswoman-hand-trader-press-digital-picture-id1276312812?b=1&k=20&m=1276312812&s=170667a&w=0&h=VuiRQD_6y4XMIyXtp1zZmQJsa_YvPuY41E-xsCJO448=')
course4 = Course.create(description: "En este curso de Liderazgo a través del servicio, aprenderás a reconocer tus fortalezas como líder y aquellas características propias que te limitan y te impiden liberar todo tu potencial de impacto e influencia en los otros y tu entorno.
De la mano de Jose Luis Pinheira, tu profesor en este curso de Liderazgo a través del servicio, entenderás qué es el thought leadership organization, cuáles son sus características y qué necesitas para construir una organización basada en el thought leadership.
En Creativa diseñamos un programa de 1 mes que te entrenará para desarrollar habilidades de liderazgo growth 🤯
💻 Sesiones en vivo y grabadas
👩‍🏫 Tendrás el acompañamiento de expertos durante todo el programa.
🏆 Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Liderazgo Digital Growth - founders")
course4.photo.attach(io: file4, filename: 'nes4.png', content_type: 'image4/png')
course4.save!

detail1 = Detail.create!(name: "Moodboard y Branding", content: "https://www.youtube.com/embed/D-3Qg4pf-E4", course: course1)
detail2 = Detail.create!(name: "Diseño de Home principal", content: "https://www.youtube.com/embed/LRfaU7bdnPY", course: course1)
detail3 = Detail.create!(name: "Creación de CMS Blog", content: "https://www.youtube.com/embed/9cGqmcWJ2JA", course: course1)

# agregando seeds
Detail.create!(name: "UX/UI una estrategia digital", content: "https://www.youtube.com/embed/iGJyVfNyZ4E", course: course2)
Detail.create!(name: "Creando conceptos estratégicos", content: "https://www.youtube.com/embed/rwmBe13Ytvs", course: course2)
Detail.create!(name: "Diseñando piezas clave", content: "https://www.youtube.com/embed/STlEdjqN4dI", course: course2)

Detail.create!(name: "Introducción a los negocios digitales", content: "https://www.youtube.com/embed/wll1OqGpOhY", course: course3)
Detail.create!(name: "Herramientas de e-commerce", content: "https://www.youtube.com/embed/u3Ozeqt1CDc", course: course3)
Detail.create!(name: "Análisis del entorno", content: "https://www.youtube.com/embed/jgqYpj0Q-cE", course: course3)

Detail.create!(name: "Liderar con propósito", content: "https://www.youtube.com/embed/QiRFl0qVsLI", course: course4)
Detail.create!(name: "Cómo mejorar la productividad", content: "https://www.youtube.com/embed/exjc4t5wz_c", course: course4)
Detail.create!(name: "Liderargo en tiempo de cambios", content: "https://www.youtube.com/embed/5uqwAIN0Kh0", course: course4)

Review.create(content: "El curso está bueno:)", detail: detail1, user: usuario1)
Review.create(content: "Pude entenderlo, gracias:)", detail: detail2, user: usuario1)
# fin

# Course1 Detail1
Exam.create!(question: "¿Qué significa HTML?",
            answer_solution: "b",
            detail_id: 1,
            answerA: "Lenguaje de máquina de hipertexto",
            answerB: "Lenguaje de marcado de hipertexto",
            answerC: "Lenguaje de marcas de hipertexto",
            p2: "¿Cómo se inicializa el tipo de documento en HTML5?",
            r21: "<!DOCTYPE HTML>",
            r22: "</DOCTYPE>",
            r23: "</DOCTYPE html>",
            r2: "c",
            p3: "¿Cuál de las siguientes es la forma correcta de crear un hipervínculo en HTML?",
            r31: "<a>www.geeksforgeeks.org <Geeksforgeeks /a>",
            r32: "<a href=“www.geeksforgeeks.org” Geeksforgeeks /a>",
            r33: "<a link=“www.geeksforgeeks.org” Geeksforgeeks> </a>",
            r3: "b",
            p4: "¿Cuál es el HTML correcto para insertar una imagen de fondo?",
            r41: "<background img='background.gif'>",
            r42: "<body style='background-image:url(background.gif)'>",
            r43: "<body background='background.gif'>",
            r4: "b")

Exam.create!(question: "fondo para todos los elementos <h1>?",
            answer_solution: "a",
            detail_id: 2,
            answerA: "h1 {background-color:#FFFFFF;}",
            answerB: "all.h1 {background-color:#FFFFFF;}",
            answerC: "h1.all {background-color:#FFFFFF;}",
            p2: "¿Cuál es la sintaxis CSS correcta?",
            r21: "body {color:black;}",
            r22: "{body;color:black;}",
            r23: "body:color=black;",
            r2: "a",
            p3: "¿Cómo se inserta un comentario en un archivo CSS?",
            r31: "//esto es un comentario//",
            r32: "'esto es un comentario'",
            r33: "/*esto es un comentario*/",
            r3: "c",
            p4: "¿Qué propiedad se utiliza para cambiar el color de fondo?",
            r41: "background-color",
            r42: "bgcolor",
            r43: "color",
            r4: "a")

Exam.create!(question: "¿Cuál es la sintaxis de JavaScript correcta para cambiar el contenido del elemento HTML
              a continuación? <p id='demo'>Esta es una demostración.</p>",
            answer_solution: "a",
            detail_id: 3,
            answerA: "document.getElementById('demo').innerHTML = 'Hello World!';",
            answerB: "document.getElementsByName('p').innerHTML = 'Hello World!';",
            answerC: "#demo.innerHTML = 'Hello World!';",
            p2: "¿Cómo se crea una función en JavaScript?",
            r21: "function myFunction()",
            r22: "function:myFunction()",
            r23: "function = myFuntion()",
            r2: "a",
            p3: "¿Cómo llamas a una función llamada 'myFunction'?",
            r31: "call function myFunction()",
            r32: "call myFunction()",
            r33: "myFunction()",
            r3: "c",
            p4: "¿Cuál es la forma correcta de escribir una matriz de JavaScript?",
            r41: "let colors = (1:'red',2:'green',3:'blue')",
            r42: "let colors = ['red','green','blue']",
            r43: "let colors = 'red', 'green', 'blue'",
            r4: "b")
