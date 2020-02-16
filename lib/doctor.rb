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
  
  def new_appointment(patient, date)
    return Appointment.new(patient, date)
    
  end
end