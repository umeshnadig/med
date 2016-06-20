class Appointment < ActiveRecord::Base
  belongs_to :patient
  validates :date, :time, presence: true
  
  def patient_name
    patient.full_name if patient
  end
  
  def patient_name=(name)
    self.patient = Patient.find_by_name(name) unless name.blank?
  end
  
end
