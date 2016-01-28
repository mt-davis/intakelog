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
  actions
end
 scope :all, :default => true
 
 scope :adult, default: true do |accounts|
  accounts.program_name('adult')
end
end
