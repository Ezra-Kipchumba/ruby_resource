# Create
user = User.create(name: "David", occupation: "Code Artist")

  #for a block
  user = User.new do |u|
    u.name = "David"
    u.occupation = "Code Artist"
  end


 # Read
# return a collection with all users
users = User.all


# find all users named David who are Code Artists and sort by created_at in reverse chronological order
users = User.where(name: 'David', occupation: 'Code Artist').order(created_at: :desc)


  # Update
user = User.find_by(name: 'David')
user.name = 'Dave'
user.save

# shorthand for this is to use a hash mapping attribute names to the desired value, like so:
user = User.find_by(name: 'David')
user.update(name: 'Dave')


    ##Delete
user = User.find_by(name: 'David')
user.destroy

# to delete several records in bulk, you may use destroy_by or destroy_all method:
# find and delete all users named David
User.destroy_by(name: 'David')

# delete all users
User.destroy_all





