# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "limpiando base de datos"

Exam.destroy_all
Detail.destroy_all
Course.destroy_all
User.destroy_all if Rails.env.development?


puts "creando nuevas seeds"
usuario1 = User.create(email:  "carolina@gmail.com", password: "Carolina123", password_confirmation: "Carolina123")
usuario2 = User.create(email:  "paola@gmail.com", password: "Paola123", password_confirmation: "Paola123")
usuario3 = User.create(email:  "daniel@gmail.com", password: "Daniel123", password_confirmation: "Daniel123")

course1 = Course.create(description: "¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propio landing page?:cara_pensativa::lupa:
Aprende a crear tu landing page desde cero
En Creativa diseñamos un programa de 1 mes que te entrenará para crear tu propia web profesional en Webflow :grito:
:ordenador: Sesiones en vivo y grabadas.
:profesor: Tendrás el acompañamiento de expertos durante todo el programa.
:trofeo: Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Crea una Landing Page para un perfil profesional")
Course.create(description: "Aprende a lanzar tu web con éxito al mercado
¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propio landing page?:cara_pensativa::lupa:
En Creativa diseñamos un programa de 1 mes que te entrenará para lanzar con dominio y hosting:grito:
:ordenador: Online en vivo.
:profesor: Tendrás el acompañamiento de expertos durante todo el programa.
:trofeo: Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Lanzamiento de una web")
Course.create(description: "Curso e-commerce: Cómo montar tu tienda online con Shopify
¿Sabías que, siendo developer, diseñador, marketero, entre otros, puedes crear tu propia tienda e-commerce?:cara_pensativa::lupa:
En Creativa diseñamos un programa de 1 mes que te entrenará para crear tu tienda desde cero:grito:
:ordenador: Sesiones en vivo y grabadas
:profesor: Tendrás el acompañamiento de expertos durante todo el programa.
:trofeo: Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Crea un e-commerce para tu marca")
Course.create(description: "En este curso de Liderazgo a través del servicio, aprenderás a reconocer tus fortalezas como líder y aquellas características propias que te limitan y te impiden liberar todo tu potencial de impacto e influencia en los otros y tu entorno.
De la mano de Jose Luis Pinheira, tu profesor en este curso de Liderazgo a través del servicio, entenderás qué es el thought leadership organization, cuáles son sus características y qué necesitas para construir una organización basada en el thought leadership.
En Creativa diseñamos un programa de 1 mes que te entrenará para desarrollar habilidades de liderazgo growth:grito:
:ordenador: Sesiones en vivo y grabadas
:profesor: Tendrás el acompañamiento de expertos durante todo el programa.
:trofeo: Tu aprendizaje será basado en retos y crearás webs durante el programa." , name: "Liderazgo Digital Growth")

detail1 = Detail.create!(name: "Moodboard y Branding", content: "https://www.youtube.com/embed/D-3Qg4pf-E4", course: course1)
Detail.create!(name: "Diseño de Home principal", content: "https://www.youtube.com/embed/LRfaU7bdnPY", course: course1)
Detail.create!(name: "Creación de CMS Blog", content: "https://www.youtube.com/embed/9cGqmcWJ2JA", course: course1)

Exam.create!(question: "¿Qué significa HTML?", answer_solution: "b", detail: detail7, answerA: "Lenguaje de máquina de hipertexto", answerB: "Lenguaje de marcado de hipertexto", answerC: "Lenguaje de marcas de hipertexto")
Exam.create!(question: "¿Cómo se inicializa el tipo de documento en HTML5?", answer_solution: "c", detail: detail7, answerA: "<!DOCTYPE HTML>", answerB: "</DOCTYPE>", answerC: "</DOCTYPE html>")
Exam.create!(question: "¿Cuál de las siguientes es la forma correcta de crear un hipervínculo en HTML?", answer_solution: "b", detail: detail7, answerA: "<a>www.geeksforgeeks.org <Geeksforgeeks /a>", answerB: "<a href=“www.geeksforgeeks.org” Geeksforgeeks /a>", answerC: "<a link=“www.geeksforgeeks.org” Geeksforgeeks> </a>")

Exam.create!(question: "¿Cuál es el HTML correcto para insertar una imagen de fondo?", answer_solution: "b", detail: detail7, answerA: "<background img='background.gif'>", answerB: "<body style='background-image:url(background.gif)'>", answerC: "<body background='background.gif'>")
Exam.create!(question: "¿Qué código es correcto para una imagen en html?", answer_solution: "c", detail: detail7, answerA: "<img src='pic_mountain.jpg'/", answerB: "</DOCTYPE>", answerC: "</DOCTYPE html>")

Review.create(content: "Aprende", detail: detail1, user: usuario1)
Review.create(content: "crear ", detail: detail1, user: usuario1)
