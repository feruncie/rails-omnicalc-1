Rails.application.routes.draw do

  get("/square/new", { :controller => "ocean", :action => "flower" }) 

  get("/square/results", { :controller => "ocean", :action => "bee" }) 

  get("/square_root/new", { :controller => "ocean", :action => "tree" }) 

  get("/square_root/results", { :controller => "ocean", :action => "star" }) 

  get("/payment/new", { :controller => "ocean", :action => "orange" }) 

  get("/payment/results", { :controller => "ocean", :action => "apple" }) 
  
  get("/random/new", { :controller => "ocean", :action => "hug" }) 

  get("/random/results", { :controller => "ocean", :action => "love" }) 

  
end
