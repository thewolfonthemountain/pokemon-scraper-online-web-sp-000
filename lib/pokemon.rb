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
    pokemon = db.execute('SELECT * FROM pokemon WHERE id = (?)', [number])
    new(pokemon)
  end
end
