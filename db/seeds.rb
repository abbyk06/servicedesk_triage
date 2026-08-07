# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


it_dept = Department.create(name: "IT")
hr_dept = Department.create(name: "HR")

vp = Employee.create(name: "Morgan Lee", role: "VP of Operations", department: it_dept)
it_manager = Employee.create(name: "Sam Rivera", role: "IT Manager", department: it_dept, manager: vp)
it_agent = Employee.create(name: "Jordan Kim", role: "IT Support", department: it_dept, manager: it_manager)

hr_manager = Employee.create(name: "Casey Nguyen", role: "HR Manager", department: hr_dept)
hr_agent = Employee.create(name: "Riley Park", role: "HR Generalist", department: hr_dept, manager: hr_manager)

Topic.create(keywords: "vpn network wifi connection internet", employee: it_agent)
Topic.create(keywords: "payroll paycheck salary direct deposit", employee: hr_agent)
Topic.create(keywords: "password login account locked", employee: it_agent)
Topic.create(keywords: "benefits insurance pto vacation", employee: hr_agent)