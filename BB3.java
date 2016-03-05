
// rajouter les obligatoires
package bb3;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author pjacqu52
 */
public class BB3 {

    static String[] prenom = {
        "Dimitri", "Malik", "Loevan", "Lucas", "Matteo", "Leo", "Evan", "Louis",
        "Tom", "Maxime", "Thomas", "Arthur", "Yanis", "Alexandre", "Theo", "Hugo",
        "Enzo", "Nathan", "Antoine", "Gabriel", "Eva", "Anais", "Marie",
        "Lola", "Lea", "Clara", "Chloe", "Sarah", "Juliette", "Lucie", "Jade",
        "Romane", "Emma", "Manon", "Agathe", "Ambre", "Lilou", "Oceane", "Ines",};

    static String[] pseudo = {
        "Dimi", "Mali", "Lola", "Mat", "Leo", "Maxou", "Isnogoud", "Nico", "Nico75",
        "Tomi", "Max", "Alex", "Alex75", "Alex31234", "Lola75", "Noel", "CafeAuLait",
        "Enzo", "Nat", "Toinou", "Nat83", "Orange", "Clementine", "SacADos",
        "Lola", "Juju", "Lulu", "CrosBlanc", "Pomme", "Cacahouette", "Loustique",
        "Ambre", "Lilou", "Coquiellette", "Belinda", "Patate"};

    static String[] nom = {
        "MARTIN", "SMITH", "ROUX", "PETIT", "DURAND", "DUBOIS", "MOREAU", "BROWN",
        "ROY", "GIRARD", "LAMBERT", "BLANC", "FOURNIER", "JOHNSON", "GARNIER",
        "ROUSSEAU", "JONES", "GUERIN", "MOREL", "GAUTIER", "BONNET", "MERCIER",
        "MILLER", "MARCHAND", "CHEVALIER", "DUPONT", "FAURE", "LEROY", "MORIN",
        "LEFEBRE", "MASSON", "JOHN", "PERRIN", "WILLIAM", "GIRAUD", "BRUN", "WILSON",
        "CLARK", "BLANCHARD", "FABRE", "WHITE", "BOYER", "TAYLOR", "DUVAL", "HALL",
        "MOORE"};

    static String[] email = {
        "@gmail.com", "@hotmail.fr", "@yahoo.fr", "@orange.com", "@wanadoo.fr",
        "@aol.fr", "@free.fr", "@outlook.fr", "@sfr.fr"};

    static String[] pays = {
        "Paris","Bordeaux","Rennes","Yerres","Brunoy","Mandres","Cannes","Hyeres",
	"Toulon","Brignoles","Cuers","Le Mans","Tours","Valence","Avignon","Poitiers",
	"Colmar","Lille","Evry","Tigery","Alfortville","Creteil","Nemours",
	"Noirmoutier","Bandol","Frejus","Sollies","Bonneuil","Chelles","Epinay",};

    static String[] partenaire = {
        "Basebook", "Weeder", "Instragrum"};

    static String[] statut = {
        "standard", "bronze", "argent", "or"};

    static String[] nomEtablissement = {
        "ALaBonneFourchette", "LePainDeSucre", "ALaBonneFranquette", "ChezGinette",
        "Brico", "ATable", "LaMainVerte", "LeBonLogis", "GrosDodo", "RelaisDeLaPoste",
        "HoteGourmand", "DurandPereEtFils", "Carredur", "Mercurs", "Decathcour",
        "Normoto", "Dartails", "Casinails", "ChezPaquita", "Lefonce", "Interfrais"};

    static String[] adresseEtablissement = {
        "avenue gambetta", "rue emile roux", "avenue clemenceaux", "rue des vignes",
        "avenue general de gaulle", "avenue frederic mistral", "boulevard beau soleil",
        "rue armonie", "avenue du marechal leclerc", "avenue des palmiers",
        "avenue de la resistance", "rue de la mairie", "rue de la poste",
        "rue gabrielle peris", "rue de la lavande", "rue des poilus", "rue des papoux",
        "rue des coteaux", "rue marcel quintane", "rue des philosophes", "rue du port",
        "avenue du 8 mai 1945", "boulevard de la pistache", "avenue jean moulin",
        "rue du soleil levant", "rue de port cros", "rue des coquelicots",
        "rue des amoureux", "rue des fleurs", "impasse de la rade"};

    static String[] cuisineEtablissement = {
        "francais", "créole", "africain", "chinois", "indien", "japonnais", "italien",
        "anglais", "mexicaine", "indonesienne"};

    static String[] categorieMagasin = {
        "vetement", "alimentaire", "bricolage", "automobile", "sport", "boulangerie",
        "electromenager", "multimedia"};

    static String[] commentaireTexte = {
        "Etablissement tout neuf rien a dire", "Tout vient detre refait",
        "Les gerants sont charmants mais le petit dejeuner laisse a desirer",
        "Rien a dire", "Tout etait parfait", "Je le conseille fortement",
        "Cest rare de trouver cette qualite de service pour ce prix",
        "Lieu extraordinaire", "La literie aurait besoin d'être change",
        "La decoration est identique au paysage de la region à couper le souffle",
        "Je ne suis pas daccord avec les avis sur ce site et je suis decu pas mes achats",
        "Je conseille fortement jy ai tres bien mange"};
    
    static String[]commentaireInsultant={
        "Il y a qune chose a dire le proprietaire est un gougas"};

    static String[] avisTexte = {
        "Etablissement parfait", "Aucun soucis, je le conseille", "RAS",
        "On y trouve exactement ceux a quoi l'on s'attend", "lieu unique",
        "a part quelques petits defauts c'est un sans faute", "Fascinant",
        "Surtout n'y aller pas !!!", "Nul", "Decevant", "Rien a voir",
        "Que ce soit le personnel ou les prestations rien n'était au rendez-vous",
        "Je le conseil vivement pour une famille", "Le parking est magnifique"};

    static String[] dateHeure = {
        "2007-10-17","2007-01-10","2009-11-5","2011-07-15","2013-11-15",
        "2010-08-12","2010-01-02","2013-02-25","2012-02-12","2010-07-08",
        "2010-11-13","2007-01-04","2011-03-21","2010-01-10","2014-02-01",
        "2011-01-11","2010-01-24","2008-08-20","2009-11-26","2010-06-17",
        "2008-03-17","2011-04-07","2007-05-14","2010-02-19","2009-05-12",
        "2007-02-14","2008-06-02","2009-09-06","2013-11-11","2010-03-13",
        "2008-10-07","2007-11-17","2007-04-08","2008-01-17","2008-11-07",
        "2011-05-15","2008-02-10","2008-01-22","2007-11-25","2007-02-10",
        "2007-11-10","2007-06-07","2012-09-17","2012-09-19","2012-10-14",
        "2008-11-07","2012-02-02","2011-09-19","2010-07-15","2007-04-14",
        "2008-02-25","2009-02-16","2008-11-06","2011-10-24","2008-11-24",
        "2011-06-01","2013-05-06","2013-05-26","2012-01-02","2013-08-04",
        "2013-07-12","2009-06-13","2010-02-05","2010-01-07","2013-11-27",
        "2011-04-20","2014-01-16","2010-11-14","2010-02-11","2010-10-01",
        "2007-05-10","2009-09-14","2008-04-24","2009-05-18","2009-01-16",
        "2013-05-25","2007-06-13","2011-01-20","2009-09-11","2013-09-21",
        "2009-07-10","2014-04-22","2007-07-13","2011-05-11","2014-04-27",
        "2009-02-12","2007-05-26","2014-08-24","2011-11-24","2013-05-17",
        "2013-01-04","2012-09-24"};

    static final int nombrCommentaire = 120;
    static final int nombrUtilisateur = 120; // soit 19 personnes
    static final int nombrAvis = 120;
    static final int nombrVoyageur = 70; //de 1 à 70
    static final int nombrProprietaire = 30; //de 71 à 101
    static final int nombrEtablissement = 120;
    static final int nombrRestaurant = 40; // de 1 à 40
    static final int nombrHotel = 40; // de 41 à 81
    static final int nombrMagasin = 40;// de de 82 à 120
    static final int nombrEvaluationPrix = 120;
    static final int nombrCommentaireInsultant = 1;

    public static void main(String[] args) throws IOException {
        TableUtilisateurNombre(nombrUtilisateur);
        TableVoyageurNombre(nombrVoyageur);
        TableProprietaireNombre(nombrProprietaire);
        TableEtablissementNombre(nombrEtablissement);
        TableRestaurantNombre(nombrRestaurant);
        TableHotelNombre(nombrHotel);
        TableMagasinNombre(nombrMagasin);
        TableAvisNombre(nombrAvis);
        TableCommentaireAvisNombre(nombrCommentaire);
        TableEvaluationPrixNombre(nombrEvaluationPrix);
        TableCommentaireInsultant(nombrCommentaireInsultant);
    }

    public static void TableCommentaireInsultant(int nombre) {
        String insultant = "";
        for (int nombreInsulta = 1; nombreInsulta <= nombre; nombreInsulta++) {

            int idCommentair = (int) (Math.random() * nombrCommentaire) + 1;
            insultant += idCommentair;

            insultant += "\n";

            String path = "commentaireInsultant.dat";
            ecrire(path, insultant);

        }
    }

    public static void TableEvaluationPrixNombre(int nombre) {
        String eval = "";
        for (int nombreEval = 1; nombreEval <= nombre; nombreEval++) {

            int note = (int) (Math.random() * 5) + 1;
            int idEtablissemen = (int) (Math.random() * nombrEtablissement) + 1;
            int idUtilisateu = (int) (Math.random() * nombrUtilisateur) + 1;

            eval += note + ",";
            eval += idEtablissemen + ",";
            eval += idUtilisateu;

            eval += "\n";

            String path = "evaluationPrix.dat";
            ecrire(path, eval);
        }
    }

    public static void TableCommentaireAvisNombre(int nombre) {
        String commentaire = "";
        for (int nombreCommentaire = 1; nombreCommentaire <= nombre; nombreCommentaire++) {

            int etoile = (int) (Math.random() * 5) + 1;
            int texteC = (int) (Math.random() * commentaireTexte.length);
            int dat = (int) (Math.random() * dateHeure.length);
            int idCommentair = (int) (Math.random() * nombrCommentaire) + 1;

            if(idCommentair==1){texteC=(int)(Math.random()*commentaireInsultant.length);}
            if(idCommentair==33||idCommentair==34){etoile=1;}
            
            commentaire += idCommentair + ",";
            commentaire += etoile + ";";
            commentaire += commentaireTexte[texteC] + ",";
            commentaire += dateHeure[dat];

            commentaire += "\n";

            String path = "commentaireAvis.dat";
            ecrire(path, commentaire);
        }

    }

    public static void TableAvisNombre(int nombre) {
        String avis = "";
        for (int nombreAvis = 1; nombreAvis <= nombre; nombreAvis++) {

            int idAvis = (int) (Math.random() * nombrAvis) + 1;
            int note = (int) (Math.random() * 6);
            int texteA = (int) (Math.random() * avisTexte.length);
            int dat = (int) (Math.random() * dateHeure.length);
            int idCommentair = (int) (Math.random() * nombrCommentaire) + 1;
            
            String da = dateHeure[dat];

            if(idAvis==2)note=5;
            if (idAvis==1)note=4;
            if(idAvis==5){da="2014-12-25";}
            if(idAvis==6){da="2014-12-02";}
            if(idAvis==7 ||idAvis==8){note=4;}
            if(idAvis==12){note=1;da="2014-12-03";}
            if(idAvis==13){note=5;da="2013-11-06";}
            if(idAvis==14){note=3;}
            if(idAvis==33){idCommentair=33;}
            if(idAvis==42){idCommentair=34;}
            
            avis += idAvis + ",";
            avis += note + ",";
            avis += avisTexte[texteA] + ",";
            avis += da + ",";
            avis += idCommentair;

            avis += "\n";

            String path = "avis.dat";
            ecrire(path, avis);
        }

    }

    public static void TableMagasinNombre(int nombre) {
        String magasin = "";
        //il faut un magasin de bricolage avec etoile<3
        magasin+="bricolage"+",82"+"\n";
        String path2 = "magasin.dat";
        ecrire(path2,magasin);
        
        for (int nombreMagasin = 83; nombreMagasin <= 83+nombre; nombreMagasin++) {

            int categor = (int) (Math.random() * categorieMagasin.length);
            int idEtabliss = nombreMagasin;

            magasin += categorieMagasin[categor] + ",";
            magasin += idEtabliss;

            magasin += "\n";

            String path = "magasin.dat";
            ecrire(path, magasin);
        }
    }

    public static void TableHotelNombre(int nombre) {
        String hotel = "";
        hotel+="3,41"+"\n";
        ecrire("hotel.dat",hotel);
        for (int nombreHotel = 42; nombreHotel <= 42+nombre; nombreHotel++) {

            int etoile = (int) (Math.random() * 8);
            int idEtabliss = nombreHotel;

            hotel += etoile + ",";
            hotel += idEtabliss;

            hotel += "\n";

            String path = "hotel.dat";
            ecrire(path, hotel);
        }
    }

    public static void TableRestaurantNombre(int nombre) {
        String restaurant = "";
        restaurant+="3,indien,3"+"\n";
        ecrire("restaurant.dat",restaurant);
        for (int nombreResto = 2; nombreResto <= nombre; nombreResto++) {

            int etoile = (int) (Math.random() * 8);
            int cuisin = (int) (Math.random() * cuisineEtablissement.length);
            int idEtabliss = nombreResto;
            
            if(idEtabliss==4 || idEtabliss==5){etoile=3;cuisin=3;}
            if(idEtabliss==6 || idEtabliss==7){etoile=4;cuisin=4;}
            if(idEtabliss==10){etoile=5;}

            restaurant += etoile + ",";
            restaurant += cuisineEtablissement[cuisin] + ",";
            restaurant += idEtabliss;

            restaurant += "\n";

            String path = "restaurant.dat";
            ecrire(path, restaurant);
        }
    }

    public static void TableEtablissementNombre(int nombre) {
        String etablissement = "";
        for (int nombreEtablissement = 1; nombreEtablissement <= nombre; nombreEtablissement++) {

            int numeroAdresse = (int) (Math.random() * 99) + 1;
            int pay=(int)(Math.random()*pays.length);

            int idEtabliss = (int) (Math.random() * nombrEtablissement) + 1;
            int no = (int) (Math.random() * nomEtablissement.length);
            int adress = (int) (Math.random() * adresseEtablissement.length);
            String adrr =numeroAdresse + " " + adresseEtablissement[adress] +" "+pays[pay];
            int GPS = (int) (Math.random() * 299999) + 1;
            int taille = (int) (Math.random() * 100) + 1;
            int idAvi = (int) (Math.random() * nombrAvis) + 1;
            
            if(idEtabliss==82)idAvi=1;
            if(idEtabliss==3){adrr=numeroAdresse + " " + adresseEtablissement[adress] +" Paris";idAvi=2;}
            if(idEtabliss==41)idAvi=4;
            if(idEtabliss==4){idAvi=5;no=2;adrr="2 "+adresseEtablissement[2]+" Londres";GPS=3;taille=4;}
            if(idEtabliss==5){idAvi=6;no=2;adrr="2 "+adresseEtablissement[2]+" Londres";GPS=3;taille=4;}
            if(idEtabliss==6){idAvi=7;no=4;adrr="2 "+adresseEtablissement[4]+" Londres";GPS=5;taille=100;}
            if(idEtabliss==7){idAvi=8;no=4;adrr="2 "+adresseEtablissement[4]+" Londres";GPS=5;taille=100;}
            if(idEtabliss==45){idAvi=12;no=6;adrr="4 "+adresseEtablissement[6]+" Londres";GPS=9;taille=110;}
            if(idEtabliss==45){idAvi=13;no=6;adrr="4 "+adresseEtablissement[6]+" Londres";GPS=9;taille=110;}
            if(idEtabliss==10){idAvi=14;}
            if(idEtabliss==51){idAvi=33;}
            if(idEtabliss==52){idAvi=34;}
            
            etablissement += idEtabliss + ",";
            etablissement += nomEtablissement[no] + ",";
            etablissement += adrr+ ",";
            etablissement += GPS + ",";
            etablissement += taille + ",";
            etablissement += idAvi;

            etablissement += "\n";

            String path = "etablissement.dat";
            ecrire(path, etablissement);
        }
    }

    public static void TableProprietaireNombre(int nombre) {
        String proprietaire = "";
        for (int nombreProprio = 71; nombreProprio <= (71+nombre); nombreProprio++) {

            int idUtilisateur = nombreProprio;
            int statu = (int) (Math.random() * statut.length);
            int idCommentair = (int) (Math.random() * nombrCommentaire) + 1;
            int idEtabliss = (int) (Math.random() * nombrEtablissement) + 1;
            
            if(idUtilisateur==73){idEtabliss=45;}

            proprietaire += idUtilisateur + ",";
            proprietaire += statut[statu] + ",";
            proprietaire += idEtabliss + ",";
            proprietaire += idCommentair;

            proprietaire += "\n";

            String path = "proprietaire.dat";
            ecrire(path, proprietaire);
        }
    }

    public static void TableVoyageurNombre(int nombre) {
        String voyageur = "";
        for (int nombreVoyageur = 1; nombreVoyageur <= nombre; nombreVoyageur++) {

            int idUtilisateur = nombreVoyageur;
            int statu = (int) (Math.random() * statut.length);
            int idAvi = (int) (Math.random() * nombrAvis) + 1;
            
            if(idAvi==5 || idAvi==6){idUtilisateur=6;}
            if(idAvi==7 || idAvi==8){idUtilisateur=7;}
            if(idAvi==12 || idAvi==13){idUtilisateur=8;}
            if(idAvi==14){idUtilisateur=11;}
            if(idAvi==33|| idAvi==34){idUtilisateur=33;}
            

            voyageur += idUtilisateur + ",";
            voyageur += statut[statu] + ",";
            voyageur += idAvi;

            voyageur += "\n";

            String path = "voyageur.dat";
            ecrire(path, voyageur);
        }
    }

    public static void TableUtilisateurNombre(int nombre) {

        String utilisateur = "";
        for (int nombreUtilisateur = 1; nombreUtilisateur <= nombre; nombreUtilisateur++) {

            int pseud = (int) (Math.random() * pseudo.length);
            int n = (int) (Math.random() * nom.length);
            int p = (int) (Math.random() * prenom.length);
            int emai = (int) (Math.random() * email.length);
            int pay = (int) (Math.random() * pays.length);
            int age = (int) (Math.random() * 99) + 18; // age entre 18 et 99+18
            int localisation = (int)(Math.random()*299999)+1;
            int partenair = (int) (Math.random() * partenaire.length);
            int idCommentaire = (int) (Math.random() * nombrCommentaire) + 1;
            
            if(nombreUtilisateur==30){idCommentaire=1;}

            utilisateur += nombreUtilisateur + ",";         //idUtilisateur
            utilisateur += pseudo[pseud] + ",";
            utilisateur += prenom[p] + ",";
            utilisateur += nom[n] + ",";
            utilisateur += prenom[p] + email[emai] + ",";
            utilisateur += pays[pay] + ",";
            utilisateur += age + ",";
            utilisateur += localisation + ",";
            utilisateur += partenaire[partenair] + ",";
            utilisateur += idCommentaire;

            utilisateur += "\n";

            String path = "utilisateur.dat";
            ecrire(path, utilisateur);
        }
    }

    public static void ecrire(String path, String text) {
        PrintWriter ecri;
        try {
            ecri = new PrintWriter(new FileWriter(path));
            ecri.print(text);
            ecri.flush();
            ecri.close();
        }//try
        catch (NullPointerException a) {
            System.out.println("Erreur : pointeur null");
        } catch (IOException a) {
            System.out.println("Probleme d'IO");
        }
    }//ecrire

}
