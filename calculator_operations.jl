module CalculatorOperations

    export perform_addition
    export perform_multiplication
    export perform_area_of_circle
    using ..MathTools
    using ..Helpers
    using ..DatabaseHelpers

    function perform_addition(db)
        println("Addition Selected")
        num1 = get_number("Enter the first number ==> ")
        num2 = get_number("Enter the second number ==> ")
        result = add_numbers(num1, num2)
        display_results("The sum of your numbers is ", result)
        save_calculation(
            db,
            "Addition",
            num1,
            num2,
            result
        )
    end

    function perform_multiplication(db)
        println("Multiplication Selected")
        num1 = get_number("Enter the first number ==> ")
        num2 = get_number("Enter the second number ==> ")
        result = multiply_numbers(num1, num2)
        display_results("The product of your numbers is ", result)
        save_calculation(
            db,
            "Multiplication",
            num1,
            num2,
            result
        )
    end

    function perform_area_of_circle(db)
        println("Circle Area Selected")
        radius = get_number("Enter the radius of the circle ==> ")
        area = area_of_circle(radius)
        display_results("The area of the circle is ", area)
        save_calculation(
            db,
            "Area of Circle",
            radius,
            nothing,
            area
        )
    end

    
end