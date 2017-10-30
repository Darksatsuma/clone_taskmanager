class TaskView
  def initialize(tasks)
    @tasks = tasks
  end

  def print
    @tasks.each do |task|
      puts "ID:#{task[0]}\tDate: #{task[1]}\t\t| #{task[2]}"
    end
  end
end
