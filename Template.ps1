# #requires <Enter requirements, such as Modules, PSSnapins, PSVersion>

<#
  .SYNOPSIS
  <Enter short description>

  .DESCRIPTION
  <Enter long description>

  .EXAMPLE
  <Enter example>

  .NOTES
  ---------------------------------------------------------------------------
  Filename     : <Enter filename>.ps1
  Created on   : <Enter creation date>
  Created by   : <Enter author>
  Organization : <Enter organization>
  ---------------------------------------------------------------------------
#>
[CmdletBinding(SupportsShouldProcess=$true)]
Param
(
  # <Define parameters as required>
)


#------------------------------------------------------------------------------
#region Helper functions

# <Define functions as required>

#endregion
#------------------------------------------------------------------------------


#------------------------------------------------------------------------------
#region Initialize

Set-StrictMode -Version Latest

$ErrorActionPreference = 'Stop'

$IsSuccessful = $false
$Result = @{
  Success = @{
    ExitCode = 0; Message = 'succeeded'
  }
  SampleStep1Failed = @{
    ExitCode = 1; Message = 'failure: ...'
  }
  SampleStep2Failed = @{
    ExitCode = 2; Message = 'failure: ...'
  }
  SampleStep3Failed = @{
    ExitCode = 3; Message = 'failure: ...'
  }
  Unknown = @{
    ExitCode = 100; Message = 'unknown error'
  }
}
$ScriptResult = @{}
$ScriptResultOnError = $Result.Unknown

#endregion
#------------------------------------------------------------------------------


#------------------------------------------------------------------------------
#region Main

try
{
  #----------------------------------------------------------------------------
  #region Step 1

  $ScriptResultOnError = $Result.SampleStep1Failed


  # <Add code for step 1>

  # <Validate result and stop script processing w/ break or throw as neccessary>

  #endregion
  #------------------------------------------------------------------------- #>


  #----------------------------------------------------------------------------
  #region Step 2

  $ScriptResultOnError = $Result.SampleStep2Failed


  # <Add code for step 2>

  # <Validate result and stop script processing w/ break or throw as neccessary>

  #endregion
  #------------------------------------------------------------------------- #>


  #----------------------------------------------------------------------------
  #region Step 3

  $ScriptResultOnError = $Result.SampleStep3Failed


  # <Add code for step 3>

  # <Validate result and stop script processing w/ break or throw as neccessary>

  #endregion
  #------------------------------------------------------------------------- #>


  #----------------------------------------------------------------------------
  #region Set Success

  $IsSuccessful = $true

  #endregion
  #------------------------------------------------------------------------- #>
}
catch
{
  #----------------------------------------------------------------------------
  #region Code for exceptions and throw statements

  $_.Exception.Message | Write-Error

  #endregion
  #------------------------------------------------------------------------- #>
}
finally
{
  if ($IsSuccessful)
  {
    $ScriptResult = $Result.Success
  }
  else
  {
    $ScriptResult = $ScriptResultOnError
  }

  # Pass back script result, for example...
  Write-Output $ScriptResult.Message
  [System.Environment]::Exit($ScriptResult.ExitCode)
}

#endregion
#------------------------------------------------------------------------------
