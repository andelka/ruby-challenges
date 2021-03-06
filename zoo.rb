class Ferret
  def set_name=(ferret_name)
    @name = ferret_name
  end

  def get_name
    @name
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    @owner_name
  end

  def squeal
    'squeeeeee'
  end
end

class Chinchilla
  def set_name=(chinchilla_name)
    @name = chinchilla_name
  end

  def get_name
    @name
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    @owner_name
  end

  def squeek
    'eeeep'
  end
end

class Parrot
  def set_name=(parrot_name)
    @name = parrot_name
  end

  def get_name
    @name
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    @owner_name
  end

  def tweet
    'chirp'
  end
end

my_ferret = Ferret.new
my_ferret.set_name = 'Fredo'
ferretname = my_ferret.get_name

my_parrot = Parrot.new
my_parrot.set_name = 'Budgie'
parrotname = my_parrot.get_name

my_Chinchilla = Chinchilla.new
my_Chinchilla.set_name = 'Dali'
Chinchillaname = my_Chinchilla.get_name

puts "#{ferretname} says #{my_ferret.squeal},
#{parrotname} says #{my_parrot.tweet},
and #{Chinchillaname} says #{my_Chinchilla.squeek}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_Chinchilla.inspect
