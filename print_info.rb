#!/usr/bin/env ruby

def print_info buffer, all_data
    system "clear"
    puts "- #{all_data[0]} | frequency: #{all_data[2]}s -\n\n"
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
end
