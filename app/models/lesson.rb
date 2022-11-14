class Lesson < ApplicationRecord
    belongs_to :subject
    enum lesson_type: { Artigo: 0, Glossário: 1, Apostila: 2, Livro: 3, Vídeo: 4, Live: 5, Curso: 6, Podcast: 7 }
end
