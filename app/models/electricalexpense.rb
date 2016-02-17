class Electricalexpense < ActiveRecord::Base
 validates :amount , presence: true
 validates :month , presence: true
end
