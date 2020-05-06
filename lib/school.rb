
class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time
  end

  def is_full_time?
    hours_in_school_day >= 7
  end

  def add_student_names(name)
    student_names << name
  end

  def calc_end_time
    @end_time = @start_time.to_i + @hours_in_school_day
  end

  def convert_end_time_to_clocktime
    "#{@end_time.to_s}:00"
  end
end

### My Minitest would not run on my terminal. "It could not load such file"
### minitest is installed and I was in the correct directory I believe
### still getting used to pry. Took me a while to get a hang of that. Still feels weird though.
