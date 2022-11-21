class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end
 
  def self.grades
    Student.all.order(grade: :desc).pluck(:first_name, :last_name, :grade).map do |student|
      {first_name: student[0], last_name: student[1], grade: student[2]}
    end
  end

  def self.highest_grade
    Student.all.order(grade: :desc).first
  end

end
