class ContentController < Spree::BaseController
  rescue_from ActionView::MissingTemplate, :with => :render_404
  caches_page :show, :index
  
  helper :products
  
  def show
    render :action => params[:path].join('/')
  end
  
  def cvv
    render "cvv", :layout => false
  end  
  
  def home  	
  	@featured_product = Product.first
  	@products = Product.all :limit => 10, :offset => 2
  	render "home", :layout => false
  end
  
  def about
  	render "about"
  end
  
  def delivery
  	render "delivery"
  end
  
end
