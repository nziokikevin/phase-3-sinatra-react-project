class Driver < ActiveRecord::Base
    belongs_to :route
    belongs_to :vehicle
end