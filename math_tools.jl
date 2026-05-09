module MathTools

    export add_numbers
    export multiply_numbers
    export area_of_circle
    export fibonacci_sequence
    export calculate_factorial


    function add_numbers(a, b)
        return a + b
    end

    function multiply_numbers(a, b)
        return a * b
    end

    function area_of_circle(r)
        return π * r^2
    end

    function fibonacci_sequence(num1, num2, iterations)
        sequence = BigInt[]
        a = BigInt(num1)
        b = BigInt(num2)
        x = iterations

        for i in 1:x
            c = a + b
            push!(sequence, c)
            a = b
            b = c
        end
        
        return sequence
    end

    function calculate_factorial(num1)
        
        
        
        if num1 < 0
        printstyled(" ☠️    ERROR   ☠️\nFactorials cannot be calculated for negative numbers\n", color=:red, bold=true)
        
        return nothing
        
        end

        result = BigInt(1)

        for i in 1:num1
            result *=i
        end

        return result
        
    end
end