class Comedian < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :comedians_users
  has_and_belongs_to_many :events, :join_table => :comedians_events

  def self.not_fave(user)
    includes(:enrollments).
      references(:enrollments).
      where.not(enrollments: { student_id: student.id })
  end

  # def faved?
  #   faved_at != nil
  # end

  # def fave
  #   self.faved_at = Time.now
  # end

  # def fave!
  #   fave
  #   save!
  # end

  # def unfave
  #   self.faved_at = nil
  # end

  # def unfave!
  #   unfave
  #   save!
  # end

end
