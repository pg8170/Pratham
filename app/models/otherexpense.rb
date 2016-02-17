class Otherexpense < ActiveRecord::Base
validates :amount , presence: true
validates :month , presence: true
validates :description, presence: true
end
