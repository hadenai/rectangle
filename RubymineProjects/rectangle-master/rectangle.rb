
x = ARGV[0].to_i
y = ARGV[1].to_i
@style = ARGV[2].to_i

def first_line(x)
  if @style == 1
    first_lines_begin = ["A"]
    first_lines_end = ["B"]
  elsif @style == 2
    first_lines_begin = [ "1"]
    first_lines_end = ["2"]
  elsif @style == 3
    first_lines_begin = [ "/"]
    first_lines_end = ["/"]
  end
  content_of_lines = ["-"]
  (first_lines_begin + content_of_lines * x) + first_lines_end
end

def middle_lines(y)
  if @style == 1
    middle_lines_begin = ["-"]
    middle_lines_end = ["-"]
  elsif @style == 2
    middle_lines_begin = ["."]
    middle_lines_end = ["."]
  elsif @style == 3
    middle_lines_begin = ["*"]
    middle_lines_end = ["*"]
  end
  content_of_lines = [" "]
  (middle_lines_begin + content_of_lines * y) + middle_lines_end
end

def end_line(y)
  if @style == 1
    end_line_begin = ["C"]
    end_line_last = ["D"]
  elsif @style == 2
    end_line_begin = ["3"]
    end_line_last = ["4"]
  elsif @style == 3
    end_line_begin = ["\\"]
    end_line_last = ["\\"]
  end
  content_of_lines = ["-"]
  (end_line_begin + content_of_lines * y) + end_line_last
end

def all_it_egal
  if @style == 1
    result = ["A"]
  elsif @style == 2
    result = [ "1"]
  elsif @style == 3
    result = [ "/"]
  end
end

def calculate_rectangle(x, y)
  if x == 1 && x == 1
    puts all_it_egal*" "
  else
    if x == 1
      puts end_line(y)*" "
    elsif y == 1
      puts first_line(x)*" "
    else
      puts first_line(x)*" "
      for i in 0...y
        puts middle_lines(y)*" "
      end
      puts end_line(y)*" "
    end
  end
end

calculate_rectangle(x, y)
