#!/usr/bin/env ruby

def get_data url
    system "curl #{url} > out.json"
    buffer = (open "out.json").read
    buffer.delete! "azertyuiopqsdfghjklmwxcvbn:\t{}\""
    buffer = buffer.split ','
    for i in 0 .. 5
        buffer[i] = buffer[i].to_f
    end
    buffer
end
