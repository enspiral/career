ActiveAdmin.register Feedback do

  permit_params :email_address

  index do
    column :email_address
    actions
  end

  form :html => { :multipart=>true } do |f|
    f.inputs "Feedback" do
      f.input  :email_address
    end
    f.actions
  end

  show do
    attributes_table do

      row(:email_address)

    end
  end


end
