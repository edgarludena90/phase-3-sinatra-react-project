class Movie < ActiveRecord::Base
  has_many :theaters
  has_many :ratings, through: :theaters

end
 