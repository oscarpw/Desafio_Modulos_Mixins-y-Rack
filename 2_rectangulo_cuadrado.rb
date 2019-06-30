module Formula
  def perimetro
    if @largo
      2*@largo + 2*@ancho
    else
      4*@lado
    end
  end

  def area
    if @largo
      @largo * @ancho
    else
      @lado*@lado
    end
  end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    "#{@largo},#{@ancho}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    "#{@lado}"
  end
end

puts Rectangulo.new(4,3).perimetro
puts Rectangulo.new(4,3).area

puts Cuadrado.new(4).perimetro
puts Cuadrado.new(4).area
