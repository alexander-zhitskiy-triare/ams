RailsAdmin.config do |config|

  #   config.authenticate_with do
  #     warden.authenticate! scope: :admin
  #   end
  #   config.current_user_method(&:current_admin)
  #
  # ## == Cancan ==
  #   config.authorize_with :cancancan
  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.included_models = [User, SubUser, Subscription, EndUser, Orders, Group]

  EXCLUDE_MODELS = [
      'User'
  ]
  BULK_DELETE_MODELS = [].concat(EXCLUDE_MODELS)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except EXCLUDE_MODELS
    end
    # export
    bulk_delete do
      except BULK_DELETE_MODELS
    end
    show
    edit do
      except ['User']
    end
    delete do
      except EXCLUDE_MODELS
    end

    # configure_home_screen
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

end
