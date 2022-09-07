class Vehicle < ActiveRecord::Base
    belongs_to :sacco
    belongs_to :owner
    has_many :drivers
    has_many :routes, through: :drivers
end