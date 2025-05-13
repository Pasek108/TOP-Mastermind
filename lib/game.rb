require 'colorize'

def get_code_from_user
  print ' ('
  print 'R'.colorize(:color => :red)
  print ', '
  print 'G'.colorize(:color => :green)
  print ', '
  print 'B'.colorize(:color => :blue)
  print ', '
  print 'Y'.colorize(:color => :yellow)
  print ', '
  print 'M'.colorize(:color => :magenta)
  print ', '
  print 'C'.colorize(:color => :cyan)
  puts '): '

  colors = gets.chomp.upcase

  if colors.length != 4 || !colors.count('^RGBYMC').zero?
    puts 'Non-existent color'
    colors = get_code_from_user
  end

  colors
end

def guess_colors(possible_codes, code_colors)
  guess = possible_codes[Random.rand(possible_codes.length)]
  feedback = get_real_feedback(code_colors, guess)

  possible_codes.filter! do |possible_code|
    possible_feedback = get_real_feedback(possible_code, guess)
    possible_feedback[0] == feedback[0] && possible_feedback[1] == feedback[1]
  end

  guess
end

def get_user_feedback
  feedback = gets.chomp.upcase

  if feedback.length > 4 || !feedback.count('^RW ').zero?
    puts 'Non-existent color'
    feedback = get_user_feedback
  end

  [feedback.count('R'), feedback.count('W')]
end

def get_real_feedback(colors, guessed_code)
  checked_colors = []
  correct = check_correct(colors, guessed_code, checked_colors)
  wrong = check_wrong(colors, guessed_code, checked_colors)

  [correct, wrong]
end

def print_feedback(correct, wrong)
  correct.times do
    print ' '.colorize(:background => :red)
    print ' '
  end

  wrong.times do
    print ' '.colorize(:background => :white)
    print ' '
  end
end

def check_correct(colors, guessed_code, checked_colors)
  correct = 0

  guessed_code.split('').each_with_index do |guessed_color, i|
    if guessed_color == colors[i]
      correct += 1
      checked_colors.push(guessed_color)
    end
  end

  correct
end

def check_wrong(colors, guessed_code, checked_colors)
  wrong = 0

  guessed_code.split('').each_with_index do |guessed_color, i|
    if !checked_colors.include?(guessed_color) && colors.split('').include?(guessed_color)
      wrong += 1
      checked_colors.push(guessed_color)
    end
  end

  wrong
end

def print_code(code)
  code.split('').each do |color|
    case color
    when 'R' then print 'R'.colorize(:color => :red)
    when 'G' then print 'G'.colorize(:color => :green)
    when 'B' then print 'B'.colorize(:color => :blue)
    when 'Y' then print 'Y'.colorize(:color => :yellow)
    when 'M' then print 'M'.colorize(:color => :magenta)
    when 'C' then print 'C'.colorize(:color => :cyan)
    end
  end
end
