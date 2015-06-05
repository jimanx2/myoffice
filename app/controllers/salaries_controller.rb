class SalariesController < ApplicationController
    layout 'administrator'
    def index
        @salaries = Salary
        .select(
<<-SQL
            EMP.name, EMP.employeenum, EMP.phonenum, EMP.address, EMP.email,
            (CASE WHEN MAX(strftime('%m', "date")) = '#{Time.now.month.to_s.rjust(2, '0')}' THEN
                'PAID'
            ELSE
                'UNPAID'
            END) AS salary_paid
SQL
        )
        .joins('INNER JOIN employees EMP ON (EMP.id = salaries.employee_id)')
        .joins('INNER JOIN paymentstats PMS ON (PMS.id = salaries.paymentstat_id)')
        .joins('INNER JOIN rates RAT ON (RAT.id = salaries.rate_id)')
        .group('EMP.id')
        
        #
        
        #raise @salaries.to_sql
        
        respond_to do |format|
            format.html do
            end

            format.json do
                render json: @salaries
            end

            format.pdf do

            end

        end
    end
    
    
    def show
        @employee = Employee
        .joins('INNER JOIN salaries SAL ON (employees.id = SAL.employee_id)')
        .find_by_employeenum(params[:employeenum])
    end
        
    end



