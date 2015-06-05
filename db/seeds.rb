# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
issuestat_pending = Issuestat.create(status: 'Pending')
issuestat_active = Issuestat.create(status: 'Active')
issuestat_resolved = Issuestat.create(status: 'Resolved')
Issue.create(issuestat_id: issuestat_pending.id,description: "Test",issueby_id:2,title: "test2")

Position.create([
    {:name => "Manager Finance", :code => "DG50", :eligibilityleave => "30"},
    {:name => "Manager Human Resource", :code => "DG53", :eligibilityleave => "25"},
    {:name => "Programmer", :code => "DG45", :eligibilityleave => "20"}
    
    ])



Department.create([
    {:name => "Manager Finance", :code => "DG50", },
    {:name => "Manager Human Resource", :code => "DG53"},
    {:name => "Programmer", :code => "DG45"}
    ])

Employee.create([
    {:name => "Hasmah", :employeenum => "123456", :phonenum => "017-9898965", :email => "saiful@yahoo.com", :address => "semalam punya address", :eligibilityleave => "yes"}
    ])

        

