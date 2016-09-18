
## find amount on bill
## find tax
  ## set percentage
  ## divide by 100.0
  ## add 1
## multiple bill by tax

class TaxCalculator
  def bill
    print "How much was your bill? => "
    gets.chomp.to_i
  end

  def tax
    print "What is the tax percentage in this state? => "
    tax = gets.chomp.to_i
    (tax / 100.0) + 1
  end

  def calculate
    "Your total bill is $#{(bill * tax).round(2)}"
  end
end

puts TaxCalculator.new.calculate
