module MathTools

    export add_numbers
    export multiply_numbers
    export area_of_circle


    function add_numbers(a, b)
        return a + b
    end

    function multiply_numbers(a, b)
        return a * b
    end

    function area_of_circle(r)
        return (r * r) * pi
    end
end