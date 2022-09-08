class Owner < ActiveRecord::Base
    has_many :vehicles
    has_many :drivers, through: :vehicles
    has_many :saccos, through: :vehicles
end