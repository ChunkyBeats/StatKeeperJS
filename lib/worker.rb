class Worker < ActiveRecord::Base
  has_and_belongs_to_many(:trains)
  has_many(:maintenances)
  has_one(:bays)
  
end