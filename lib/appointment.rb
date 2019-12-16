class Appointment

  attr_accessor :doctor, :patient, :date

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    self.all.select do |appt|
      appt.patient == self
    end
  end

end
