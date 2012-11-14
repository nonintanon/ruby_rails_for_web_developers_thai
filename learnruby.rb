animals = [ "Cat", "Dog", "Iguana", nil ]

##########################################################

animals.compact.each do |animal|
	puts animal
end

##########################################################

person = { 
  name: "Non Intanon",
  email: "noni@revenuescienceasia.com",
  colors: ["Black", "Blue", "Gray"]
}

puts person

# define Animal
class Animal
	def intialize(name, age, sex)
		@name, @age, @sex = name, age, sex
	end

	def name
		@name
	end

	def age
		@age
	end

	def sex
		@sex
	end
end

class Bird < Animal
	def intialize(leg, wing)
	end

	def leg
		puts "I've " + legs + " legs"
	end

	def wing
		puts "I've " + wings + " wings"
	end
end

# define Mammal class
class Mammal < Animal
# โดยคลาสสัตว์เลี้ยงลูกด้วยนมจะต้องประกอบไปด้วย
# จำนวนขา
# การให้อาหารด้วยนม (baby_food = 'Milk')
# ไม่มีความสามารถพิเศษ (not 'special_ability')
end

class Cat < Mammal
#ความคมของกรงเล็บ
#มีความสามารถพิเศษคือปีนต้นไม้ได้ด้วย
end

class Dog < Mammal
#มีฟิลว์ของเพื่อนที่แสนดี ('best_friend' field)
#มีความสามารถพิเศษ (้have 'special_ability')
end

#golden_retriever.legs
#golden_retriever.best_friend
#golden_retriever.special_ability

class Zoo
#zoo.animals จะต้องได้ผลลัพท์ออกมาเป็น array ของ object animal
#zoo.cats จะต้องได้ผลลัพท์จาก array ของ animal ออกมาเป็นแมวเท่านั้น (cat only)
#zoo.search('leg',4) จะต้องได้ผลลัพท์ลัพที่ออกมาเป็นสัตว์ที่มี 4 ขาเท่านั้น
end