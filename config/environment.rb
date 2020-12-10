require 'bundler'
require 'pry'

Bundler.require


DB = {
  name: "Music Database",
  conn: SQLite3::Database.new('db/music.db')
}

#[[1,2,3], [1,2,3], [1,2,3]]
#[{}]
DB[:conn].results_as_hash = true

require_relative '../lib/fans.rb'

