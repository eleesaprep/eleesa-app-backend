# require 'date'

# # Create admin user
admin = User.create(full_name: "Eric Antwi", username: "eoantwi", email: "ericopokuantwi384@gmail.com", user_type: "admin", password: "123456")
user_1 = User.create(full_name: "John Mosh", username: "Moshin", email: "moshin@gmail.com", user_type: "student", password: "123456")
user_2 = User.create(full_name: "Barbara Camara", username: "babs", email: "babs@gmail.com", user_type: "student", password: "123456")

# Create Courses
course_1 = Course.create(course_code: "EE 360", course_name: "High Voltage Engineering", year: 3, semester: 2)
course_2 = Course.create(course_code: "MATH 151", course_name: "Calculus I", year: 1, semester: 1)
course_3 = Course.create(course_code: "ME 159", course_name: "Technical Drawing", year: 1, semester: 1)
course_4 = Course.create(course_code: "ENGL 157", course_name: "Communication Skills I", year: 1, semester: 1)
course_5 = Course.create(course_code: "ME 161", course_name: "Basic Mechanics", year: 1, semester: 1)
course_6 = Course.create(course_code: "EE 151", course_name: "Applied Electricity", year: 1, semester: 1)
course_7 = Course.create(course_code: "CE 155", course_name: "Environmental Studies", year: 1, semester: 1)
course_8 = Course.create(course_code: "EE 153", course_name: "Engineering Technology", year: 1, semester: 1)
course_9 = Course.create(course_code: "MATH 152", course_name: "Calculus II", year: 1, semester: 2)
course_10 = Course.create(course_code: "COE 158", course_name: "Introduction to IT", year: 1, semester: 2)
course_11 = Course.create(course_code: "EE 152", course_name: "Basic Electronics", year: 1, semester: 2)
course_12 = Course.create(course_code: "EE 158", course_name: "Communication Skills II", year: 1, semester: 2)
course_13 = Course.create(course_code: "ME 166", course_name: "Applied Thermodynamics I", year: 1, semester: 2)
course_14 = Course.create(course_code: "EE 156", course_name: "Engineering Drawing", year: 1, semester: 2)
course_15 = Course.create(course_code: "EE 162", course_name: "EEC & Transformers", year: 1, semester: 2)

# Create Instructors
instructor_1 = Instructor.create(course_id: course_1.id, full_name: "Asrifi Emmanuel", email: "asrifi@gmail.com", department: "Electrical/Electronic Engineering")
instructor_2 = Instructor.create(course_id: course_2.id, full_name: "Prince Baidoo", email: "prince@gmail.com", department: "Mathematics")

# Enrollments
enroll_1 = Enrollment.create(enrollment_date: Date.today, user_id: user_1.id, course_id: course_1.id)
enroll_2 = Enrollment.create(enrollment_date: Date.today, user_id: user_1.id, course_id: course_2.id)
enroll_3 = Enrollment.create(enrollment_date: "10-09-2023", user_id: user_2.id, course_id: course_2.id)


# Materials
material_1 = Material.create(title: "Engineering Maths", description: "An extensive calculus book for engineers", file_url:"https://drive.com", upload_date: Date.today, course_id: course_2.id)
material_2 = Material.create(title: "High Voltage Engineering", description: "An extensive high voltage book for engineers", file_url:"https://drive/2.com", upload_date: Date.today, course_id: course_1.id)

# Quizzes
quiz_1 = Quiz.create(exam_date: "20-08-2023", exam_title: "Mid-Sem", duration: "1", total_marks: 30, course_id: course_1.id)
quiz_2 = Quiz.create(exam_date: "20-10-2023", exam_title: "End-Sem", duration: "2", total_marks: 70, course_id: course_1.id)

# Questions
question_1 = Question.create(question_text: "Which of the following can be used to protect transmission lines from lightning?", question_type: "multiple choice", quiz_id: quiz_1.id)
question_2 = Question.create(question_text: "The momentarily rise and fall in voltage is termed as?", question_type: "multiple choice", quiz_id: quiz_1.id)

#Options
option_1 = Option.create(option_text: "transformer", is_correct: false, question_id: question_1.id)
option_2 = Option.create(option_text: "lightning arrester", is_correct: true, question_id: question_1.id)
option_3 = Option.create(option_text: "lightning stopper", is_correct: false, question_id: question_1.id)
option_4 = Option.create(option_text: "transducer", is_correct: false, question_id: question_1.id)
option_5 = Option.create(option_text: "Earth wire", is_correct: false, question_id: question_1.id)
option_6 = Option.create(option_text: "voltage dip", is_correct: false, question_id: question_2.id)
option_7 = Option.create(option_text: "voltage spike", is_correct: false, question_id: question_2.id)
option_8 = Option.create(option_text: "voltage fluctuation", is_correct: true, question_id: question_2.id)
option_9 = Option.create(option_text: "Harmonics", is_correct: false, question_id: question_2.id)
option_10 = Option.create(option_text: "Low Voltage", is_correct: false, question_id: question_2.id)

#Progress
progress_1 = Progress.create(total_marks_obtained: 70, total_marks_available: 100, grade: "A", status: "well done", user_id: user_1.id, course_id: course_1.id )
