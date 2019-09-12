class SongsController < ApplicationController
    def create
        song = Song.new(song_params)
        song.playlist_id = params[:playlist_id]
        if song.save
            redirect_to song.playlist, notice: "Cancion guardada"
        else
        redirect_to playlists_path, notice: "No se pudo guardar"
        end
    end

    def destroy
        song = Song.find(params[:id])
        song.delete
        playlist = song.playlist
        redirect_to song.playlist, notice: "Cancion borrada"
    end

private

def song_params
    params.require(:song).permit(:name, :artist)
end

end
