# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  
  navigation.items do |primary|
    primary.item :products, 'Products', products_path, highlights_on: %r(/products/)
    primary.dom_class = 'nav navbar-nav'
    primary.dropdown = true
    primary.split = false
  end
end
