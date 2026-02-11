ActiveAdmin.register User do
  permit_params :email, :role, :password, :password_confirmation

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :role

      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
    end

    f.actions
  end
end