class AddColumnsToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :year, :date
    add_column :movies, :rated, :string
    add_column :movies, :released, :date
    add_column :movies, :runtime, :time
    add_column :movies, :plot, :text
    add_column :movies, :language, :string
    add_column :movies, :country, :string
    add_column :movies, :poster, :string
    add_column :movies, :imdbRating, :float
    add_column :movies, :imdbId, :bigint
    add_column :movies, :type, :string
  end
end
