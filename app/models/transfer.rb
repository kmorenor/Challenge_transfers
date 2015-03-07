class Transfer < ActiveRecord::Base

  	belongs_to :sender, class_name: :User
  	belongs_to :receiver, class_name: :User

 	validates :amount, numericality: { :greater_than_or_equal_to => 0  }

	after_create  :update_balance
	before_update :prevent_update
	before_destroy :prevent_destroy

	protected
   def update_balance
		
		sender = self.sender 
		receiver = self.receiver
		sender.balance = sender.balance - amount
		receiver.balance = receiver.balance + amount
		sender.save
		receiver.save
		puts "The user´s balances has been updated"
	end

	def prevent_update
		puts "this action can´t bee procesed."
		return false
	end

	def prevent_destroy   
		puts "This transaction can´t be deleted."
		return false   
	end
end
