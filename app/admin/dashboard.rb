ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
  #  div class: "blank_slate_container", id: "dashboard_default_message" do
   #   span class: "blank_slate" do
        #span I18n.t("active_admin.dashboard_welcome.welcome")
        #small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    #end
  columns do

      column do
    
         #div :class => "column" do
         panel "Info For Popsicle Application" do
           div do
           para "Welcome to Intake Admin dashbaord. This version of the dasboard is still in development."
        end
       end
     end
    
    #columns do
      div :class => "column" do
    columns do
      panel "Last 5 Clients Created" do
      table_for Account.order('created_at desc').limit(10) do
        column :first_name do |account|
        link_to account.first_name, [:admin, account]
      end
        column :last_name
        column "Phone Number", :phone
        column :created_at
      end
      strong { link_to "View All Clients", admin_accounts_path }
    end #colums
  end
end
    
    
  #column do
  div :class => "column" do
      columns do
        div :class => "column" do
        
      end
    end
  end
  div :class => "column" do
      columns do
        div :class => "column" do
        
        end
      end
    end
  end
end
end