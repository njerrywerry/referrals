class Tip < ActiveRecord::Base
  default_value_for :commission_rate, 0.03

  belongs_to :user
end
