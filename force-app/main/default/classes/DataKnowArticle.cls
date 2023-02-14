public class DataKnowArticle {
    
    @AuraEnabled(Cacheable=false)
    public static void insertData(String idUser,String idArticle){
        
        addRecords(idUser,idArticle);
        
    }
    
    
    public static void addRecords(String idUser,String idArticle){
        User userR = [SELECT Id, Name,profile.name FROM User WHERE id =:idUser];
        Knowledge__kav articleInfo = [SELECT Id,ArticleNumber,Title FROM Knowledge__kav  WHERE id =:idArticle];
        
        try {
            KnowledgeArticlesStat__c articleStat = new KnowledgeArticlesStat__c(
                Article_ID__c = articleInfo.id,
                Article_Name__c = articleInfo.Title,
                Article_Number__c = articleInfo.ArticleNumber,
                User_Name__c = userR.Name,
                User_Profile__c = userR.profile.name
            );
            insert articleStat;
        } catch(DmlException e) {
            System.debug('An unexpected error has occurred: ' + e.getMessage());
        }
        
        //GEt user data
        //GEt article data
        
        system.debug('datos' + idUser +''+ idArticle);
    }
    
}