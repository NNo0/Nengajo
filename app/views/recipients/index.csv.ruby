require 'csv'

CSV.generate do |csv|
    csv_column_names = %w(id name shamei)
    csv << cav_column_names
    @users.each do |user|
        csv_column_values = [
            recipient.id
            recipient.name
            recipient.shamei
        ]
        csv << csv_column_values
    end
end