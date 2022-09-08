class Sacco < ActiveRecord::Base
    has_many :vehicles
    has_many :drivers
    has_many :routes, through: :drivers
    has_many :owners, through: :vehicles
end