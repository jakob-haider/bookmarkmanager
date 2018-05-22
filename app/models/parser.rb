class Parser
  #todo parsing information table. parse local file on os. find hash
  #todo open an api where bookmark items can be sent to
  #
  #feature find local file on mac machine. important for demo usage?
  #rather create a seed while usage is limited.
  #

  def self.import_json
    path = "/Users/anwender/Downloads/chrome_bookmarks.json"
    file = File.read path
    json = JSON.parse file
    folders = json.select{|entry| entry['url'].nil?}
    bookmarks = json.select{|entry| entry['url'].present?}
    folders.each do |f|
      exportid = f['id']
      parent_id = f['parentId']
      title = f['title']
      created_at = f['dateAddedLocal'].to_time
      index = f['index']
      Folder.create! eid: exportid,
                     parent_id: parent_id,
                     title: title,
                     position: index, # sql reserved word. renamed thus.
                     created_at: created_at, #overwriting this for name clarity
                     importdate: Time.now
    end
    bookmarks.each do |f|
      exportid = f['id']
      folder_id = f['parentId']
      title = f['title']
      dateadded = f['dateAddedLocal'].to_time
      url = f['url']
      index = f['index']
      Bookmark.create! eid: exportid,
                       folder_id: folder_id,
                       title: title,
                       position: index, #same as above, sql reserved..
                       created_at: dateadded, # ^^^
                       url: url,
                       importdate: Time.now
    end
  end
end