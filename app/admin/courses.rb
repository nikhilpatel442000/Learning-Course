ActiveAdmin.register Course do
  permit_params :name, :description, :thumbnail

  index do
    selectable_column
    id_column
    column :name
    column :description
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :thumbnail
    end
  end

  form do |f|
    f.inputs "Course Details" do
      f.input :name
      f.input :description
      f.input :thumbnail, as: :file
    end
    f.actions
  end
end
