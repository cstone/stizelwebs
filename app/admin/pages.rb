ActiveAdmin.register Page do
  controller do
    defaults :finder => :find_by_permalink
  end

  index do
    selectable_column

    column :title
    column :permalink
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :permalink
      f.input :content, as: :html_editor
    end
    f.inputs "Image" do
      f.file_field :page_image
    end
    f.inputs "Remove Current Image" do
      f.input :remove_page_image, as: :boolean, label: 'Check here to remove the current image.'
    end
    f.actions
  end


  show do |page|
    attributes_table do
      row :id
      row :title
      row :permalink
      row :content do
        simple_format page.content
      end

      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end

