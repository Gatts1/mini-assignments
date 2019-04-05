class Owner < ApplicationRecord
  validates :owner_birthday, :owner_name, presence: true
  #validates :owner_name, presence: true
  validate :mayorDeEdad
  
def mayorDeEdad
  if owner_birthday > 18.year.ago
      errors.add(:owner_birthday, 'gvhgvgj')
  end
end

end

#Para hacer prueba
#obj1 = Owner.create(owner_name:'Jona', owner_birthday:'10/12/1989')
