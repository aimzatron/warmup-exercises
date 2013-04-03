class School
  attr_accessor :db

  def initialize(school)
    @school = school
    @db = {}
  end

  def add(student, grade)
    if @db[grade] == nil
      @db[grade] = []
    end
      db[grade] << student
  end

  def grade(grade_number)
    db[grade_number].sort_by{grade}
  end

  def sort
   db.sort_by{ |grade, student| student}
  end

end
