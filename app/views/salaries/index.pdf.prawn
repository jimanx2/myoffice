prawn_document() do |pdf|
    pdf.text "i-Office Kau" 
    
    pdf.text "Salary Statement" 
  
    
          @employees = @salaries.each.map do |item| [item.name]
        end
        
        
          @employees = @salaries.each.map do |item| [item.employee_id]
        end
        
          @employees = @salaries.each.map do |item| [item.phonenum]
        end
        
          @employees = @salaries.each.map do |item| [item.address]
        end
        
          @employees = @salaries.each.map do |item| [item.email]
        end
        
        
        
    @employees.unshift ["Name"]
    
    @employees.unshift ["Employee ID"]
    
    @employees.unshift ["Mobile Phone"]
    
    @employees.unshift ["Address"]
    
    @employees.unshift ["Email"]
    
    
    pdf.table @employees
end
