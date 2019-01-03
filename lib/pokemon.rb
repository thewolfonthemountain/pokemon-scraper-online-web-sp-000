class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(number, db)
    ins = db.prepare('SELECT name, type FROM pokemon WHERE id = ?')
    ins2 = db.prepare('SELECT * FROM pokemon')
    binding.pry
    pokemon = ins.execute(number)
#    id:id, name:name, type:type, db:db
  end

end
