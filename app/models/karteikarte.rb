class Karteikarte < ActiveRecord::Base
  attr_accessible :current_fach, :erraten, :nachname, :prev_fach, :vorname
  validates :vorname, :presence => true
  validates :nachname, :presence => true
  validates :foto, :presence => true
  

  def in_deck?(decknumber)
    true
  end

  def assign_deck(decknumber)
  end

belongs_to :deck
belongs_to :student


end

