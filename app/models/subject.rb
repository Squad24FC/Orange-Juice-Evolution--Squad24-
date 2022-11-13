class Subject < ApplicationRecord
    belongs_to :chapter
    has_many :lessons
end
