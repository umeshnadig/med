class AddIsFirstAppointmentToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :is_first, :boolean
  end
end
