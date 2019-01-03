class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    ins = db.prepare('insert into pokemon (name, type) values ( ?, ? )')
    ins.execute(name, type)
  end

  def self.find(number, db)
    n_ins = db.prepare('select name from pokemon where id = (?)')
    t_inst = db.prepare('select type from pokemon where id = (?)')
    @name = n_ins.execute(number)
    @type = t_ins.execute(number)
#    id:id, name:name, type:type, db:db
  end

end
