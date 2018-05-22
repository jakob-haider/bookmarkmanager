class Folder < ApplicationRecord
  has_many :children, class_name: "Folder", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Folder", required: false
  has_and_belongs_to_many :tags
  belongs_to :category, required: false
  has_many :bookmarks


  def breadcrumb_parents
    # get all parents here into array
    ar = []
    ar << parentf
    ar << parent.breadcrumb_parents
    ar
  end

  def self.root_parents
    Folder.select{|f| f.parent.nil?}.each do |f|
      f.isrootparent = true
      f.save
    end
  end

  def is_rootparent?
    self.isrootparent?
  end

  #
  # def find_all_root_parents
  #   puts "calling this method.. "
  #   Folder.where('parent_id = 1').each do |f|
  #     f.set_rootparent_true
  #   end
  # end

  #TODO refactor names underscore
  #todo init machen für folders, bookmarks, parser, etc.

  def categorized?
    category_id.present?
  end

  def decayed?
    containing_elements_decayed?
  end

  def containing_elements_decayed? (threshold = 1.month)
    # lastedited updaten..
    max = _update_folders_last_edited_attribute
    if max.present?
      max + threshold < Time.now
    else
      false # is a folder without elements decayed?
    end
  end

  def _update_folders_last_edited_attribute (max = nil)
    # puts "calling this method"
    #todo refactor...
    max = bookmarks.map{|x| x.updated_at}.max
    if max.present?
      if lastedited != max
        self.lastedited= max
        self.save
      end
    end
    max
  end

  def empty?
    bookmarks.nil?
  end

  def derive_last_review_date
    #note0 schon zuvor welche gemacht. beginne hier zu zählen
    #todo english:
    # design notes ....
    # comes from the gtd methodology somehow.. !!
    # bisher nur elements_decayed. wird nur geupdated wenn bookmark
    # verändert oder wenn neues dazukommt.
    # wenn dann erst machen wenn schon todos assoziiert sind. oder aber
    # wenn folder komplett reviewed ist: d.h.:
    # save view_dates of bookmarks and complete acqurings.
    # acquirings < folder ....
  end














  # refactoring: problem point methods that act on groups of tabs

  def sort_by_edit_date_recursive
    # go down to all items and find out last edit date
    # give folders with items a weight with edit dates of
    # items in folder

    #push a folder if there is a new element contained.
  end

  def category_tree_assign root
    # e.g. "Kleidung" / clothing bookmarks folder
    # and subfolders to the category clothing
    # data structure in general: have a plain structure of
    # categories, maybe subcategories, and folders in there
    # see concepts of dashable 'research buckets' in sketches
    # for bookmarking system and for semantic web project '404'
  end

  def threshold_date_weight_function

  end

  def group_by_date
    # like in onetab. give threshold e.g. one day to group an aquiring(!)
    # refactored: moved this method out of bookmarks...
    # make a grouping helper method for the view.
  end
end
