class FlatsController < ApplicationController # Controlleur Flats, généré avec la commande : rails generate controller nom_du_controlleur (ici, flats)


  skip_before_action :authenticate_user!, only: [:index, :show]

  # À RETENIR
  # - dans notre appli, on a besoin d'un modèle Flat (appartement), donc d'un controlleur Flats (avec un s!)
  # - chaque CONTROLLEUR (Flats) est lié à un MODÈLE (Flat), ce qui nous permet de faire Flat.all, .find, .create...
  # - chaque MÉTHODE (def index, def show...) est liée à une PAGE dans /views grâce au Routes (voir la page des routes pour plus d'explications) --> ce qui nous permet d'appeler les variables qu'on crée ici (@flats...) dans les pages en question
  # - Params[:clé], c'est comme dire "Trouve moi ":clé" dans la page". Ça peut être dans l'URL (flats/:id), dans un formulaire (:name, etc), n'importe. Params va récupérer la clé que tu demandes de chercher.

  def index # Méthode index (URL = /modèle(s) = /flats), qui sert toujours à lister/montrer tous les modèles créés (= tous les appartements !)

    @flats = Flat.all # On crée une variable @flats, qui est un array, avec tous les flats dedans (Modèle.all) => (Flat.all)
    
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show # Méthode show (URL = modèle(s)/:id = /flats/1, /flats/2...), qui sert toujours à montrer un modèle créé en particulier (ici, un appartement)

    @flat = Flat.find(params[:id]) # Avec Modèle.find(params[:id]), on peut trouver un seul Flat, qu'on met dans la variable @flat.
    @markers = [{lat: @flat.latitude, lng: @flat.longitude}]
  end

  def new # Méthode new (URL = modèle(s)/new = flats/new), qui sert toujours à récupérer les infos pour créer un nouveau Modèle (nouveau Flat)

    @flat = Flat.new # Ici, on crée un Modèle Flat vide (.new, sans arguments) pour pouvoir lui donner des infos (grâce au formulaire)
    # Pourquoi deux méthodes pour créer un modèle ? Parce qu'on a besoin d'une page pour récuperer les infos (new), et d'une méthode pour les intégrer à un nouveau Flat et valider le nouveau modèle (create)
  end

  def create # Méthode create (pas d'URL), qui sert à créer un nouveau Modèle

    # À retenir : quand on create, il faut se demander de quelles données on a besoin. Pour créer un Flat, on a besoin d'un :name, :location, :description, :price_per_month, :autonomy_level, et d'un :user_id
    # La méthode flat_params (en dessous) récupère toutes les infos sauf :user_id grâce à params (expliqué en dessous)
    # La méthode current_user récupère le :user_id de la personne connectée (vu que pour créer un Flat, il faut forcément avoir un profil !)

    @flat = Flat.new(flat_params) # @flat = un nouveau Flat avec les infos de flat_params (voir plus bas pour plus d'infos)

    @flat.user = current_user # À chaque fois, sur un Modèle, on peut aller assigner/chercher des infos avec un .clé (ex: Flat.name = valeur) / Ici, on assigne :user_id (@flat.user) avec .user

    if @flat.save # Ici, on dit --> "Si on peut sauvegarder le nouveau Flat (@flat.save), redirigige vers 'flats_path', sinon, met un message comme quoi ça a pas marché"

      redirect_to flats_path # flats_path c'est une route qui redirige vers tous les flats (index), tu peux checker les routes avec la commande rails routes

    else

      render :new, status: :unprocessable_entity

    end
  end

  def edit # Méthode qui sert à modifier un modèle existant (un Flat ici)
    @flat = Flat.find(params[:id]) # Ici, on va trouver le flat qu'on veut edit en particulier, avec son id dans l'URL
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flats_path
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :location, :description, :price_per_month, :autonomy_level)
  end
end
