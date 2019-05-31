# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


manager = Manager.create({name: "Phil Costin", email: "phil@cbi.com", mobile: "8894453478"})
bank_branch = BankBranch.create({name: "Chembur", address: "Sharikant Chambers Next to RK Studio Chembur, Mumbai 400074", ifsc_code: "CBI45678", micr_code: "45678", manager_id: manager.id})
