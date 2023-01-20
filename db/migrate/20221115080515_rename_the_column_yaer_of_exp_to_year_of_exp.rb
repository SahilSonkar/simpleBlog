class RenameTheColumnYaerOfExpToYearOfExp < ActiveRecord::Migration[7.0]
  def change
    rename_column :manager_histories, :yaer_of_exp, :year_of_exp
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
