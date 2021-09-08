ActiveAdmin.register Restaurant do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  index do
    column :title
    column :description
    column :dishes_count do |product|
      product.dishes.count
    end
    actions
  end

  show do |restaurant|
    attributes_table do
      row :title
      row :description
    end
    panel 'Dishes' do
      table_for restaurant.dishes do |t|
        t.column :title
        t.column :dish_type
        t.column :ingredients
        t.column :description
        t.column :price
      end
    end
  end
  permit_params :title, :description
end
