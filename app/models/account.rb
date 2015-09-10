class Account < ActiveRecord::Base
    belongs_to :program
    belongs_to :insurance
    has_many :notes
end