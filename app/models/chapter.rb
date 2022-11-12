class Chapter < ApplicationRecord
    has_many :track
    has_many :subjects
end
