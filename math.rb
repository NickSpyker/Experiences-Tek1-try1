#!/usr/bin/env ruby

def get_mm_20 tab

    value = -1
    if tab[0]
        for i in 1 .. 20
            value += tab[i]
        end
        value /= 20
        value
    else
        value
    end

end

def fill_data_mm data_mm, buffer
    var = buffer[4]
    if !data_mm[0]
        j = 1
        while data_mm[j] != 0 && j < 21
            j += 1
        end
        if j >= 20
            data_mm[0] = true
        end
        data_mm[j] = var
    elsif data_mm[0]
        for i in 1 .. 19
            data_mm[i] = data_mm[i + 1]
        end
        data_mm[20] = var
    end
    data_mm
end
