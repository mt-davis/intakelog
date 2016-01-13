ActiveAdmin.register Account do
menu :priority => 2
permit_params :first_name, :last_name, :return_client, :program_id, :insurance_id, :address, :phone

 scope :all, :default => true
end

 #scope :program_id do |account|
 #   account.where(:program_id => 1)
 #end