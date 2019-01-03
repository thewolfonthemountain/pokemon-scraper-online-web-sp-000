class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(id, db)
    name_prepare = db.prepare('select name from pokemon where id = (?)')
    @id = id 
    @name = db.prepare('id')
  end
end
