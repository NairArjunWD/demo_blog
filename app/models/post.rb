class Post < ApplicationRecord

    validates :title, presence: true,
                    length: { minimum: 5 }

    # t.string :title

    # t.text :content
    
end
