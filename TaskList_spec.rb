require 'rspec'
require_relative 'TaskList'

describe Task do
  # Story: As a developer, I can create a Task.
  it "is a thing" do
    expect{Task.new("clean","clean stuff")}.to_not raise_error
  end
#
# Story: As a developer, I can give a Task a title and retrieve it.
  it "has a title" do
    a_task = Task.new("clean","clean stuff")
    expect(a_task.title).to be_a String
  end

# Story: As a developer, I can give a Task a description and retrieve it.
  it "has a description" do
    a_task = Task.new("clean","clean stuff")
    expect(a_task.description).to be_a String
  end

# Story: As a developer, I can mark a Task done.
  it "marks a task done" do
    a_task = Task.new("clean","clean stuff")
    expect(a_task.mark).to be true
  end

# Story: As a developer, when I print a Task that is done, its status is shown.
  it "updates the status of task" do
    a_task = Task.new("clean","clean stuff")
    a_task.mark
    expect(a_task.status).to eq("DONE")
  end

end


describe TaskList do

  it "is a thing" do
    expect{TaskList.new}.to_not raise_error
  end

  # Story: As a developer, I can add all of my Tasks to a TaskList.
  # Hint: A TaskList has-many Tasks
  it "adds tasks to TaskList" do
    a_list = TaskList.new
    a_list.addTask("clean")
    expect(a_list.addTask("clean")).to start_with "clean"
  end

  # Story: As a developer with a TaskList, I can get the completed items.
  it "lists the completed tasks" do
    a_list = TaskList.new
    a_task = Task.new("clean","clean stuff")
    a_task.mark
    expect(a_list.completedTask(a_task)).to start_with a_task
  end

  # Story: As a developer with a TaskList, I can get the incomplete items.
  it "lists the incomplete tasks" do
    a_list = TaskList.new
    a_task = Task.new("clean","clean stuff")
    expect(a_list.incompleteTask(a_task)).to start_with a_task
  end
end
#
#
#


# Epic: Due Date
# Story: As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
# Hint: Use the built-in Ruby Date class
#
# Story: As a developer, I can print an item with a due date with labels and values.
# Hint: When implementing to_s, use super to call to_s on the super class.
#
# Story: As a developer, I can add items with due dates to my TaskList.
# Hint: Consider keeping items with due dates separate from the other items.
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
#
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
#
# Epic: Anniversary
# Story: As a developer, I can create a to do item for an anniversary (a yearly recurring event) .
# Hint: An Anniversary has a month and a day.
# Hint: An Anniversary is a special kind of DueDateTask where the due date changes depending on the current date (override the due_date method to return the next annivesary date).
#
# Story: As a developer, I can print an item for an anniversary with field labels and values.
#
# Story: As a developer with a TaskList with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month.
#
# Story: As a developer with a TaskList with a collection of items with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month, then the items without due dates.
