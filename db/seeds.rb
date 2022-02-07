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


course1 = Course.create(description: "Aprende a crear tus propias páginas", name: "Crea una Landing Page para un perfil profesional")
course2 = Course.create(description: "Aprende a crear tus propias páginas", name: "Lanzamiento de una web")
course3 = Course.create(description: "Aprende a crear tus propias páginas", name: "Crea un e-commerce para tu marca")
course4 = Course.create(description: "Aprende a crear tus propias páginas", name: "Liderazgo Digital Growth")

Detail.create!(name: "Etiquetas basicas", content: "Aprende a manejar las etiquetas basicas que te permitiran aprender las estructuras basicas de un archivo HTML", course_id: course1.id)
Detail.create!(name: "Variables en JavaScript", content: "Aprende como funciona la asignacion de Variables en JavaScript", course_id: course2.id)
Detail.create!(name: "Dale un diseño a tu pagina", content: "CSS te permite darle estilo a todo lo que has creado en HTML", course_id: course3.id)
Detail.create!(name: "Dale un diseño a tu pagina", content: "CSS te permite darle estilo a todo lo que has creado en HTML", course_id: course4.id)
# Exam.create(question: "¿Cuáles son los roles de las etiquetas HTML?", answer_solution: "a", detail_id: 1, answerA: "Para definir la relación entre un documento y un recurso externo")
# Exam.create(question: "¿Cuáles son los roles de las etiquetas HTML?", answer_solution: "a", detail_id: 1, answerB: "Para crear un formulario")
# Exam.create(question: "¿Cuáles son los roles de las etiquetas HTML?", answer_solution: "a", detail_id: 1, answerC: "Para dar estilo a la pagina")

# Exam.create(question: "¿Por qué las etiquetas <title> y <meta name='description'> son tan importantes?", answer_solution: "a", detail_id: 1, answerA: "Porque ambas son parte básica de la optimización en motores de búsqueda")
# Exam.create(question: "¿Por qué las etiquetas <title> y <meta name='description'> son tan importantes?", answer_solution: "a", detail_id: 1, answerB: "Para crear un formulario")
# Exam.create(question: "¿Por qué las etiquetas <title> y <meta name='description'> son tan importantes?", answer_solution: "a", detail_id: 1, answerC: "Para dar estilo a la pagina")

# Exam.create(question: "¿Cómo agregamos una imagen en HTML?", answer_solution: "b", detail_id: 1, answerA: "<link src='images/logo.png' type='text/css' href='style.css'>")
# Exam.create(question: "¿Cómo agregamos una imagen en HTML?", answer_solution: "b", detail_id: 1, answerB: "<img src='images/logo.png' alt='Company logo'>")
# Exam.create(question: "¿Cómo agregamos una imagen en HTML?", answer_solution: "b", detail_id: 1, answerC: "<a src='images/logo.png'></a>")

# Exam.create(question: "¿Para qué utilizamos la etiqueta <link>?", answer_solution: "a", detail_id: 1, answerA: "Para definir la relación entre un documento y un recurso externo")
# Exam.create(question: "¿Para qué utilizamos la etiqueta <link>?", answer_solution: "a", detail_id: 1, answerB: "Para crear un formulario")
# Exam.create(question: "¿Para qué utilizamos la etiqueta <link>?", answer_solution: "a", detail_id: 1, answerC: "Para dar estilo a la pagina")

# Exam.create(question: "¿Cómo se enfatiza una palabra en un párrafo?", answer_solution: "c", detail_id: 1, answerA: "Con la etiqueta <a></a>")
# Exam.create(question: "¿Cómo se enfatiza una palabra en un párrafo?", answer_solution: "c", detail_id: 1, answerB: "Con la etiqueta <b></b>")
# Exam.create(question: "¿Cómo se enfatiza una palabra en un párrafo?", answer_solution: "c", detail_id: 1, answerC: "Con las etiquetas <em> o <strong>")

# Exam.create(question: "¿Con qué etiqueta escribimos un parrafo?", answer_solution: "b", detail_id: 1, answerA: "<button></button>")
# Exam.create(question: "¿Con qué etiqueta escribimos un parrafo?", answer_solution: "b", detail_id: 1, answerB: "<p></p>")
# Exam.create(question: "¿Con qué etiqueta escribimos un parrafo?", answer_solution: "b", detail_id: 1, answerC: "<strong>")
