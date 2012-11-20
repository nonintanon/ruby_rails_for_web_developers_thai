##########################################################
# สร้างไฟล์ 'learningruby.rb' ใน repository 
# คุณจะบันทึกงานของคุณทั้งหมดในแฟ้มนี้
##########################################################

puts ""
puts ""
puts "--------------------------------------------"
puts "create learningruby.rb"
puts "--------------------------------------------"
puts "done."

##########################################################
# สร้าง array และบันทึก array ที่ ตัวแปร 'animals'
# รายการใน array ควรมี
# Cat
# Dog
# Iguana
# nil
##########################################################

animals = [ "Cat", "Dog", "Iguana", nil ]

puts ""
puts ""
puts "--------------------------------------------"
puts "animals array"
puts "--------------------------------------------"
puts animals

##########################################################

puts ""
puts ""
puts "--------------------------------------------"
puts "loop animals with compact"
puts "--------------------------------------------"

animals.compact.each do |animal|
	puts animal
end

##########################################################

person = { 
  name: "Non Intanon",
  email: "noni@revenuescienceasia.com",
  colors: ["Black", "Blue", "Gray"]
}

puts ""
puts ""
puts "--------------------------------------------"
puts "person"
puts "--------------------------------------------"
puts person

##########################################################
# โดยคลาสสัตว์(Animal) จะต้องประกอบไปด้วย
# ชื่อ
# อายุ
# เพศของสัตว์
##########################################################

class Animal
	attr_accessor :name, :age, :sex

	def initialize(name, age, sex)
		@name, @age, @sex = name, age, sex
	end

	def greet()
		"Hello, I'm " + name + ", a" + age.to_s() + "/" + sex + " animal."
	end 
end

puts ""
puts ""
puts "--------------------------------------------"
puts "Animal class"
puts "--------------------------------------------"
puts Animal.new('Bianco', 12, 'Male').greet()

##########################################################
# จงสร้างคลาสสัตว์เลี้ยงลูกด้วยนม(Mammal)
# โดยคลาสสัตว์เลี้ยงลูกด้วยนมจะต้องประกอบไปด้วย
# - จำนวนขา
# - การให้อาหารด้วยนม (baby_food = 'Milk')
# - ไม่มีความสามารถพิเศษ (not 'special_ability')
##########################################################

class Mammal < Animal

	attr_accessor :legs, :baby_food, :special_ability

	def initialize(
			name = "annonymous", 
			age = 0, 
			sex = "n/a", 
			legs = 2, 
			baby_food = "unknown", 
			special_ability = "none")
		super(name, age, sex)
		@legs, @baby_food, @special_ability = legs, baby_food, special_ability
	end

	def greet
		"Hello, I'm a mammal, named " + name + ". I've " + legs.to_s + " leg(s). My baby food is " + baby_food + ". And my special ability is '" + special_ability + "'."
	end
end

puts ""
puts ""
puts "--------------------------------------------"
puts "Mammal class"
puts "--------------------------------------------"
puts Mammal.new().greet()

##########################################################
# จงสร้างคลาสนก (Bird)
# โดยคลาสนกจะต้องประกอบไปด้วย
# - จำนวนปีก
# - จำนวนขา
##########################################################

class Bird < Animal

	attr_accessor :legs, :wings

	def initialize(
			name = "Twitty",
			age = 2,
			sex = "Female",
			legs = 2, 
			wings = 2)
		super(name, age, sex)
		@legs, @wings = legs, wings
	end

	def greet
		"Hello, I'm a bird, named " + name + ". I've " + legs.to_s + " legs and " + wings.to_s + " wings."
	end
end

puts ""
puts ""
puts "--------------------------------------------"
puts "Bird class"
puts "--------------------------------------------"
puts Bird.new().greet()

##########################################################
# จงสร้างคลาสหมา(Dog)
# โดยคลาสหมาจะต้องประกอบไปด้วย
# - มีฟิลว์ของเพื่อนที่แสนดี ('best_friend' field)
# - มีความสามารถพิเศษ (้have 'special_ability')
##########################################################

class Dog < Mammal
	attr_accessor :best_friend

	# def initialize(
	# 		name = "Maddog",
	# 		age = 2,
	# 		sex = "Male",
	# 		legs = 4,
	# 		baby_food = "meat",
	# 		special_ability = "toys destroyer machine",
	# 		best_friend = "Cristiano Ronaldo")
	# 	super(name, age, sex, legs, baby_food, special_ability)
	# 	@best_friend, @special_ability = best_friend, special_ability
	# end

	def initialize(options = {})
		self.name = options[:name] || "Maddog"
		self.age = options[:age] || 2
		self.sex = options[:sex] || "Male"
		self.legs = options[:legs] || 4
		self.baby_food = options[:baby_food] || "meat"
		self.special_ability = options[:special_ability] || "shoes destroyer"
		self.best_friend = options[:best_friend] || "Lionel Messi"
		super(name, age, sex, legs, baby_food, special_ability)
		@best_friend, @special_ability = best_friend, special_ability
	end

	def greet()
		"Hello, I'm a dog, named " + name + ". " + best_friend + " is my best friend. I'm a real " + special_ability
	end
end

puts ""
puts ""
puts "--------------------------------------------"
puts "Dog class"
puts "--------------------------------------------"
puts Dog.new().greet()

##########################################################
# จงสร้างคลาสแมว(Cat)
# โดยคลาสน้องแมวจะต้องประกอบไปด้วย
# - ความคมของกรงเล็บ
# - มีความสามารถพิเศษคือปีนต้นไม้ได้ด้วย
##########################################################

class Cat < Mammal
	attr_accessor :nail_sharp_level

	def initialize(
			name = "Niancat", 
			age = 2, 
			sex = "Female", 
			legs = 4, 
			baby_food = "fishes", 
			nail_sharp_level = "very sharp")
		super(name, age, sex, legs, baby_food, "tree climber")
		@nail_sharp_level = nail_sharp_level
	end

	def greet()
		"Hello, I'm a cat, named " + name + ". I eat " + baby_food + " and I'm a " + special_ability + " because my nails are " + nail_sharp_level
	end
end

puts ""
puts ""
puts "--------------------------------------------"
puts "Cat class"
puts "--------------------------------------------"
puts Cat.new().greet()

##########################################################
# จงอธิบายผลลัพท์ของการเรียก 'golden_retriever' ตามหัวข้อต่อไปนี้
# golden_retriever.legs
# golden_retriever.best_friend
# golden_retriever.special_ability
##########################################################

golden_retriever = Dog.new()

puts ""
puts ""
puts "--------------------------------------------"
puts "golden_retriever"
puts "--------------------------------------------"
puts golden_retriever.legs
puts golden_retriever.best_friend
puts golden_retriever.special_ability

# Output looks like this
# 4
# Cristiano Ronaldo
# toys destroyer machine
# => true

##########################################################
# จงสร้างคลาสสวนสัตว์(Zoo)
# โดยมีลักษณะดังนี้
# - zoo.animals จะต้องได้ผลลัพท์ออกมาเป็น array ของ object animal
# - zoo.cats จะต้องได้ผลลัพท์จาก array ของ animal ออกมาเป็นแมวเท่านั้น (cat only)
# - zoo.search('leg',4) จะต้องได้ผลลัพท์ลัพที่ออกมาเป็นสัตว์ที่มี 4 ขาเท่านั้น
##########################################################
class Zoo

	attr_accessor :animals

	def initialize animals
		@animals = animals
	end

	def cats
		@allcat = animals.select {|a| a.kind_of?(Cat)}
		@allcat.count()
	end

	def search(part, number)
		#@output = animals.select {|a| a.legs == 4}
		#@output = animals.select {|a| a["legs"] == 4} - this is not working :(
		# still have no idea how to complete this !!!
		@output = animals.select {|a| a.legs == number}
		@output.count()
	end
end

puts ""
puts ""
puts "--------------------------------------------"
puts "zoo"
puts "--------------------------------------------"

animals = []
# add birds
animals.push(Bird.new(name: "Twitty"))
animals.push(Bird.new(name: "Birdy"))

# add dogs
animals.push(Dog.new(name: "Billion"))
animals.push(Dog.new(name: "Milo"))

zoo = Zoo.new(animals)

# add cats
zoo.animals.push(Cat.new(name: "Ashi"))
zoo.animals.push(Cat.new(name: "Mashimaro"))
zoo.animals.push(Cat.new(name: "Meoaw"))

puts "List of all animals in the zoo"
puts zoo.animals
puts "Retrieving number of cats in the zoo"
puts zoo.cats
puts "Retrieving animals in the zoo that have 4 legs"
puts zoo.search('legs', 4)