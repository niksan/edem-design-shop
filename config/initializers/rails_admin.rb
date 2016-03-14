RailsAdmin.config do |config|

  config.actions do
    dashboard
    index
    new
    export
    history_index
    bulk_delete
    show
    edit
    delete
    history_show
    show_in_app
    nestable
  end

  config.main_app_name = ['Edem Design Shop', 'Admin']
  config.current_user_method { current_user } # auto-generated
  config.audit_with :history, 'User'

  config.excluded_models = ['Order::Item', 'Role']

  [:email, :title].each do |method|
    config.label_methods << method
  end


  config.model 'Category' do
    nestable_tree({
      position_field: :position,
      max_depth: 3
    })
    nestable_list true
    configure :id, :integer 
    configure :name, :string 
    configure :slug, :string 
    configure :ancestry, :string 
    configure :created_at, :datetime 
    configure :updated_at, :datetime 
    object_label_method :name
    list do;
      field :id
      field :name
    end
    show do; end
    edit do;
      field :name
    end
    export do; end
  end

  config.model 'Photo' do
    visible false
    nestable_list true
    configure :product, :belongs_to_association
    configure :id, :integer 
    configure :product_id, :integer
    configure :image, :carrierwave
    configure :created_at, :datetime 
    configure :updated_at, :datetime 
    object_label_method :id
    list do
      field :image 
    end
    show do; end
    edit do
      field :image
    end
    export do; end
  end

  config.model 'Product' do
    nestable_list true
    configure :category, :belongs_to_association
    configure :photos, :has_many_association
    configure :id, :integer 
    configure :published, :boolean
    configure :name, :string 
    configure :description, :text 
    configure :price, :decimal 
    configure :ancestry, :string 
    configure :slug, :string 
    configure :created_at, :datetime 
    configure :updated_at, :datetime 
    configure :show_on_main_page, :boolean
    list do
      field :name
      field :price
      field :category
      field :show_on_main_page
      field :published
    end
    show do; end
    edit do
      field :category
      field :name
      field :description, :ck_editor
      field :price
      field :photos
      field :show_on_main_page
      field :published
    end
    export do; end
  end

  config.model 'User' do
    configure :roles do
      inverse_of :users
    end
    configure :id, :integer 
    configure :email, :string 
    configure :password, :password         # Hidden 
    configure :password_confirmation, :password         # Hidden 
    configure :reset_password_token, :string         # Hidden 
    configure :reset_password_sent_at, :datetime 
    configure :remember_created_at, :datetime 
    configure :sign_in_count, :integer 
    configure :current_sign_in_at, :datetime 
    configure :last_sign_in_at, :datetime 
    configure :current_sign_in_ip, :string 
    configure :last_sign_in_ip, :string 
    configure :created_at, :datetime 
    configure :updated_at, :datetime 
    list do
      field :email
      field :sign_in_count
      fields :last_sign_in_at
      field :roles
    end
    show do; end
    edit do
      field :email
      field :password
      field :roles
    end
    export do; end
  end

  config.model 'Order' do
    configure :items, :has_many_association do
      read_only true
    end
    configure :id, :integer 
    configure :first_name, :string
    configure :last_name, :string
    configure :phone, :string
    configure :address, :string
    configure :email, :string
    configure :additional, :text
    configure :state, :enum
    configure :created_at, :datetime 
    configure :updated_at, :datetime 
    list do
      field :id
      field :state
      field :first_name
      field :last_name
      field :phone
      field :created_at
    end
    show do; end
    edit do
      field :state
      field :items
    end
    export do; end
  end

  config.model 'Order::Item' do
    visible false
    configure :order, :belongs_to_association
    configure :product, :belongs_to_association
    configure :id, :integer 
    configure :quantity, :integer
    configure :price, :float
    configure :created_at, :datetime 
    configure :updated_at, :datetime 
    list do; end
    show do; end
    edit do
      field :items
    end
    export do; end
  end

end
