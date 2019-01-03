class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(number, db)
    pokemon = db.execute('SELECT * FROM pokemon WHERE id = (?)', [number])
    @id = pokemon[0]
    @name = pokemon[1]
    @type = pokemon[2]
  end
end
