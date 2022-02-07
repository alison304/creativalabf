# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "limpiando base de datos"
User.destroy_all if Rails.env.development?
Course.destroy_all

puts "creando nuevas seeds"
User.create(email:  "carolina@gmail.com", password: "Carolina123", password_confirmation: "Carolina123")
User.create(email:  "paola@gmail.com", password: "Paola123", password_confirmation: "Paola123")
User.create(email:  "daniel@gmail.com", password: "Daniel123", password_confirmation: "Daniel123")

# Course.create(description: "Curso basico de HTML", name: "HTML")
# Course.create(description: "Curso basico de JavaScript", name: "JavaScript")
# Course.create(description: "Curso basico de CSS", name: "CSS")

Course.create(description: "Aprende a crear tus propias páginas", name: "Crea una Landing Page para un perfil profesional")
Course.create(description: "Aprende a crear tus propias páginas", name: "Lanzamiento de una web")
Course.create(description: "Aprende a crear tus propias páginas", name: "Crea un e-commerce para tu marca")
Course.create(description: "Aprende a crear tus propias páginas", name: "Liderazgo Digital Growth")

Detail.create(name: "Etiquetas basicas", content: "Aprende a manejar las etiquetas basicas que te permitiran aprender las estructuras basicas de un archivo HTML", course_id: 1)
Detail.create(name: "Variables en JavaScript", content: "Aprende como funciona la asignacion de Variables en JavaScript", course_id: 2)
Detail.create(name: "Dale un diseño a tu pagina", content: "CSS te permite darle estilo a todo lo que has creado en HTML", course_id: 3)

Exam.create(question: "La etiqueta <p></p> sirve para?", answer_solution: "a", detail_id: 1, answerA: "crea un nuevo parrafo")
Exam.create(question: "What does HTML stand for?", answer_solution: "c", detail_id: 1, answerB: "colocar una imagen")
Exam.create(question: "What does HTML stand for?", answer_solution: "b", detail_id: 1, answerC: "crear un formulario")
