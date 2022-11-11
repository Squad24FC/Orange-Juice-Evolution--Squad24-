class Track < ApplicationRecord
    has_many :enrollments
    has_many :chapters
end
