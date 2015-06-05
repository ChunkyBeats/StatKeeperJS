class Train < ActiveRecord::Base
  has_and_belongs_to_many(:maintenances)
  has_and_belongs_to_many(:workers)
end
