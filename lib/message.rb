require 'pg'
require 'time'
require_relative  'database_connection'

class Message
  attr_reader :id, :message, :ch_user, :created_at

  def initialize(id:, message:, ch_user:, created_at:)
    @id = id
    @message = message
    @ch_user = ch_user
    @created_at  = created_at 
  end

  def self.all
    result = DatabaseConnection.query("SELECT * FROM messages order by created_at asc")
    res  = result.map { |message| Message.new(id: message['id'], message: message['message'],ch_user: message['ch_user'], created_at:Time.parse(message['created_at']))}
  end

  def self.create(message:, ch_user:)
    return false if (message.to_s.empty? || ch_user.to_s.empty?)
    result = DatabaseConnection.query("INSERT INTO messages (message, ch_user, created_at) VALUES($1, $2, now()) RETURNING ID, MESSAGE, CH_USER, CREATED_AT;", [message, ch_user])
    Message.new(id: result[0]['id'], message: result[0]['message'], ch_user: result[0]['ch_user'],created_at: Time.parse(result[0]['created_at']))
  end
  
end