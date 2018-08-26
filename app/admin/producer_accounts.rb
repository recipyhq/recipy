ActiveAdmin.register Producer::Account do
  menu parent: 'Producers', label: 'Account'

  index do
    selectable_column
    id_column
    column :created_at
    actions
  end

  filter :created_at

  form do |f|
    f.inputs do
    end
    f.actions
  end
end
