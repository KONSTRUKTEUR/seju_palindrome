# frozen_string_literal: true

require_relative "seju_palindrome/version"

class String

  # Returns true for a palindorme, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Return the letter in a string
  def letters
    self.chars.select { |c| c.match(/[a-z]/i) }.join
  end

  private
  
    # Returns content for palindorme testing.
    def processed_content
      self.scan(/[a-z]/i).join.downcase

    end
end
