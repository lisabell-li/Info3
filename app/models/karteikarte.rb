class Karteikarte < ActiveRecord::Base
  attr_accessible :current_fach, :erraten, :nachname, :prev_fach, :vorname
  validates :vorname, :presence => true
  validates :nachname, :presence => true
  validates :foto, :presence => true
  

  def in_deck?(deck_id)
    true
  end

  def assign_deck(deck_id)
  end
end
