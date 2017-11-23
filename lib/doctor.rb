class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor = self unless appointment.doctor != nil
    @appointments << appointment
  end

  def patients
    self.appointments.map { |a| a.patient }.uniq
  end
end
