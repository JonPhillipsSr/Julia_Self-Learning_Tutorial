include("math_tools.jl")
include("menu.jl")
include("helpers.jl")
include("database_helpers.jl")
include("planet_tools.jl")
include("calculator_operations.jl")



using .MathTools
using .Menu
using .Helpers
using .CalculatorOperations
using .DatabaseHelpers
using .PlanetTools



function main()
    db = initialize_database()

    running = true
    while running
        show_menu()
        println("\n")
        print("Enter your choice here ==> ")
        choice = readline()

        

        if choice == "1"
            perform_addition(db)

        elseif choice == "2"
            perform_multiplication(db)
        
        elseif choice == "3"
            perform_area_of_circle(db)
        
        elseif choice == "4"
            perform_fibonacci()
            
        elseif choice == "5"
            perform_factorial(db)
        
        elseif choice == "6"
            perform_planet_distance(db)
        
        elseif choice == "7"
            show_history(db)

        elseif choice == "8"
            clear_history(db)

        elseif choice == "9"
            printstyled("😁    Thanks for using my program, Have a wonderful day!   😁\n\n\n", color=:green, bold=true)
            running = false

        else 
            println("Please select a valid entry")
        end
    end

end

main()

