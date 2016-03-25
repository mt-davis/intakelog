class Account < ActiveRecord::Base
    
    searchkick
    
    
    belongs_to :program
    belongs_to :insurance
    has_many :notes
    belongs_to :referred
    
    #Refactoring with the Null Object Pattern
    def referred
        super || Referred.new
    end
    #
    
    
    validates :first_name, :last_name, :address, :phone, presence: true
    validates :phone, format: { with: /\A\d{3} \d{3}-\d{4}\z/,
    message: "must be in the format 123 456-7890" }
end
