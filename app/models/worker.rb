class Worker < ActiveRecord::Base
	belongs_to :category
	validates :name, presence: true, length: {minimum: 4, maximum: 50}
	validates :cnic, presence: true, length: {minimum: 13, maximum: 13}
	validates :phone, presence: true, length: {minimum: 11, maximum: 13}
	validates :city, presence: true, length: {minimum: 3, maximum: 25}
	validates :category_id, presence: true
end
1620255616031