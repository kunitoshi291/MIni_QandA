class Question < ApplicationRecord
    # has_many→他のモデルとの間に1対多のつながりがあることを証明
    hash_many :answers
    validates :title, presence: true
    validates :name, presence: true
    validates :content, presence: true, length: {minimum: 5}
end
