class Patient

    attr_accessor :name

    @@all = [] #knows about all patients

    def initialize(name) #initializes with a name
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date) #given a doctor and date, creates a new appointment belonging to that patient
        Appointment.new(date, self, doctor)
    end

    def self.all #knows about all patients
        @@all
    end

    def appointments #returns all appointments associated with Patient
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors #has many doctors through appointments
        appointments.map do |appointment|
            appointment.doctor
        end
    end

end
