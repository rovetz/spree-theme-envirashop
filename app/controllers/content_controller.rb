class ContentController < Spree::BaseController
  rescue_from ActionView::MissingTemplate, :with => :render_404
  caches_page :show, :index

  def show
    render :action => params[:path].join('/')
  end
  
  def cvv
    render "cvv", :layout => false
  end  
  
  def home
  	render "home", :layout => false
  end
  
  def about
  	render "about"
  end
  
  def delivery
  	render "delivery"
  end
  
end
