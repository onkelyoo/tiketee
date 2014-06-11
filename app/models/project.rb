class Project < ActiveRecord::Base
	validates :name, presence: true

	has_many :tickets, dependent: :delete_all # oder :nullify (Tickets werden nicht gelöscht, es wird lediglich die Project ID rausgenommen)
	# MySQL query: UPDATE tickets SET project_id = NULL WHERE project_id = :project_id
	# :destroy - der query dauert aber länger

end
