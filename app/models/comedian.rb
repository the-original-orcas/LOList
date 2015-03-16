class Comedian < ActiveRecord::Base
	has_and_belongs_to_many :users, :join_table => :comedians_users
	has_and_belongs_to_many :events, :join_table => :comedians_events

	def self.not_fave(user)
    includes(:enrollments).
      references(:enrollments).
      where.not(enrollments: { student_id: student.id })
  end
end
