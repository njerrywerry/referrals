class User < ActiveRecord::Base
  validates :phone_number, uniqueness: true, presence: true

  has_many :referral_relationships, class_name: 'Relationship', foreign_key: 'referrer_id'
  has_many :referrals, through: referral_relationships

  has_one :referrer_relationship, class_name: 'Relationship', foreign_key: 'referral_id'
  has_one :referrer, through: referrer_relationship
end
