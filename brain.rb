#!/usr/bin/env ruby

def play all_data, buffer, mm, mm_history, start, var, game, money, cash, door

    if mm > 0
        mm_history[var] = mm
        var += 1
    end
    if mm_history.size > 5
        if (mm_history[var] >= mm_history[var - 1] >= mm_history[var - 2] >= mm_history[var - 3])
            if (buffer[4] > mm) && (door == -1)
                cash += buffer[4] if money >= buffer[4]
                money -= buffer[4]
                game = "Bought..."
            end
        end
        if (mm_history[var] <= mm_history[var - 1] <= mm_history[var - 2] <= mm_history[var - 3]) && ((buffer[4] < mm) && (door == 1))
            game = "Wait..."
            money += buffer[4]
            cash = 0
        end
    else
        if mm < buffer[4]
            door = -1
        else
            door = 1
        end
    end
    var

end
