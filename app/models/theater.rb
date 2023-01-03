class Theater < ActiveRecord::Base
  belongs_to :rating
  belongs_to :movie
end