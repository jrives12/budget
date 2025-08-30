require 'csv'

module Budget
  class Present    
    
    PLAN_CSV = 'misc/plan.csv'
    TRANS_CSV = 'misc/transaction.csv'

    def initialize
      data = CSV.read(PLAN_CSV, headers: true)
      @plan = data[0].to_h
      @transactions = CSV.read(TRANS_CSV)
    end

    def present_plan
      @plan.keys.each do |category|
        puts "#{category.upcase}: #{@plan.fetch(category)}"
      end
    end

    def present_transactions
      puts "Transactions: \n\n"
      @transactions.shift
      @transactions.each do |tran|
        puts "#{tran[0]}    #{tran[1][0,10]}   #{tran[2]}"
      end
    end

  end
end
