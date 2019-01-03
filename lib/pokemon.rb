class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(number, db)
    poke = db.prepare('SELECT * from pokemon where id = (?)')
    pokemon = poke.execute(number)
    binding.pry
#    id:id, name:name, type:type, db:db
  end
end
