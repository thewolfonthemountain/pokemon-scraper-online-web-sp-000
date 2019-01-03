class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)
#    @id = id:
#    @name = name:
#    @type = type:
#    @db = db:
  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(number, db)
    poke = db.execute('SELECT * FROM pokemon WHERE id = (?)', [number])
    Pokemon.new (id:poke[0], name:poke[1], type:poke[2])
  end
end
