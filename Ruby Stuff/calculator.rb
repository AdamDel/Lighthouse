
class Calculator 
    def add(a, b)
        puts "    > #{a} + #{b} = #{a + b}" 
    end
    
    def subtract(a, b)
        puts "    > #{a} - #{b} = #{a - b}"
    end
    
    def multiply(a, b)
        puts "    > #{a} * #{b} = #{a * b}"
    end
    
    def divide(a, b)
        puts "    > #{a} / #{b} = #{a.to_f / b}"
    end
end

def start
    calculation = Calculator.new
    puts "    ================  WELCOME TO MY RUBY CALCULATOR  ====================" 
    puts "    
              PLEASE SELECT THE OPERATION 
    
    > A for Addition 
    > S for subtraction 
    > M for multiplication 
    > D for division
    > X to Exit the calculator
    ====================================================================="
    
    print "    > OPERATION: "
    
    operation = gets.chomp


    if operation == "A" || operation == "S" || operation == "M" || operation == "D"
    
        print "    > PLEASE ENTER THE FIRST NUMBER: "
        number1 = gets.chomp.to_i 
        print "    > PLEASE ENTER THE SECOND NUMBER: "
        number2 = gets.chomp.to_i
    elsif operation == "X"
        puts "   
        EXITING .... 
        " 
    else
        puts "      
                         >>>>>NOT VALID: TRY AGAIN!<<<<<
                         " 
        start
    end
    
    case operation 
        when "A"
            calculation.add(number1, number2)
        when "S"
             calculation.subtract(number1, number2)
        when "M"
             calculation.multiply(number1, number2)
        when "D"
            calculation.divide(number1, number2)
        when "X"
            puts "    =========================  THANK YOU ^.^  ==========================="
        end
end

start
