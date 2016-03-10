class Relationship < ActiveRecord::Base
  belongs_to :referrer, class_name: 'User'
  belongs_to :referral, class_name: 'User'

  validates :referrer_id, presence: true
  validates :referral_id, presence: true
end
