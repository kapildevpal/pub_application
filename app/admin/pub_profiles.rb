ActiveAdmin.register PubProfile do
    permit_params :name, :description, :location, :capacity, :is_smoking_allowed, :average_rating, :pub_owner_id
  
    index do
      selectable_column
      id_column
      column :name
      column :description
      column :location
      column :capacity
      column :current_number_of_people
      column :is_smoking_allowed
      column :average_rating
      column 'Pub Owner' do |pub|
        pub.pub_owner.email
      end
      actions
    end
  
    filter :name
    filter :location
    filter :description
    filter :is_smoking_allowed
    filter :average_rating

    form do |f|
      f.inputs do
        f.input :email
        f.input :password
        f.input :password_confirmation
      end
      f.actions
    end
  
    show do
      attributes_table do
        row :name
      row :description
      row :location
      row :capacity
      row :is_smoking_allowed
      row :average_rating
      row :pub_owner_id
      end
    end
  end
  