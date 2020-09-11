class Post < ApplicationRecord

    has_many :comments

    validates :title, presence: true,
                    length: { minimum: 5 }

    # t.string :title

    # t.text :content
    
end
