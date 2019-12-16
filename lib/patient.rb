class Patient

attr_accessor :name, :appointment

  def initialize(name)
    @name = name
  end

  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end

end
