# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# the goal here is to create one of everything
s = Subcategory.new
cat = Category.new
b = Budget.new
f = FiscalYear.new
form = Form.new
fr = FormResponse.new

c = Committee.create!
batch = Batch.create!
m = Member.create!

s.category = cat
cat.budget = b
b.fiscal_year = f
b.committee = c

fr.subcategories << s
fr.member = m
fr.batch = batch
fr.form = form

form.form_type = "ATC"

s.save
cat.save
b.save
f.save
form.save
fr.save
