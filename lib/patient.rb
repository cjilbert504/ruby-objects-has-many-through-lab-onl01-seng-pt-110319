class Patient

attr_accessor :name

  def initialize(name)
    @name = name
  end

  def appointments

  end

  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end

end
