public with sharing class IoC_Cache_Helper 
{
    private static Cache.OrgPartition ioCPartition = Cache.Org.getPartition('local.IoC');
    
	public static void Init()
    {
        /*for(Concrete_Implementation__c ci : IoC_Object_Helper.getAllImplementations())
        {
            ioCPartition.put(ci.Interface__c, ci.Implementation__c);
        }*/
    }
    
    public static string GetImplementation(string p_interface)
    {
        /*string implementation = (string)ioCPartition.get(p_interface);
        
        if(implementation == null)
        {
            try
            {
                // cache miss.. fall back to DB and reload cache
                Concrete_Implementation__c ci = IoC_Object_Helper.GetImplementation(p_interface);
                ioCPartition.put(ci.Interface__c, ci.Implementation__c);
                implementation = ci.Implementation__c;
            }
            catch (IoC_NoImplementationException ex)
            {
                // there is no record of the interface
                throw ex;
            }
        }
        
        return implementation;*/
        return null;
    }
}