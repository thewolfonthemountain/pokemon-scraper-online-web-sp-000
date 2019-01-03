class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(number, db)
    pokemon = db.execute('SELECT * from pokemon where id = 1')
    binding.pry
#    id:id, name:name, type:type, db:db
  end
end
