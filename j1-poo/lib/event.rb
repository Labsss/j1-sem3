require 'pry'

class Event
	attr_accessor :start_date, :duree, :nom, :participants

	def initialize(start_date_to_rdv, duree_rdv, nom_rdv, participants_rdv)
		@start_date = Time.parse(start_date_to_rdv)
		@duree = duree_rdv
		@nom = nom_rdv
		@participants = participants_rdv
	end

	def postpone_24h
		@start_date = @start_date + 86400
	end

	def end_date
		@end_date = @start_date + @duree
	end

	def is_past?
		if @start_date < Time.now
			return true
		else 
			return false
		end
	end

	def is_future?
		!self.is_past?
	end 

 #	def is_future?                    # Autre manière de trouver l'opposé de "is_past?"
 #		if @start_date > Time.now
 #			return true
 #		else 
 #			return false 
 #		end
 #	end

	def is_soon?
		if @start_date < Time.now + 1800
			return "RDV dans 30 minutes"
		else
			return "Nope"
		end
	end

	def to_s
    puts "Évènement : #{@nom}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@duree} minutes"
    print "Participants : "
		puts participants.join(", ")
	end

end