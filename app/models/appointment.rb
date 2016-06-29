class Appointment < ActiveRecord::Base
  before_save :build_patient, :on => :create
  belongs_to :patient
  validates :date, :time, presence: true
  attr_accessor :patient_name

  after_initialize do |appointment|
      appointment.date = Date.today + 1
      appointment.time = Time.parse("8:00")
  end

  def patient_name
    @patient_name || (if patient.present? then patient.full_name end)
  end

  def build_patient
    if self.is_first
      puts "first time patient"
      puts self.patient_name
      self.patient_id = Patient.create({:first_name => @patient_name}).id;
    end
  end
end
