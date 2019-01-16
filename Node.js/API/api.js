//L'application requiert l'utilisation du module Express.
//La variable express nous permettra d'utiliser les fonctionnalités du module Express.
var express = require('express');
// Nous définissons ici les paramètres du serveur.
var hostname = 'localhost';
var port = 3000;

// Nous créons un objet de type Express. 
var app = express();

//Afin de faciliter le routage (les URL que nous souhaitons prendre en charge dans notre API), nous créons un objet Router.
//C'est à partir de cet objet myRouter, que nous allons implémenter les méthodes.
var myRouter = express.Router();

//ROUTES

//Route '/'
myRouter.route('/')
// all permet de prendre en charge toutes les méthodes. 
.all(function(req,res){ 
      res.json({message : "Welcome to API", methode : req.method});
});

// Route '/r1'
myRouter.route('/r1')
// J'implémente les méthodes GET, PUT, UPDATE et DELETE
// GET
.get(function(req,res){
	  res.json({message : "Get r1", methode : req.method});
})
//POST
.post(function(req,res){
      res.json({message : "Post r1", methode : req.method});
})
//PUT
.put(function(req,res){
      res.json({message : "Put r1", methode : req.method});
})
//DELETE
.delete(function(req,res){
res.json({message : "Delete r1", methode : req.method});
});

// Nous demandons à l'application d'utiliser notre routeur
app.use(myRouter);

// Démarrer le serveur
app.listen(port, hostname, function(){
	console.log("Go to: http://"+ hostname +":"+port);
});
