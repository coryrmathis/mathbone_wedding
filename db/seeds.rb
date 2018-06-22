# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

michelles_list = SmarterCSV.process("csv/michelles_list.csv")
corys_list = SmarterCSV.process("csv/corys_list.csv")

groups = (michelles_list + corys_list).select{ |a| a[:group_name] }.map{ |a| a[:group_name]}.uniq

