# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ThemeEnvirashopExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/theme_envirashop"

  # Please use theme_envirashop/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate

    # make your helper avaliable in all views
    Spree::BaseController.class_eval do
      helper :products
    end
    
    Spree::ContentController.class_eval do
      
      def home
        @featured_product = Product.active.first
        @products = Product.active.all :limit => 10, :offset => 1
        render "home", :layout => false
      end
      
    end
    
  end  
  
end
