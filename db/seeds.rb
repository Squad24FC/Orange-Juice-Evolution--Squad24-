require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# =========== Tracks ===========

Track.create([{
            name: 'Fullstack Developer',
            thumb_url: 'https://picsum.photos/200',
            description: Faker::Lorem.sentence(word_count: 8,
                                                 supplemental: true,
                                                 random_words_to_add: 4)
                                                 }])

                                                 Track.create([{
            name: 'UI/UX',
            thumb_url: 'https://picsum.photos/200',
            description: Faker::Lorem.sentence(word_count: 8,
                                               supplemental: true,
                                               random_words_to_add: 4)
          }])

          Track.create([{
            name: 'Quality Assurance',
            thumb_url: 'https://picsum.photos/200',
            description: Faker::Lorem.sentence(word_count: 8,
              supplemental: true,
              random_words_to_add: 4)
              }])

# =========== Subjects ===========

20.times do
  Subject.create([{ name: Faker::Book.title }])
end
              # =========== Chapters ===========

10.times do
  Chapter.create([{
    name: Faker::Book.title,
                   thumb_url: 'https://picsum.photos/200',
                   track_id: rand(1..Track.all.count),
                   subject_id: rand(1..Subject.all.count)
                 }])
end


# =========== Lessons ===========

100.times do
  Lesson.create([{
    name: Faker::Book.title,
    lesson_type: rand(1..4),
    author: Faker::Book.author,
    duration: rand(3..120),
    source_url: Faker::Internet.url
    }])
  end
