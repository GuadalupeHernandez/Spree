# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  config.logo = "images/logo/spree_50.png"
  Spree::Image.attachment_definitions[:attachment][:styles]={
  	mini: "48x48>",
  	small: "200x100>",
  	product: "350x340>",
  	large: "600x600>",
  	
  }
end

Spree::Frontend::Config[:locale] = 'pt-MX'
Spree::Backend::Config[:locale] = 'pt-MX'

Spree::Config.set(logo: "logo/spree_50.png")

Spree.user_class = "Spree::User"
