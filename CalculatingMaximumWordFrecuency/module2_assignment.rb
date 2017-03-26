class LineAnalyzer
  attr_accessor :highest_wf_count, :highest_wf_words, :content, :line_number
  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    @word_frecuency = Hash.new(0)
    @highest_wf_words = Array.new
    @highest_wf_count = highest_wf_count
    calculate_word_frequency()
  end
  def calculate_word_frequency()
    @content.downcase.split.each do |word|
      @word_frecuency[word] +=1
    end
    @word_frecuency.each { |k, v| @highest_wf_words.push(k) if v == @word_frecuency.values.max }
    @highest_wf_count = @word_frecuency.values.max
  end
end

class Solution
  attr_accessor :analyzers, :highest_count_across_lines, :highest_count_words_across_lines, :line_number

  def initialize()
    @analyzers = []
    @line_number = 0
    @highest_count_across_lines = highest_count_across_lines
    @highest_count_words_across_lines = highest_count_words_across_lines
  end
  def analyze_file()
    File.foreach( 'test.txt' ) do |line|
      @line_number +=1
      @analyzers.push(LineAnalyzer.new(line, line_number))
    end
  end
  def calculate_line_with_highest_frequency()
    @highest_count_across_lines = 0
    @highest_count_words_across_lines = Array.new
    @analyzers.each { |line| @highest_count_across_lines = line.highest_wf_count if line.highest_wf_count >= @highest_count_across_lines}
    @highest_count_words_across_lines = @analyzers.select { |line| line.highest_wf_count == @highest_count_across_lines}
  end
  def print_highest_word_frequency_across_lines()
    puts "The following words have the highest word frequency per line:"
    @analyzers.each { |lines| puts "#{lines.highest_wf_words} (appears in line #{lines.line_number})" }
  end
end
