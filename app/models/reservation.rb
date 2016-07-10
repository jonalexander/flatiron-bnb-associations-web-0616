class Reservation < ActiveRecord::Base
  belongs_to :trip, class_name: 'Reservation'
  belongs_to :guest, class_name: 'User'
  belongs_to :listing
end
