class Rating < ActiveRecord::Base
  has_many :theaters
  has_many :movies,through: :theaters
end