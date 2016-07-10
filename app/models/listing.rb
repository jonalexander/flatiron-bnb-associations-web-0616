class Listing < ActiveRecord::Base
  has_many :reservations
  has_many :reviews, through: :guests
  has_many :guests, through: :reservations
  belongs_to :host, class_name: 'User' # host_id
  belongs_to :neighborhood  # neighborhood_id
end
