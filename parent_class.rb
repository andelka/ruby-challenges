class Pets
  def set_name=(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_type=(type)
    @type = type
  end

  def get_type
    @type
  end

  def set_owner=(owner_name)
    @owner = owner_name
  end

  def get_owner
    @owner
  end
 end

class Bear < Pets
  def cry
    'brumbrum'
  end
end

class Panda < Pets
  def cry
    'brumibrumi'
  end
end

class Billy_goat < Pets
  def cry
    'baaaaaaah'
  end
end

my_bear = Bear.new
my_bear.set_name = 'Misza'
my_bear.set_type = 'Kodiak'

my_panda = Panda.new
my_panda.set_name = 'Shi Shi'
my_panda.set_type = 'Giant'

my_billy_goat = Billy_goat.new
my_billy_goat.set_name = 'Peterchen'
my_billy_goat.set_type = 'Lausitzer'

puts "My #{my_bear.get_type} bear #{my_bear.get_name} says #{my_bear.cry}, my #{my_panda.get_type} panda #{my_panda.get_name} says #{my_panda.cry} and my #{my_billy_goat.get_type} billy goat #{my_billy_goat.get_name} says #{my_billy_goat.cry}!"
