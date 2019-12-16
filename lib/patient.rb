class Patient

attr_accessor :name

  def initialize(name)
    @name = name
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end

end
