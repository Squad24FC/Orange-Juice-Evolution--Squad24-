class Track < ApplicationRecord
    has_many :enrollments
    has_many :users, through: :enrollments
    has_many :chapters
    has_many :subjects, through: :chapters
end
