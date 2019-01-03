class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(id)
    ins = db.prepare('select name, type, db from pokemon where id = (?)')
    poke = ins.execute(id)
end
