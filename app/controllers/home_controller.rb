class HomeController < ApplicationController
  def index
    @appointment = Appointment.new
    appointments_for_today = Appointment.for_today
    
    @new_patients_for_today_count = 0;
    appointments_for_today.each do |app|
      if app.is_first then @new_patients_for_today_count += 1 end
    end
      
      @appointments_for_today_count = appointments_for_today.count
  end

  def about

  end
end
