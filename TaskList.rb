class Task
  attr_accessor :title, :description, :done

  def initialize(title, description)
    @title = title
    @description = description
    @done = false
  end

  def mark
    @done = @done == true ? false : true
  end

  def status
    if @done == true
      p "DONE"
    end
  end


end

class TaskList
  attr_accessor :taskArr, :completedArr, :incompleteArr

   def initialize
    @taskArr = []
    @completedArr = []
    @incompleteArr = []
  end

  def addTask(task = Task.new(title, description))
    @taskArr << task
  end

  def completedTask(task)
    if task.done == true
      @completedArr << task
    end
  end

  def incompleteTask(task)
    if task.done == false
      @incompleteArr << task
    end
  end

end

new_task = Task.new('title', 'description')
another_task = Task.new('sweep', 'clean floor')


new_task.mark

tasklist = TaskList.new
p tasklist
p tasklist.addTask(new_task)
p tasklist.addTask(another_task)

p tasklist.completedTask(new_task)
p tasklist.completedTask(another_task)

p tasklist.incompleteTask(new_task)
p tasklist.incompleteTask(another_task)
