Rails.application.routes.draw do
  get("/dice/:n1/:n2", {:controller=> "dice", :action=> "values"})
  get("/", {:controller=> "dice", :action=> "home"})
end
