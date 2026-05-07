module CalculatorOperations

    export perform_addition
    export perform_multiplication
    export perform_area_of_circle
    export perform_planet_distance
    

    using ..MathTools
    using ..Helpers
    using ..DatabaseHelpers
    using ..PlanetTools
    using ..Menu

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

    function perform_planet_distance()
        printstyled("Use this calculator to estimate the current distance between Earth and the planet of your choice.\n", color=:magenta)
        println()
        printstyled("Results are generated using a simplified orbital simulation that estimates planetary positions based
         on elapsed time since unix epoch (January 1, 1970).\n", color=:magenta)
         println()

        running = true
        planet = nothing
        while running
            show_planet_menu()
            println("\n")
            print("Choose your planet ==> ")
            choice = readline()

            println("You chose: ", choice)

            if choice == "1"
                println("You chose: Mercury")
                planet = mercury
                running = false

            elseif choice == "2"
                println("You chose: Venus")
                planet = venus
                running = false
            
            elseif choice == "3"
                println("You chose: Mars")
                planet = mars
                running = false
            
            elseif choice == "4"
                println("You chose: Jupiter")
                planet = jupiter
                running = false
            
            elseif choice == "5"
                println("You chose: Saturn")
                planet = saturn
                running = false

            elseif choice == "6"
                println("You chose: Uranus")
                planet = uranus
                running = false

            elseif choice == "7"
                println("You chose: Neptune")
                planet = neptune
                running = false

            else 
                println("Please select a valid entry")
            end
        end
        println()
        days = current_days_since_unix_epoch()
        distance = distance_from_earth(planet, days)
        
        display_results("Approximate distance from Earth (km): ", distance)
    end


    
end