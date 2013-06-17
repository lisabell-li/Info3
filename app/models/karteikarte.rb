class Karteikarte < ActiveRecord::Base
  attr_accessible :deck_id, :erraten, :nachname, :prev_fach, :vorname, :student_id
  validates :vorname, :presence => true,
                      :length => { :minimum => 2}
  validates :nachname, :presence => true,
                       :length => { :minimum => 2 }
 

  belongs_to :deck
  belongs_to :student

  def in_deck?(decknumber)
    true
  end

  def assign_deck(decknumber)
  end




end

