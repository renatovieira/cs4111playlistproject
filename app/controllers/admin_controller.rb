class AdminController < ApplicationController

  def new
    @artist_belong_to = ArtistBelongTo.new
    @contain = Contain.new
    @included_in = IncludedIn.new
    @song_belongs_to = SongBelongsTo.new
    @song_performed_by = SongPerformedBy.new
  end

end