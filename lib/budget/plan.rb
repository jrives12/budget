class Plan
  
  def initialize
    @categories = []
  end

  def choose_category
    loop do
      puts "Category to Add: "
      input = gets.chomp
      break if input.empty?

      @categories.push(input)
      puts "Added #{input}"
    end
  end
end
