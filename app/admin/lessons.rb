ActiveAdmin.register Lesson do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :content, :course_id, :free, :position, :title
  #
  # or
  #
  # permit_params do
  #   permitted = [:content, :course_id, :free, :position, :title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :title, :content, :position, :free, :course_id
  
end
