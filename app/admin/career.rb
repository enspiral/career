ActiveAdmin.register Career do

  permit_params :full_name, :email, :phone_number, :attachment

  index do
    column :attachment do | career |
      link_to "show CVs", cv_careers_path if career.attachment?
    end

    column :full_name
    column :email
    column :phone_number
    actions
  end





  form :html => { :multipart=>true } do |f|
    f.inputs "Career" do
      f.input :attachment
      f.input  :full_name
      f.input  :email
      f.input  :phone_number
    end
    f.actions
  end

  show do
    attributes_table do

      row :attachment if career.attachment? do
        link_to(career.attachment_url)
      end
      row(:full_name)
      row(:email)
      row(:phone_number)
    end
  end

end
