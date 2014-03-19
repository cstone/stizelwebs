ActiveAdmin.register Portfolio do

  index do
    selectable_column
    column :portfolio_image do |portfolio|
      image_tag(portfolio.portfolio_image.url(:thumb))
    end
    column :title
    column :description
    column :website
    default_actions
  end


  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :html_editor
      f.input :website
    end
    f.inputs "Image" do
      f.file_field :portfolio_image
    end
    f.inputs "Remove Current Image" do
      f.input :remove_portfolio_image, as: :boolean, label: 'Check here to remove the current image.'
    end
    f.actions
  end


  show do |portfolio|
    attributes_table do
      row :id
      row :title
      row :website
      row :description do
        simple_format portfolio.description
      end
      row :portfolio_image do
        image_tag(portfolio.portfolio_image.url(:thumb))
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
  
end
