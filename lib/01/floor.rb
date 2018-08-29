class Floor
  def initialize(input)
    @input = input
  end

  def final_floor
    chars = @input.chars
    ups = chars.select { |x| x == '(' }
    downs = chars.select { |x| x == ')' }
    ups.length - downs.length
  end

  def enter_basement
    floor = 0
    position = 0
    instructions = @input.chars
    while floor >= 0
      instruction = instructions[position]
      position += 1
      if instruction == '('
        floor += 1
      else
        floor -= 1
      end
    end
    position
  end
end
