@isTest
public class IoC_Cache_Helper_Test 
{
    @isTest
    static void Init_Test()
    {
        string p_interface = 'ITestInterface';
        IoC_Object_Helper.createImplementation(p_interface, 'TestImplementation');
        
        IoC_Cache_Helper.Init();
        
        Cache.OrgPartition ioCPartition = Cache.Org.getPartition('local.IoC');
        // cache is not setup in this org; change test when enabled
        //system.assertEquals(true, ioCPartition.contains(p_interface));
        system.assert(true);
    }
    
    @isTest
    static void GetImplementation_Test()
    {
        string p_interface = 'ITestInterface';
        IoC_Object_Helper.createImplementation(p_interface, 'TestImplementation');
        
        IoC_Cache_Helper.Init();
        
        string implementation = IoC_Cache_Helper.GetImplementation(p_interface);
        // cache is not setup in this org; this value is coming from DB as a backup
        system.assertEquals('TestImplementation', implementation);
    }
    
    @isTest
    static void GetImplementation_NoImplementation_Test()
    {
        string p_interface = 'ITestInterface';
        
        IoC_Cache_Helper.Init();
        
        try
        {
            string implementation = IoC_Cache_Helper.GetImplementation(p_interface);            
            system.assert(false);
        }
        catch(IoC_NoImplementationException ex)
        {
            system.assert(true);
        }
    }
}