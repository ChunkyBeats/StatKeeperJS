class Maintenance < ActiveRecord::Base
  has_and_belongs_to_many(:trains)
  has_and_belongs_to_many(:workers)


end
