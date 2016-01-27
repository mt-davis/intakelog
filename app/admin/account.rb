ActiveAdmin.register Account do
menu :priority => 2
permit_params :first_name, :last_name, :return_client, :program_id, :insurance_id, :address, :phone

index do
  column :first_name
  column :last_name
  column :address
  column :phone
  column :created_at
  column :return_client
  column :program
  column :insurance
end
 scope :all, :default => true
end

 #scope :program_id do |account|
 #   account.where(:program_id => 1)
 #end