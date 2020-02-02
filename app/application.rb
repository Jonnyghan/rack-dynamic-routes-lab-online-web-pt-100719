class Application
  
  @@items = [Item.new("Figs",3.42). Item.new("Pears",0.99)]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
      if req.path=="/items/Figs"
        resp.write @@items[0].price
      elsif req.path == "/items/Pears"
        resp.write @@items[1].price
  resp.finish
    end
  
end
