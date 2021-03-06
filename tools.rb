#!/usr/bin/env ruby

def print_in_color text, color, line_break
    color = "\033[0;30m" if color == 'black'
    color = "\033[0;31m" if color == 'red'
    color = "\033[0;32m" if color == 'green'
    color = "\033[0;33m" if color == 'yellow'
    color = "\033[0;34m" if color == 'blue'
    color = "\033[0;35m" if color == 'purple'
    color = "\033[0;36m" if color == 'cyan'
    color = "\033[0;37m" if color == 'white'
    printf("#{color}");
    if !line_break
        print text
    else
        puts  text
    end
    printf("\033[0m");
end
