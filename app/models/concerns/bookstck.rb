class Bookstck < ApplicationRecord
    validates :bookname, presence: true,length:{minimum: 2,maximum: 30}
    validates :bookauthor, presence: true,length:{minimum: 1,maximum: 50}
end