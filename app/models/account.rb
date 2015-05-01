class Account < ActiveRecord::Base
    belongs_to :program
    has_many :notes
end