ActiveAdmin.register Salary do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :id, :rate_id, :date, :paymenttype_id, :paymentstat_id, :created_at, :updated_at, :employee_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
