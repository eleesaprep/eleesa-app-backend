# require 'date'

# # Create admin user
admin = User.create(full_name: "Administrator", username: "admin", email: "admin@gmail.com", user_type: "admin", password: "123456")

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


# Materials
material_1 = Material.create(title: "Engineering Maths", description: "An extensive calculus book for engineers", file_url:"https://drive.com", upload_date: Date.today, course_id: course_2.id)
material_2 = Material.create(title: "High Voltage Engineering", description: "An extensive high voltage book for engineers", file_url:"https://drive/2.com", upload_date: Date.today, course_id: course_1.id)
