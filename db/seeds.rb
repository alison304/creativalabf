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
# CAREN
usuario1 = User.create(email: "caren@gmail.com", password: "Caren123", password_confirmation: "Caren123", name: "Caren")
usuario2 = User.create(email: "alison@gmail.com", password: "Alison123", password_confirmation: "Alison123", name: "Alison")
usuario3 = User.create(email: "dara@gmail.com", password: "Dara123", password_confirmation: "Dara123", name: "Dara")
usuario4 = User.create(email: "midory@gmail.com", password: "Midory123", password_confirmation: "Midory123", name: "Midory")

# ALI
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

# CAREN
detail1 = Detail.create!(name: "Moodboard y Branding", content: "https://www.youtube.com/embed/D-3Qg4pf-E4", video_url: "https://images.unsplash.com/photo-1416339134316-0e91dc9ded92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80", course: course1)
detail2 = Detail.create!(name: "Diseño de Home principal", content: "https://www.youtube.com/embed/LRfaU7bdnPY", video_url: "https://images.unsplash.com/photo-1455894127589-22f75500213a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=787&q=80", course: course1)
detail3 = Detail.create!(name: "Creación de CMS Blog", content: "https://www.youtube.com/embed/9cGqmcWJ2JA", video_url:"https://images.unsplash.com/photo-1432821579285-1b649e5b1ce3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", course: course1)

# agregando seeds
detail4 = Detail.create!(name: "UX/UI una estrategia digital", content: "https://www.youtube.com/embed/iGJyVfNyZ4E", video_url: "https://media.istockphoto.com/photos/shot-of-an-attractive-young-businesswoman-standing-and-looking-while-picture-id1357880802?k=20&m=1357880802&s=612x612&w=0&h=UDju6XgwWrNEzOQYU5BO2Z4xHE-uUBagbDcHFz0eqLg=", course: course2)
detail5 = Detail.create!(name: "Creando conceptos estratégicos", content: "https://www.youtube.com/embed/rwmBe13Ytvs", video_url: "https://media.istockphoto.com/photos/woman-hand-holding-illuminated-light-bulb-brand-idea-concept-picture-id1047716020?k=20&m=1047716020&s=612x612&w=0&h=l1wPbflr6imP1CEwpft_SmGx7aM6r4fwBldupstbPRw=", course: course2)
detail6 = Detail.create!(name: "Diseñando piezas clave", content: "https://www.youtube.com/embed/STlEdjqN4dI", video_url: "https://images.unsplash.com/photo-1506097425191-7ad538b29cef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", course: course2)
detail7 = Detail.create!(name: "Introducción a los negocios digitales", content: "https://www.youtube.com/embed/wll1OqGpOhY", video_url: "https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", course: course3)
detail8 = Detail.create!(name: "Herramientas de e-commerce", content: "https://www.youtube.com/embed/u3Ozeqt1CDc", video_url: "https://media.istockphoto.com/photos/online-shopping-and-digital-marketing-concept-woman-using-digital-picture-id1250152532?k=20&m=1250152532&s=612x612&w=0&h=HhdQoO5M8uRL7CpRrtcHZHSQ4cIsfa2TG3s0LgkflAA=", course: course3)
detail9 = Detail.create!(name: "Análisis del entorno", content: "https://www.youtube.com/embed/jgqYpj0Q-cE",video_url: "https://media.istockphoto.com/photos/network-of-business-concept-picture-id1127447341?k=20&m=1127447341&s=612x612&w=0&h=aHVYNQvlSCIiljOqzVmkC8MtL-0xCsPINbEkThCgSBo=", course: course3)
detail10 = Detail.create!(name: "Liderar con propósito", content: "https://www.youtube.com/embed/QiRFl0qVsLI", video_url: "https://images.unsplash.com/photo-1488190211105-8b0e65b80b4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", course: course4)
detail11 = Detail.create!(name: "Cómo mejorar la productividad", content: "https://www.youtube.com/embed/exjc4t5wz_c", video_url: "https://images.unsplash.com/photo-1516321497487-e288fb19713f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", course: course4)
detail12 = Detail.create!(name: "Liderazgo en tiempo de cambios", content: "https://www.youtube.com/embed/5uqwAIN0Kh0", video_url: "https://media.istockphoto.com/photos/designer-using-a-phone-picture-id928149980?k=20&m=928149980&s=612x612&w=0&h=NPFVz60mafY10fxhSxGMGrG4cmOXD1hfAbOGNsT0Upo=", course: course4)

Review.create(content: "El curso está bueno:)", detail: detail1, user: usuario1)
Review.create(content: "Pude entenderlo, gracias:)", detail: detail1, user: usuario2)
Review.create(content: "Me pareció super la clase!", detail: detail2, user: usuario3)
Review.create(content: "Creo que puedo hacerlo yo también", detail: detail2, user: usuario4)
Review.create(content: "Voy a aplicarlo en mi emprendimiento:)", detail: detail3, user: usuario1)
Review.create(content: "Igual yo :)", detail: detail3, user: usuario3)
Review.create(content: "El marketing también era importante", detail: detail4, user: usuario2)
Review.create(content: "Así parece", detail: detail4, user: usuario4)
Review.create(content: "Gracias por la gran información", detail: detail5, user: usuario3)
Review.create(content: "Todo ok", detail: detail5, user: usuario4)
Review.create(content: "Logré hacer mi prototipo!", detail: detail6, user: usuario2)
Review.create(content: "Yo también :)", detail: detail6, user: usuario3)
Review.create(content: "El curso me ayudó en mi desarrollo personal", detail: detail7, user: usuario4)
Review.create(content: "A mí me ayudó a saber más de la era digital en la que estamos", detail: detail7, user: usuario1)
Review.create(content: "Gracias por darnos a conocer las diferentes herramientas que hay", detail: detail8, user: usuario1)
Review.create(content: "Sí, hay muchas !!!!", detail: detail8, user: usuario2)
Review.create(content: "OH, Sí que era importante analizar nuestro entorno", detail: detail9, user: usuario3)
Review.create(content: "Sí, más aún cuando recién inicias un negocio", detail: detail9, user: usuario4)
Review.create(content: "Me da gusto que cada día aumenten las mujeres sobresalientes", detail: detail10, user: usuario1)
Review.create(content: "Sí, nos da más impulso", detail: detail10, user: usuario3)
Review.create(content: "Tiene razón al decir que los líderes toman decisiones difíciles y se hacen cargo", detail: detail11, user: usuario2)
Review.create(content: "Sí, y hay que ser muy competente para serlo!", detail: detail11, user: usuario4)
Review.create(content: "Sí, hay que ser fuerte, en los tiempos difíles", detail: detail12, user: usuario1)
Review.create(content: "La actitud es muy importante", detail: detail12, user: usuario2)

# fin
# Course1 Detail1
Exam.create!(question: "¿Qué significa HTML?",
            answer_solution: "b",
            detail: detail1,
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
            r32: "<a href='www.geeksforgeeks.org' Geeksforgeeks /a>",
            r33: "<a link='www.geeksforgeeks.org' Geeksforgeeks> </a>",
            r3: "b",
            p4: "¿Cuál es el HTML correcto para insertar una imagen de fondo?",
            r41: "<background img='background.gif'>",
            r42: "<body style='background-image:url(background.gif)'>",
            r43: "<body background='background.gif'>",
            r4: "b")

Exam.create!(question: "fondo para todos los elementos <h1>?",
            answer_solution: "a",
            detail: detail2,
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
            detail: detail3,
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
