class Doctor
  @@all = []
  attr_accessor(:name, :appointments, :patients)
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, patient)
    
  end
end