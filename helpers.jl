module Helpers
    using Printf
    
    export get_number
    export display_results

    function get_number(prompt)
        while true
            print(prompt)
            try
                return parse(Float64, readline())

            catch
                printstyled(" ☠️    ERROR   ☠️\nPlease Enter A Valid Number\n", color=:red, bold=true)
            end
        end
    end

   function display_results(prompt, result)

    if isfinite(result)

        formatted_result = @sprintf("%.2f", result)

        printstyled(
            "\n$(prompt)$(formatted_result)\n",
            color=:cyan,
            bold=true
        )

    else

        printstyled(
            "☠️ ERROR ☠️\nResult is too large or invalid\n",
            color=:red,
            bold=true
        )

    end
end



end