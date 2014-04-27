ActiveAdmin.register Portfolio do
  controller do
    defaults :finder => :find_by_slug
  end

  index do
    selectable_column
    column :portfolio_image do |portfolio|
      if portfolio.portfolio_image.url
      image_tag(portfolio.portfolio_image.url(:thumb))
      end
    end
    column :title
    column :description
    column :website
    column :slug
    default_actions
  end


  form do |f|
    f.inputs do
      f.input :title
      f.input :slug
      f.input :description, as: :html_editor
      f.input :website
      f.input :portfolio_image, :as => :file, :hint => f.object.portfolio_image.present? \
    ? f.template.image_tag(f.object.portfolio_image.url(:thumb))
      : f.template.content_tag(:span, "no photo yet")
      f.input :portfolio_image_cache, :as => :hidden
      f.input :remove_portfolio_image, as: :boolean, label: 'Check here to remove the current image.'
    end
    f.actions
  end


  show do |portfolio|
    attributes_table do
      row :id
      row :title
      row :slug
      row :website
      row :description do
        simple_format portfolio.description
      end
      row :portfolio_image do
        if portfolio.portfolio_image.url
          image_tag(portfolio.portfolio_image.url(:thumb))
        end
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
  
end
