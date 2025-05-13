require_relative 'game'

print 'Do you want to be a guesser? (Y/N): '
is_player_a_guesser = gets.chomp.upcase == 'Y'

if is_player_a_guesser
  colors = %w[R G B Y M C]
  random_code = Array.new(4) { colors[Random.rand(6)] }.join('')
  guessed_code = ''

  number_of_tries = 0

  while number_of_tries < 12 && random_code != guessed_code
    number_of_tries += 1

    print "Try ##{number_of_tries}. Guess 4 colors"
    guessed_code = get_code_from_user

    feedback = get_real_feedback(random_code, guessed_code)
    print_feedback(feedback[0], feedback[1])
    puts ''
  end

  print number_of_tries >= 12 ? 'You lose. ' : "You win in #{number_of_tries} tries. "
  print 'The code was: '
  print_code(random_code)
  puts ''
else
  print 'Input 4 colors'
  code_colors = get_code_from_user

  colors = %w[R G B Y M C]
  possible_codes = colors.repeated_permutation(4).to_a.map { |code| code.join('') }
  guessed_code = ''
  number_of_tries = 0

  while number_of_tries < 12 && code_colors != guessed_code
    number_of_tries += 1
    guessed_code = guess_colors(possible_codes, code_colors)

    puts "Try ##{number_of_tries}."
    print 'Give the feedback on the answer ('
    print 'R'.colorize(:color => :red)
    print ' - color on correct postion, '
    print 'W'.colorize(:color => :white)
    print ' - color on wrong postion'
    puts ') '

    print_code(code_colors)
    puts ' <- your code'
    print_code(guessed_code)
    puts ' <- guessed code'

    correct_feedback = get_real_feedback(code_colors, guessed_code)
    user_feedback = get_user_feedback

    while user_feedback.join('') != correct_feedback.join('')
      puts 'Incorrect feedback'
      user_feedback = get_user_feedback
    end
  end

  puts number_of_tries >= 12 ? 'You win. ' : "Codebreaker win in #{number_of_tries} tries. "
end
