class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = [] #knows about all appointments that have been created

    def initialize(date, patient, doctor) #initializes with a date, patient, and doctor
        @date = date
        @patient = patient #belongs to a patient
        @doctor = doctor #belongs to a doctor
        @@all << self
    end

    def self.all #knows about all appointments that have been created 
        @@all
    end

end
