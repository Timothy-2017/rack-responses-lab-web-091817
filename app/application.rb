class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.to_s.split(' ')[1].split(':')[0].to_i < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
#puts Time.now.to_s.split(' ')[1].split(':')[0].to_i
