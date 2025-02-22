# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

@{
# Script module or binary module file associated with this manifest.
RootModule = 'PowerStig.psm1'

# Version number of this module.
ModuleVersion = '3.3.0'

# ID used to uniquely identify this module
GUID = 'a132f6a5-8f96-4942-be25-b213ee7e4af3'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Copyright (c) Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'The PowerStig module provides a set of PowerShell classes to access DISA STIG settings extracted from the xccdf. The module provides a unified way to access the parsed STIG data by enabling the concepts of:
1. Exceptions (overriding and auto-documenting)
2. Ignoring a single or entire class of rules (auto-documenting)
3. Organizational settings to address STIG rules that have allowable ranges.

This module is intended to be used by additional automation as a lightweight portable “database” to audit and enforce the parsed STIG data.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
CLRVersion = '4.0'

# Modules that must be imported into the global environment prior to importing this module
RequiredModules  = @(
    @{ModuleName = 'AuditPolicyDsc'; ModuleVersion = '1.2.0.0'},
    @{ModuleName = 'AuditSystemDsc'; ModuleVersion = '1.0.0'},
    @{ModuleName = 'AccessControlDsc'; ModuleVersion = '1.4.0.0'},
    @{ModuleName = 'ComputerManagementDsc'; ModuleVersion = '6.2.0.0'},
    @{ModuleName = 'FileContentDsc'; ModuleVersion = '1.1.0.108'},
    @{ModuleName = 'PolicyFileEditor'; ModuleVersion = '3.0.1'},
    @{ModuleName = 'PSDscResources'; ModuleVersion = '2.10.0.0'},
    @{ModuleName = 'SecurityPolicyDsc'; ModuleVersion = '2.4.0.0'},
    @{ModuleName = 'SqlServerDsc'; ModuleVersion = '12.1.0.0'},
    @{ModuleName = 'WindowsDefenderDsc'; ModuleVersion = '1.0.0.0'},
    @{ModuleName = 'xDnsServer'; ModuleVersion = '1.11.0.0'},
    @{ModuleName = 'xWebAdministration'; ModuleVersion = '2.5.0.0'}
)

# DSC resources to export from this module
DscResourcesToExport = @(
    'DotNetFramework',
    'FireFox',
    'IisServer',
    'IisSite',
    'InternetExplorer',
    'Office',
    'OracleJRE',
    'SqlServer',
    'WindowsClient',
    'WindowsDefender',
    'WindowsDnsServer',
    'WindowsFirewall',
    'WindowsServer'
)

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'Get-DomainName',
    'Get-Stig',
    'New-StigCheckList'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'DSC','DesiredStateConfiguration','STIG','PowerStig'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/Microsoft/PowerStig/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Microsoft/PowerStig'

        # ReleaseNotes of this module
        ReleaseNotes = '* Added support for Windows 10, Version 1, Release 17 [#442](https://github.com/microsoft/PowerStig/issues/442)
        * Updated PowerSTIG to leverage AuditSetting instead of the Script resource. Additionally renamed WmiRule to AuditSettingRule [#431](https://github.com/Microsoft/PowerStig/issues/431)
        * Fixed [#419](https://github.com/Microsoft/PowerStig/issues/419): PowerStig is creating resource xSSLSettings with the wrong value for Name.
        * Added support for Windows Defender, Version 1, Release 5 [#393](https://github.com/microsoft/PowerStig/issues/393)
        * Added support for Internet Explorer 11 Version 1, Release 17 [#422](https://github.com/Microsoft/PowerStig/issues/422)
        * Added support for Server 2016 STIG, Version 1, Release 8 [#418](https://github.com/Microsoft/PowerStig/issues/418)'
        } # End of PSData hashtable
    } # End of PrivateData hashtable
}
