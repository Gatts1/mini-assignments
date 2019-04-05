class Pet < ApplicationRecord
  belongs_to :Owner
  validates : name, presence :true
  validates : description, presence :true
  validates : age, presence :true
end
