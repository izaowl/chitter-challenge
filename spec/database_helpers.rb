require 'pg'

def persisted_data(id:)
  connection = PG.connect(dbname: 'message_test')
  result = connection.query("SELECT * FROM messages WHERE id = #{id};")
  result.first
end


# def persisted_data(id:)
#   connection = PG.connect(dbname: 'bookmark_manager_test')
#   result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
#   result.first
# end
