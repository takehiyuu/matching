class Hunting < ApplicationRecord
     has_one :profile
     belongs_to :recruitment
end
