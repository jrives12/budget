require 'csv'
require 'securerandom'

module Budget
  class Importer

    TRANS_FILE = 'misc/transaction.csv'

    def initialize(bank_file)
      @data = CSV.read(bank_file)
      @data.shift
    end

    def import_transactions
      file = File.open(TRANS_FILE, 'a')
      @data.each do |line|
        file.puts("#{SecureRandom.uuid},#{line[1]},#{line[4]},#{line[5]}")
      end
    end
  end
end
