class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)
  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(number, db)
    poke = db.execute('SELECT * FROM pokemon WHERE id = (?)', [number])
    new_poke = Pokemon.new(name: poke[1], id: poke[0], type: poke[2], db:db)
    binding.pry
    new_poke
  end
end
