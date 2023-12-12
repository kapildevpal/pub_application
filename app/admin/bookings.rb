ActiveAdmin.register Booking do
    permit_params :pub_profile_id, :user_id, :check_in_time, :check_out_time, :number_of_people
  
    index do
      selectable_column
      id_column
      column :pub_profile
      column :user
      column :check_in_time
      column :check_out_time
      column :number_of_people
      column :created_at
      actions
    end
  
    filter :pub_profile
    filter :user
    filter :check_in_time
    filter :check_out_time
    filter :number_of_people
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :pub_profile
        f.input :user
        f.input :check_in_time
        f.input :check_out_time
        f.input :number_of_people
      end
      f.actions
    end
  end
  