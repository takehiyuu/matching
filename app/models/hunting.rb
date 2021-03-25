class Hunting < ApplicationRecord
     belongs_to :profile
     belongs_to :recruitment
     has_one :mating
end
