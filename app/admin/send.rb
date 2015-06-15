ActiveAdmin.register Send do

  permit_params :full_name, :email, :messages

  index do
    column :full_name
    column :email
    column :messages
    actions
  end

  form :html => { :multipart=>true } do |f|
    f.inputs "Send" do
      f.input  :full_name
      f.input  :email
      f.input  :messages
    end
    f.actions
  end

  show do
    attributes_table do

      row(:full_name)
      row(:email)
      row(:messages)

    end
  end



end
