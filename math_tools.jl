module MathTools

    export add_numbers
    export multiply_numbers
    export area_of_circle
    export fibonacci_sequence


    function add_numbers(a, b)
        return a + b
    end

    function multiply_numbers(a, b)
        return a * b
    end

    function area_of_circle(r)
        return (r * r) * pi
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
end