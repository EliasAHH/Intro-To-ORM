class Fan
    ## be able to create the table 
    ## be able to insert information to said table 
    ## be able to find specific rows 
    ## Save data information into ruby objects 

    attr_accessor :name, :artist_id
    attr_reader :id

    def initialize(fan_hash)
        @name = fan_hash["name"]
        @artist_id = fan_hash["artist_id"]
        @id = fan_hash["id"]
    end 
  
    def self.create_table 
      sql = <<-SQL
         CREATE TABLE fans (id INTEGER PRIMARY KEY, name TEXT, artist_id INTEGER);
      SQL
      DB[:conn].execute(sql)
    end 

    # insert rows into our table 

    def self.insert(name, artist_id)
        sql = <<-SQL
        INSERT INTO fans (name ,artist_id) VALUES (?,?)
      SQL
      DB[:conn].execute(sql,name,artist_id)
    end 


    def self.find(id)
        sql = <<-SQL
        SELECT * FROM fans WHERE id = ?
      SQL

      DB[:conn].execute(sql,id)
    end 

    def self.create(fan_hash)
        new_fan = Fan.new(fan_hash)
        # It's going insert the information into our database 
        new_fan.save
        new_fan

    end 

    def save 
        Fan.insert(self.name, self.artist_id)
        sql = <<-SQL
        SELECT * FROM fans ORDER BY id DESC LIMIT 1; 
      SQL

      new_fan_hash = DB[:conn].execute(sql)
      self.id = new_fan_hash[0]["id"]

    end 
  end

  
  
  
  