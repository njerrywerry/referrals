class Relationship < ActiveRecord::Base
  belongs_to :referrer, class_name: 'User'
  belongs_to :referral, class_name: 'User'
end
