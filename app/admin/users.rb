ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :remember_created_at, :reset_password_sent_at, :reset_password_token, :role
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :remember_created_at, :reset_password_sent_at, :reset_password_token, :role]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

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
