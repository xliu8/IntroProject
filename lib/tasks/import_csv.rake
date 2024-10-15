namespace :db do
  desc "Import data from CSV files"
  task import_csv: :environment do
    require 'csv'

    # 导入 Categories
    CSV.foreach('lib/assets/csv/categories.csv', headers: true) do |row|
      Category.create!(category_name: row['category_name'])
    end

    # 导入 Brands
    CSV.foreach('lib/assets/csv/brands.csv', headers: true) do |row|
      Brand.create!(
        brand_name: row['brand_name'])
    end

    # 导入 Products
    CSV.foreach('lib/assets/csv/products.csv', headers: true) do |row|
      Product.create!(
        product_name: row['product_name'],
        brand_id: row['brand_id'],
        category_id: row['category_id'],
        price: row['list_price'],
        model_year: row['model_year']
      )
    end

    # 导入 Stores
    CSV.foreach('lib/assets/csv/stores.csv', headers: true) do |row|
      Store.create!(
        store_name: row['store_name'],
        phone: row['phone'],
        email: row['email'],
        address: row['street'],
        city: row['city'],
        state: row['state'],
        zip_code: row['zip_code']
      )
    end

    # 导入 Stocks
    CSV.foreach('lib/assets/csv/stocks.csv', headers: true) do |row|
      Stock.create!(
        store_id: row['store_id'],
        product_id: row['product_id'],
        quantity: row['quantity']
      )
    end
  end
end
