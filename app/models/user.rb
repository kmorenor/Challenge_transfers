class User < ActiveRecord::Base
	has_many :send_transfers, class_name: :Transfer, foreign_key: :sender_id
	has_many :received_transfers, class_name: :Transfer, foreign_key: :receiver_id  
end
