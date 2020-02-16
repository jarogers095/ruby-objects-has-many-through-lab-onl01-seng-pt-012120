class Doctor
  @@all = []
  attr_accessor(:name)
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all()
    return @@all
  end
  
  def new_appointment(date, patient)
    return Appointment.new(date, patient, self)
  end
  
  def appointments()
    return Appointment.all.select{|app| app.doctor == self}
  end
  
  def patients()
    return Patient.all.selct{|patient| patient.doctor == self}
  end
end