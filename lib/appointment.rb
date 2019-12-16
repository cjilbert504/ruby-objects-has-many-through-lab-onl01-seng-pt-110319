class Appointment

  attr_accessor :doctor, :patient

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
  end

end
