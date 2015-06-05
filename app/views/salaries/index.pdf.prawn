prawn_document() do |pdf|
    pdf.text "i-Office Kau"
    
    pdf.text "Salary Statement"
    
    @employees = @employees.each.map do |item| [item.name, item.employeenum, item.phonenum, item.address, item.email]
        end
        
    @employees.unshift ["Name", "Employee Number", "Mobile Phone", "Address", "Email"]
    pdf.table @employees
end