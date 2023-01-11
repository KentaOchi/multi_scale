#!/home/kenta/bin/env ruby
require 'thor'
#require 'split'

def mat(score_t, score_se, score_em)
  if score_t >= 220.8 then
    puts "good"
  else
    puts "fail"
  end
  if score_se >= 220.0 then
    puts "good"
  else
    puts "fail"
  end
  if score_em >= 198.0 then
    puts "good"
  else
    puts "fail"
  end
end

def ele(score_t, score_se, score_em)
  if score_t >= 220.2 then
    puts "good"
  else
    puts "fail"
  end
  if score_se >= 230.0 then
    puts "good"
  else
    puts "fail"
  end
  if score_em >= 229.0 then
    puts "good"
  else
    puts "fail"
  end
end

def pro(score_t, score_se, score_em)
  if score_t >= 263.3 then
    puts "good"
  else
    puts "fail"
  end
  if score_se >= 263.0 then
    puts "good"
  else
    puts "fail"
  end
  if score_em >= 285.0 then
    puts "good"
  else
    puts "fail"
  end
end

def art(score_t, score_se, score_em)
  if score_t >= 242.4 then
    puts "good"
  else
    puts "fail"
  end
  if score_se >= 242.6 then
    puts "good"
  else
    puts "fail"
  end
  if score_em >= 279.0 then
    puts "good"
  else
    puts "fail"
  end
end


class JoA < Thor
  
  class_option :help, :type => :boolean, :aliases => '-H', :desc => 'Help message.'
  
  desc "[English] [mathematics] [science]", "Secondly, please enter the score for each subject."

  def material
    line = STDIN.gets.chomp.split(' ').map(&:to_i)
    score_t = (line[0] + line[1] + line[2]) * 1.5
    score_se = line[0] + line[1] * 1.5 + line[2] * 2
    score_em = (line[0] + line[1]) * 2
    mat score_t, score_se, score_em
  end

  desc "[English] [mathematics] [science]", "Secondly, please enter the score for each subject."

  def electrical
    line = STDIN.gets.chomp.split(' ').map(&:to_i)
    score_t = (line[0] + line[1] + line[2]) * 1.5
    score_se = line[0] + line[1] * 1.5 + line[2] * 2
    score_em = (line[0] + line[1]) * 2
    ele score_t, score_se, score_em
  end

  desc "[English] [mathematics] [science]", "Secondly, please enter the score for each subject."

  def program
    line = STDIN.gets.chomp.split(' ').map(&:to_i)
    score_t = (line[0] + line[1] + line[2]) * 1.5
    score_se = line[0] + line[1] * 1.5 + line[2] * 2
    score_em = (line[0] + line[1]) * 2
    pro score_t, score_se, score_em
  end

  desc "[course]", "Firstly, which course do you want to pass, material, electrical, program, or artificial?"

  def artificial
    line = STDIN.gets.chomp.split(' ').map(&:to_i)
    score_t = (line[0] + line[1] + line[2]) * 1.5
    score_se = line[0] + line[1] * 1.5 + line[2] * 2
    score_em = (line[0] + line[1]) * 2
    art score_t, score_se, score_em
  end

end

JoA.start