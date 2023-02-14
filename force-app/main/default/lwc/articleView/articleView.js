import { LightningElement,api } from 'lwc';
import Id from '@salesforce/user/Id';
import insertDataRef from '@salesforce/apex/DataKnowArticle.insertData';
export default class ArticleView extends LightningElement {
   @api recordId;
   constructor(){
      super();
   }

   connectedCallback(){
      let userId = Id;
      let recordKn = this.recordId;
     console.log(this.recordId + ' from connectedCallback')
     console.log("User" + Id );


         insertDataRef({ 
             idUser : userId, 
             idArticle : recordKn
         })
         .then(result => {
           /*  const event = new ShowToastEvent({
                 title: 'Contact created',
                 message: 'New Contact '+ this.a_First_Name_Ref +' '+ this.a_Last_Name_Ref +' created.',
                 variant: 'success'
             });*/
            // this.dispatchEvent(event);
         })
         .catch(error => {
             /*const event = new ShowToastEvent({
                 title : 'Error',
                 message : 'Error creating contact. Please Contact System Admin',
                 variant : 'error'
             });*/
             //this.dispatchEvent(event);
         });
    
   }


}