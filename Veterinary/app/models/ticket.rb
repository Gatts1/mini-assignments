class Ticket < ApplicationRecord
  belongs_to :Pet
  belongs_to :Service
end
