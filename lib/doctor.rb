class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name #has a name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments #returns all appointments associated with this Doctor
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def new_appointment(patient, date) #given a date and a patient, creates a new appointment
        Appointment.new(date, patient, self)
    end

    def patients #has many patients, through appointments
        appointments.map do |appointment|
            appointment.patient
        end
    end

end


