class Chapter < ApplicationRecord
    belongs_to :track
    has_many :subjects
end
