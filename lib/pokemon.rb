class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    balls = ins.execute(name, type)
    binding.pry
  end

  def self.find(number, db)
    sel = db.prepare('SELECT * from pokemon where id = (?)')
    pokemon = sel.execute(number)
    binding.pry
#    id:id, name:name, type:type, db:db
  end
end
