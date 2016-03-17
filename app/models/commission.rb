class Commission < ActiveRecord::Base
  belongs_to :relationship

  default_value_for :commission_rate, 0.03
end
