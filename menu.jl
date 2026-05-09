module Menu
    export show_menu
    export show_planet_menu

    function show_menu()
        println("\n\n\n")
        println("=== Main Menu ===")
        println("1. Add Numbers")
        println("2. Multiply Numbers")
        println("3. Calculate the area of a circle")
        println("4. Calculate distance to planet")
        println("5. View History")
        println("6. Clear History")
        println("7. Exit")
    end

  function show_planet_menu()
    println("=== Planet Distance Menu ===")
    println("1. Mercury")
    println("2. Venus")
    println("3. Mars")
    println("4. Jupiter")
    println("5. Saturn")
    println("6. Uranus")
    println("7. Neptune")
end

end
