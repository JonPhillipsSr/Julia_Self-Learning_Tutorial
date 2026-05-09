module DatabaseHelpers

    using SQLite
    using DBInterface

    export initialize_database
    export save_calculation
    export show_history
    export clear_history

    function initialize_database()
        
        db = SQLite.DB("calculator_history.db")

        DBInterface.execute(db, """
            CREATE TABLE IF NOT EXISTS history(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            operation TEXT,
            input1 REAL,
            input2 REAL,
            result REAL 
            )
        """)

        return db 
    end
    
    function save_calculation(db, operation, input1, input2, result)
        
        DBInterface.execute(
            db,
            """
            INSERT INTO history
            (operation, input1, input2, result)
            VALUES (?, ?, ?, ?)
            """,
            (operation, input1, input2, result)
        )
    end

    function show_history(db)
        rows = DBInterface.execute(db, "SELECT id, operation, input1, input2, result FROM history")
        println("\n=== Calculation History ===")

        for row in rows 
            input1 = ismissing(row.input1) ? "" : row.input1
            input2 = ismissing(row.input2) ? "" : row.input2

            println(
                row.id, ". ",
                row.operation, " | ",
                input1, " | ",
                input2, " | ",
                row.result
            )
        end

    end

    function clear_history(db)

        verify = true
        while verify
            printstyled("\n⚠️  ARE YOU SURE YOU WANT TO CLEAR THE HISTORY? ⚠️\n", color=:red, bold=true)
            println("enter yes or no to verify ===> ")
            cancel = readline()
            if cancel == "no"
                println("Operation Cancelled")
                verify = false

            elseif cancel == "yes"
                DBInterface.execute(db, "DELETE FROM history")
                printstyled("\nHistory cleared.\n", color=:yellow, bold=true)
                verify = false
            
            else 
                println("\ninvalid response\n")
            end
        end
    end
end