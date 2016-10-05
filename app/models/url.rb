class Url < ApplicationRecord


  # added before create call back function
  # made sure that the random string is unique

  before_create :random_unique_string

  private
  def random_unique_string
    unique_string = SecureRandom.hex(3)
    while Url.find_by_short_url(unique_string)
      unique_string = SecureRandom.hex(3)
    end
    self.short_url = unique_string
  end
end
