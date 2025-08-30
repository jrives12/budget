require_relative 'lib/budget/present.rb'
require_relative 'lib/budget/importer.rb'

include Budget

#puts "Enter statement filepath: "
#statement = gets.chomp

#importer = Importer.new(statement)
#importer.import_transactions

present = Present.new
present.present_transactions

