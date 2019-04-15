class Patient 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self 
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient = self
    end 
  end 
  
   def new_appointment(doctor, date)
     appointment = Appointment.new(date, self, doctor)
  end 
  
  
  def self.all
    @@all 
  end 
  
  def doctors
    
    self.appointments.collect do |appointment|
      appointment.doctor 
    end 
    
   # array_docs = []
  #  Appointment.all.each do |appointment|
  #    if appointment.patient == self 
  #      array_docs << appointment.doctor 
  #    end 
  #  end
  #  array_docs.uniq 
  end
  
 
 end 

    