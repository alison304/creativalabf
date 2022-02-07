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

detail1 = Detail.create!(name: "Etiquetas basicas", content: "https://www.youtube.com/embed/D-3Qg4pf-E4", course: course1)
Detail.create!(name: "Variables en JavaScript", content: "https://www.youtube.com/embed/LRfaU7bdnPY", course: course1)
Detail.create!(name: "Dale un diseño a tu pagina", content: "https://www.youtube.com/embed/9cGqmcWJ2JA", course: course1)

Exam.create(question: "La etiqueta <p></p> sirve para?", answer_solution: "a", detail: detail1, answerA: "crea un nuevo parrafo")
Exam.create(question: "What does HTML stand for?", answer_solution: "c", detail: detail1, answerB: "colocar una imagen")
Exam.create(question: "What does HTML stand for?", answer_solution: "b", detail: detail1, answerC: "crear un formulario")

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
