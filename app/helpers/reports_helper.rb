module ReportsHelper

  def avg_time(checks)
    if checks.size > 0 
        avg = checks.size 
        avg_minutes = checks.map do |p|
        hour, minute = p.hour.strftime('%H:%M').to_s.split(':')
        total_minutes = hour.to_i * 60 + minute.to_i
        end.inject(:+)/avg
        "#{avg_minutes/60}:#{avg_minutes%60}"
    end
  end

  def absences(checkins,employees)
    absences = Array.new
    employees.each do |e|
      count = 0
      checkins.each do |c|
        if e.id == c.employees_id
          count +=1
        end
      end
      if count == 0
        absences.push(e)
      end
    end
    absences
  end
  

end
