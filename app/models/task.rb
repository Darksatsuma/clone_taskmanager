class Task < BaseModel
  def initialize(params)
    @date = parsed_date(params[:date])
    @text = params[:text]
  end

  def parsed_date(date)
    if date == 'today'
      Date.today
    elsif date == 'tomorrow'
      Date.today + 1.days
    end.strftime("%d-%m-%Y")
  end

  def self.all
    db.execute("SELECT * FROM tasks;")
  end
end
