import DS from "ember-data";

var Fellow = DS.Model.extend({
    image: DS.attr('string'),
    name: DS.attr('string'),
    nonprofit: DS.attr('string'),
    benefactor: DS.attr('string'),
    github: DS.attr('string'),
    employer: DS.attr('string'),
    metro: DS.attr('string'),
    cohort: DS.attr('string'),
  });
 
 Fellow.reopenClass({
  FIXTURES: [
    {id: "1", image: 'images/alexandra.jpg', name: 'Alexandra Ackerman', nonprofit: "images/cododojo.png",benefactor: "..", github: "",employer: "",metro: "",cohort: "",},
    {id: "2", image: 'images/liza.png', name: 'Liza Ramo', nonprofit: "GOLDHOUSE",benefactor: "..", github: "",employer: "",metro: "",cohort: "",},  
    {id: "3", image: 'images/patrick.png', name: 'Patrick Karsh', nonprofit: "GOLDHOUSE",benefactor: "..", github: "",employer: "",metro: "",cohort: "",},  
    {id: "4", image: 'images/jessica.JPG', name: 'Jessica Franko', nonprofit: "GOLDHOUSE",benefactor: "..", github: "",employer: "",metro: "",cohort: "",},  
    {id: "5", image: 'images/will.JPG', name: 'Will Schang', nonprofit: "GOLDHOUSE",benefactor: "..", github: "",employer: "",metro: "",cohort: "",},    
   ]
 });
 
 export default Fellow;
 