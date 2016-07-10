class User < ActiveRecord::Base
  #host
  belongs_to :host, class_name: 'User'
  has_many :listings, foreign_key: 'host_id'
  has_many :reservations, through: :listings

  #guest
  belongs_to :guest, class_name: 'User'
  has_many :trips, class_name: 'Reservation', :foreign_key => 'guest_id'
  has_many :reviews, foreign_key: 'guest_id'
end
