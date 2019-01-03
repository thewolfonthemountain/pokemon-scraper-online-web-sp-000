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
    type_prepare = db.prepare('select type from pokemon where id = (?)')
    name = name_prepare.execute(id)
    type = type_prepare.execute(id)
#    id:id, name:name, type:type, db:db
  end

end
