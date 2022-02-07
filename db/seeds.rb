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
User.create(email:  "carolina@gmail.com", password: "Carolina123", password_confirmation: "Carolina123")
User.create(email:  "paola@gmail.com", password: "Paola123", password_confirmation: "Paola123")
User.create(email:  "daniel@gmail.com", password: "Daniel123", password_confirmation: "Daniel123")

# Course.create(description: "Curso basico de HTML", name: "HTML")
# Course.create(description: "Curso basico de JavaScript", name: "JavaScript")
# Course.create(description: "Curso basico de CSS", name: "CSS")

course1 = Course.create(description: "Aprende a crear tus propias páginas" , name: "Crea una Landing Page para un perfil profesional")
course2 = Course.create(description: "Aprende a crear tus propias páginas" , name: "Lanzamiento de una web")
course3 = Course.create(description: "Aprende a crear tus propias páginas" , name: "Crea un e-commerce para tu marca")
course4 = Course.create(description: "Aprende a crear tus propias páginas" , name: "Liderazgo Digital Growth")

detail1 = Detail.create(name: "Etiquetas basicas", content: "https://www.youtube.com/embed/D-3Qg4pf-E4", course: course1)
Detail.create(name: "Variables en JavaScript", content: "https://www.youtube.com/embed/LRfaU7bdnPY", course: course1)
Detail.create(name: "Dale un diseño a tu pagina", content: "https://www.youtube.com/embed/9cGqmcWJ2JA", course: course1)

Exam.create(question: "La etiqueta <p></p> sirve para?", answer_solution: "a", detail: detail1, answerA: "crea un nuevo parrafo")
Exam.create(question: "What does HTML stand for?", answer_solution: "c", detail: detail1, answerB: "colocar una imagen")
Exam.create(question: "What does HTML stand for?", answer_solution: "b", detail: detail1, answerC: "crear un formulario")
