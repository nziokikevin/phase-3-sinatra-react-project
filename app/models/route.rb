class Route < ActiveRecord::Base
    has_many :drivers
    has_many :vehicles, through: :drivers
    has_many :saccos, through: :drivers
end