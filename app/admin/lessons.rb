ActiveAdmin.register Lesson do
  permit_params :title, :content, :position, :free, :course_id
end