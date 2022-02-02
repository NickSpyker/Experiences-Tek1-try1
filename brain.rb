#!/usr/bin/env ruby

def play all_data, buffer, mm, mm_history, start, var, game, money, cash

    if mm > 0
        mm_history[var] = mm
        var += 1
    end
    if mm_history.size > 5
        if (mm_history[var] >= mm_history[var - 1] >= mm_history[var - 2] >= mm_history[var - 3])
            if (mm_history[var] - 5 < buffer[4] && buffer[4] < mm_history[var] + 5)
                cash += 100 if money >= 100
                game = "Bought..."
            end
        end
        if (mm_history[var] <= mm_history[var - 1] <= mm_history[var - 2] <= mm_history[var - 3]) && (mm_history[var] < buffer[4])
            game = "Wait..."
            money += 100
            cash = 0
        end
    end
    var

end
