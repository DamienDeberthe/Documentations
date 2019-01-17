//L'application requiert l'utilisation du module Express.
//La variable express nous permettra d'utiliser les fonctionnalités du module Express.
var express = require('express');
// Paramètres serveur
var hostname = 'localhost';
var port = 3000;

// Creation objet Express
var app = express();

//Afin de faciliter le routage (les URL que nous souhaitons prendre en charge dans notre API), nous créons un objet Router.
//C'est à partir de cet objet myRouter, que nous allons implémenter les méthodes.
var myRouter = express.Router();



// -----------------------------------------------------------------
// ROUTES

// Route '/'
myRouter.route('/')
// all permet de prendre en charge toutes les méthodes.
.all(function(req,res){ res.json({message : "Welcome to API", methode : req.method}); });


// Route '/r1'
myRouter.route('/r1')
// Implémente méthodes GET, PUT, UPDATE, DELETE
// GET simple
// .get(function(req,res){ res.json({message : "GET r1", methode : req.method}); })
// GET with id
.get(function(req,res){ res.json({ message : "GET r1", r1_id1 : req.query.r1_id1, methode : req.method }); })
//POST
.post(function(req,res){ res.json({message : "POST r1", methode : req.method}); })
//PUT
.put(function(req,res){ res.json({message : "PUT r1", methode : req.method}); })
//DELETE
.delete(function(req,res){ res.json({message : "DELETE r1", methode : req.method}); });


// Route '/r1/id'
myRouter.route('/r1/:id')
//GET
.get(function(req,res){ res.json({message : "GET r1 id" + req.params.r1_id}); })
//POST
.post(function(req,res){ res.json({message : "POST r1 id" + req.params.r1_id}); })
//PUT
.put(function(req,res){ res.json({message : "PUT r1 id" + req.params.r1_id}); })
//DELETE
.delete(function(req,res){ res.json({message : "DELETE r1 id" + req.params.r1_id}); });


// Route '/r2'
myRouter.route('/r2')
// Implémente méthodes GET, PUT, UPDATE, DELETE
// GET simple
// .get(function(req,res){ res.json({message : "GET r2", methode : req.method}); })
// GET with id
.get(function(req,res){ res.json({
        message : "GET r2",
        r2_id1 : req.query.r2_id1,
        r2_id2 : req.query.r2_id2,
        methode : req.method }); })
//POST
.post(function(req,res){ res.json({message : "POST r2", methode : req.method}); })
//PUT
.put(function(req,res){ res.json({message : "PUT r2", methode : req.method}); })
//DELETE
.delete(function(req,res){ res.json({message : "DELETE r2", methode : req.method}); });


// -----------------------------------------------------------------


// Nous demandons à l'application d'utiliser notre routeur
app.use(myRouter);

// Démarrer le serveur
app.listen(port, hostname, function(){
        console.log("Go to: http://"+ hostname +":"+port);
});
