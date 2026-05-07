include("math_tools.jl")
include("menu.jl")
include("helpers.jl")
include("database_helpers.jl")
include("calculator_operations.jl")


using .MathTools
using .Menu
using .Helpers
using .CalculatorOperations
using .DatabaseHelpers



function main()
    db = initialize_database()

    running = true
    while running
        show_menu()
        println("\n")
        print("Enter your choice here ==> ")
        choice = readline()

        println("You chose: ", choice)

        if choice == "1"
            perform_addition(db)

        elseif choice == "2"
            perform_multiplication(db)
        
        elseif choice == "3"
            perform_area_of_circle(db)
        
        elseif choice == "4"
            show_history(db)
        
        elseif choice == "5"
            clear_history(db)

        elseif choice == "6"
            printstyled("😁    Thanks for using my program, Have a wonderful day!   😁\n\n\n", color=:green, bold=true)
            running = false

        else 
            println("Please select a valid entry")
        end
    end

end

main()

