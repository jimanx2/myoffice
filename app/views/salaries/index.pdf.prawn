prawn_document() do |pdf|
    pdf.text "i-Office Kau" 
    
    pdf.text "Salary Statement" 
  
    @employees = @salaries.each.map do |item| [
        item.name, item.employeenum, item.phonenum, item.address, item.email, item.salary_paid 
    ] end
            
    @employees.unshift ["Name","Employee ID","Mobile Phone","Address","Email", "Payment Status"]
    
    pdf.table @employees
end
