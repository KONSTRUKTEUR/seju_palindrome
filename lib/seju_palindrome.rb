# frozen_string_literal: true

require_relative "seju_palindrome/version"

class String

  # Returns true for a palindorme, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private
  
    # Returns content for palindorme testing.
    def processed_content
      letterRegEx = /[a-z]/i
      self.scan(letterRegEx).join.downcase
    end
end
