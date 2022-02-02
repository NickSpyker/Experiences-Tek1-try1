#!/usr/bin/env ruby

def print_mm mm, data_mm
    print "|-> mm 20 data: "
    for i in 1 .. 20
        print "#{data_mm[i]} "
    end
    print "\n"
    puts "|-> mm = #{mm}"
end

def print_into_screen buffer
    time = Time.new
    var1 = "open: #{buffer[1]}"
    var2 = "hight: #{buffer[2]}"
    var3 = "low: #{buffer[3]}"
    var4 = "close: #{buffer[4]}"
    var5 = "volume: #{buffer[5]}"
    system "echo '#{time.hour}h#{time.min} #{time.sec}s \t >> #{var1} | #{var2} | #{var3} | #{var4} | #{var5}' >> screen.txt"
end

def print_info buffer, all_data
    system "clear"
    print_into_screen(buffer)
    system "cat screen.txt"
    print "\n"
    print_in_color("  ///|  Data  |///", "cyan", true)
    print_in_color("   open:   ", "green", false)
    print_in_color(buffer[1], "red", true)
    print_in_color("   hight:  ", "green", false)
    print_in_color(buffer[2], "red", true)
    print_in_color("   low:    ", "green", false)
    print_in_color(buffer[3], "red", true)
    print_in_color("   close:  ", "green", false)
    print_in_color(buffer[4], "red", true)
    print_in_color("   volume: ", "green", false)
    print_in_color(buffer[5], "red", true)
    print_in_color("  ///| Finish |///", "cyan", true)
    print "\n"
    puts "- #{all_data[0]} | frequency: #{all_data[2]}s -\n\n"
end
