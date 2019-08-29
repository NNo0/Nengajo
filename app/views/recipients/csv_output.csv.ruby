require 'csv'
CSV.generate(encoding: "SJIS") do |csv|

    csv_column_names =["氏名","会社名","部署1","部署2","役職名","郵便番号","住所1","住所2","喪中","備考"]
    csv << csv_column_names
    @recipients.each do |recipient|
     csv_column_values = [
         recipient.name,
         recipient.shamei,
         recipient.sec_name1,
         recipient.sec_name2,
         recipient.position,
         recipient.post_code,
         recipient.address1,
         recipient.address2,
         recipient.dolor,
         recipient.note,
     ]
     csv << csv_column_values
    end
end