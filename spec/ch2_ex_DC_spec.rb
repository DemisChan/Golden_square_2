require "ch2_ex_DC"

RSpec.describe TodoOrganizer do
  context "create class instance and have empty container returned" do
    it "initialize TodoOrganizer" do
      todo_tasks = TodoOrganizer.new
      expect(todo_tasks).to be_a Object
    end

    it "return empty list" do
      todo_tasks = TodoOrganizer.new
      expect(todo_tasks.list).to eq []
    end
  end

  it 'fails' do
    todo_tasks = TodoOrganizer.new
    expect { todo_tasks.add('') }.to raise_error 'No text given'
  end

  context 'Add todo to the list and update it, if deleted from list also update' do
    it 'adds todo to the list' do
      todo_tasks = TodoOrganizer.new
      todo_tasks.add('Finish Challenge 9')
      expect(todo_tasks.list).to eq ['Finish Challenge 9']
    end

    it 'more additions' do
      todo_tasks = TodoOrganizer.new
      todo_tasks.add('Finish Challenge 9')
      todo_tasks.add('Pair with Victor')
      todo_tasks.add('Pair with Victor')
      expect(todo_tasks.list).to eq ['Finish Challenge 9', 'Pair with Victor', 'Pair with Victor']
    end

    it 'deletes todo from list if there' do
      todo_tasks = TodoOrganizer.new
      todo_tasks.add('Finish Challenge 9')
      todo_tasks.add('Pair with Victor')
      todo_tasks.add('Pair with Victor')
      todo_tasks.complete('Pair with Victor')
      expect(todo_tasks.list).to eq ['Finish Challenge 9']
    end
  end
end
