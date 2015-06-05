class Runningnumber < ActiveRecord::Base
  def self.fetch(type)
    rn = find_by_rntype(type)
    count = rn.counter
    return "#{rn.code}#{count}"
  end
  
  def self.next(type)
    rn = find_by_rntype(type)
    count = rn.counter
    rn.counter+=1
    rn.save
    return "#{rn.code}#{count}"
  end
end
