class Sacco < ActiveRecord::Base
    has_many :vehicles
    has_many :routes, through: :vehicles
end