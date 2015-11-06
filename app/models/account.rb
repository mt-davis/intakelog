class Account < ActiveRecord::Base
    
    searchkick
    
    
    belongs_to :program
    belongs_to :insurance
    has_many :notes
    
    
    validates :first_name, :last_name, :address, :phone, presence: true
    validates :phone, format: { with: /\A\d{3} \d{3}-\d{4}\z/,
    message: "must be in the format 123 456-7890" }
end