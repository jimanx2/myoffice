ActiveAdmin.register Employee do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :id, :name, :employeenum, :department_id, :position_id, :phonenum,
    :email, :address, :eligibilityleave, :created_at, :updated_at, :salary_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
