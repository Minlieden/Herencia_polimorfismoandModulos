module Habilidades
  module Volador
    def volar
      'Estoy volandooooo!'
    end
    def aterrizar
      'Estoy cansado de volar, voy a aterrizar'
    end
  end
  module Nadador
    def nadar
      'Estoy nadando!'
    end
    def sumergir
      'glu glub glub glu'
    end
  end
  module Caminante
    def caminar
      'Puedo caminar!'
    end
  end
end
module Alimentacion
  module Herbivoro
    def comer
      'Puedo comer plantas!'
    end
  end
  module Carnivoro
    def comer
      'Puedo comer carne!'
    end
  end
end



class Animal
  include Alimentacion
  include Habilidades
  attr_reader :nombre
  def initialize(nombre)
    @nombre = nombre 
  end
end

class Ave < Animal
  include Habilidades::Caminante
end

class Mamifero < Animal
  include Habilidades::Caminante
end

class Insecto < Animal
  include Habilidades::Caminante
  include Habilidades::Volador
end


class Pinguino < Ave
  include Alimentacion::Carnivoro
  include Habilidades::Nadador

end

class Paloma < Ave
  include Alimentacion::Herbivoro
  include Habilidades::Volador

end
class Pato < Ave
  include Alimentacion::Herbivoro
  include Habilidades::Nadador
  include Habilidades::Volador

end

class Perro < Mamifero
  include Alimentacion::Carnivoro
  include Habilidades::Nadador

end

class Gato < Mamifero
  include Alimentacion::Carnivoro
end

class Vaca < Mamifero
  include Alimentacion::Herbivoro
end

class Mosca < Insecto
  include Alimentacion::Carnivoro
end

class Mariposa < Insecto
  include Alimentacion::Herbivoro
end

class Abeja < Insecto
  include Alimentacion::Herbivoro
end