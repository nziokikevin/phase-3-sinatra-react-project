class Route < ActiveRecord::Base
    has_many :drivers
    has_many :vehicles, through: :drivers
end