module PlotTools

using UnicodePlots

export plot_sequence

function plot_sequence(sequence, title)
    x = 1:length(sequence)
    y = Float64.(sequence)
    
    println(
        lineplot(
            x,
            y,
            title = title
        )
    )
end







end