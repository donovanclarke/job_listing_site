json.array!(@jobs) do |job|
  json.extract! job, :id, :job_title, :job_category, :job_headquarters, :job_description, :job_apply, :job_name, :job_url, :job_email
  json.url job_url(job, format: :json)
end
