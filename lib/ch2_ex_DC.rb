class TodoOrganizer
  
  def initialize
    @index = []
    @todo_container = []
  end

  def add(task)
    if !(task.is_a? String) || task.empty?
      fail 'No text given'
    else
      @todo_container << task
      @index << @todo_container.index(task)
    end
  end

  def list
    return @todo_container
  end

  def complete(task)
    fail 'No such task' unless @todo_container.include? task
    @todo_container.delete(task)
  end
end