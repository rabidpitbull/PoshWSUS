function Get-PSWSUSConfig {
    
    <#
	.SYNOPSIS
        Shows WSUS Server config.
	
	.DESCRIPTION
		Gets an IUpdateServerConfiguration that you use to configure the WSUS server.
	
	.EXAMPLE
        Get-PSWSUSConfig

        Description
        -----------  
        This command will show full list of configuration parameters
	
	.OUTPUTS
		Microsoft.UpdateServices.Internal.BaseApi.UpdateServerConfiguration
	
	.NOTES
        Name: Get-PSWSUSConfig
        Author: Dubinsky Evgeny
        DateCreated: 1DEC2013

    .LINK
		http://blog.itstuff.in.ua/?p=62#Get-PSWSUSConfig
	
    .LINK
        http://msdn.microsoft.com/en-us/library/microsoft.updateservices.administration.iupdateserver.getconfiguration%28v=vs.85%29.aspx

	#>
	
    [CmdletBinding()]
    Param
    (
    )

    Begin
    {
        if($wsus){}#endif
        else
        {
            Write-Warning "Use Connect-PSWSUSServer for establish connection with your Windows Update Server"
            Break
        }
    }
    Process
    { 
        Write-Verbose "Getting WSUS Configuration"
        $wsus.GetConfiguration()
    }
    End{}
}
