require 'pry'

class Doctor 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self
  end 
  
  def new_appointment(patient, date)
     appointment = Appointment.new(date, patient, self)
  end 
  
  
   
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end 
  end 
    
    def patients
      self.appointments.collect do |appointment|
        appointment.patient 
      end 
        
   # array_patients = []
    #Appointment.all.each do |appointment|
   #   if appointment.doctor == self 
   #     array_patients << appointment.patient
   #   end 
   # end
  #  array_patients.uniq 
  end
  
  
  def self.all 
    @@all 
  end 

end 
