class Book < ApplicationRecord

    has_many :pages
    has_many :chapters
end
