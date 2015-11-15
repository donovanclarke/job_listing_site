class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :job_category
      t.string :job_headquarters
      t.text :job_description
      t.text :job_apply
      t.string :job_name
      t.string :job_url
      t.string :job_email

      t.timestamps null: false
    end
  end
end
