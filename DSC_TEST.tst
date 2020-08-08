-- VectorCAST 18.sp4 (12/20/18)
-- Test Case Script
-- 
-- Environment    : DSC_TEST
-- Unit(s) Under Test: CpApDSC_DTCConfiguration CpApDSC_EventManager CpApDSC_FOTAUpdateTriggerHandling CpApDSC_Gen_ConfigurationDIDReadServices CpApDSC_Gen_ConfigurationDIDWriteServices CpApDSC_Gen_ReadMeasurementData CpApDSC_Gen_Routine
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: CpApDSC_DTCConfiguration

-- Subprogram: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_ReadData

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_ReadData.001
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_ReadData.001
TEST.NOTES:
Testcase checks if function RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_ReadData could executed successfully, and the veriable could be successly initialized.

function Sl_MemCpy execute failed!
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_4]
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_ReadData.return:RTE_E_OK
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.001
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.001
TEST.NOTES:
set _DtcConfiguration_State_0100 = SEARCH_LOCKS_STATE;
set return value = DCM_E_PENDING

Test function "search locks state" normal
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:SEARCH_LOCKS_STATE
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.002
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.002
TEST.NOTES:
set _DtcConfiguration_State_0100 = LOCKING_STATE;
set NvM_WriteBlock return value = 

Test function "search locks state" normal
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_10]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_11]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_12]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:LOCKING_STATE
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.return:0
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.003
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.003
TEST.NOTES:
\spec [UDD_DSC_SC_8] Function first checks the DTC configuration state.
\spec [UDD_DSC_SC_9] Then if configuration state is search locks state.
\spec [UDD_DSC_SC_10] Then iterates through DTC configuration table.
\spec [UDD_DSC_SC_11] Then if DTC that needs to be locked is found markes the corresponding bit in lock table.
\spec [UDD_DSC_SC_12] Else unlock DTC in the EventLockTable.
\spec [UDD_DSC_SC_13] Then switches the state to locking state.
\spec [UDD_DSC_SC_14] Then if state is locking state.
\spec [UDD_DSC_SC_15] Then loop through the lock table.
\spec [UDD_DSC_SC_16] Then deletes corresponding DTC from event memory.

set _DtcConfiguration_State_0100 = WRITE_TO_NVM_STATE;
set NvM_WriteBlock return value = RTE_E_OK
test return value = RTE_E_OK

Test function "Write to NvM state" normal
function Sl_MemCpy execute failed!


TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_16]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_17]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_18]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:WRITE_TO_NVM_STATE
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_OK
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.004
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.004
TEST.NOTES:
precondition:
_DtcConfiguration_State_0100 = SEARCH_LOCKS_STATE

set return value = DCM_E_PENDING
set DTCConfiguration_Table_0100[0][0].DtcInHex ==1
set Data[0]=0
set _LockTable_0100_Index == 1(let _LockTable_0100[0] don't access (if _LockTable_0100[_LockTable_0100_Index]) statement)

Test if Statement (if (0 != DTCConfiguration_Table_0100[i][mask].DtcInHex)) and DTC needs to be locked - mark corresponding bit in the Lock table
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:SEARCH_LOCKS_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100_Index:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data:<<malloc 1>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data[0][0]:0
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100[0]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.005
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.005
TEST.NOTES:
precondition:
_DtcConfiguration_State_0100 = SEARCH_LOCKS_STATE

set return value = DCM_E_PENDING
set DTCConfiguration_Table_0100[0][0].DtcInHex ==0

Test if Statement (if (0 != DTCConfiguration_Table_0100[i][mask].DtcInHex)) can't access
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:SEARCH_LOCKS_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data:<<malloc 1>>
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.006
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.006
TEST.NOTES:
\spec [UDD_DSC_SC_14] Then if state is locking state.
\spec [UDD_DSC_SC_14] Then if state is locking state.
\spec [UDD_DSC_SC_15] Then loop through the lock table.

precondition:
_DtcConfiguration_State_0100 = SEARCH_LOCKS_STATE

set return value = DCM_E_PENDING
set DTCConfiguration_Table_0100[1][0].DtcInHex ==1
set Data[1]=1((*Data)[i] & (1U << mask)==1)
set _LockTable_0100_Index == 2(let _LockTable_0100[1] don't access (if _LockTable_0100[_LockTable_0100_Index]) statement)

Test DTC needs to be unlocked,verifiy (CpApDSC_EventMngr_EventLockTable[1] &=~0x10  = 1)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_9]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_10]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:SEARCH_LOCKS_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100_Index:2
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0100[1][0].DtcInHex:1
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data:<<malloc 1>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data[0][0]:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data[0][1]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100[0]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.007
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.007
TEST.NOTES:
precondition:
_DtcConfiguration_State_0100 = LOCKING_STATE

set _LockTable_0100_Index=0;
set _LockTable_0100[0]=1;
set _LockTable_0100[1]=0;
set Dem_ClearDTC :
	DTC = 0;
	DTCFormat = DEM_DTC_FORMAT_UDS;
	DTCOrigin = DEM_DTC_ORIGIN_PRIMARY_MEMORY;
	DTCreturn = DEM_CLEAR_PENDING;

Test Event_Index needs to be locked

set function return value RetVal = DCM_E_PENDING

Test Clearing not finished - terminate loop and return PENDING
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_9]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_10]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_11]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_12]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_13]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100[0]:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100[1]:0
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100_Index:0
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data:<<malloc 1>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data[0][0]:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data[0][1]:1
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTC:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTCFormat:DEM_DTC_FORMAT_UDS
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTCOrigin:DEM_DTC_ORIGIN_PRIMARY_MEMORY
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_PENDING
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.008
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.008
TEST.NOTES:
precondition:
_DtcConfiguration_State_0100 = LOCKING_STATE
Test Event_Index needs to be locked

set Dem_ClearDTC return value RetVal = DEM_CLEAR_OK
set DTCConfiguration_Table_0100[0][0]=0
set CpApDSC_EventMngr_EventLockTable[0] = 15 verifiy value = 31

Test Clearing finished successfully,Set all DTC status bits to 0,Lock the DTC in the EventLockTable,Unmark corresponding bit in the Lock table
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_10]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_11]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_12]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_13]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_14]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_15]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:15
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100[0]:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100[1]:0
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100_Index:0
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data:<<malloc 1>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data[0][0]:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.Data[0][1]:1
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTC:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTCFormat:DEM_DTC_FORMAT_UDS
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTCOrigin:DEM_DTC_ORIGIN_PRIMARY_MEMORY
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_OK
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:31
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100[0]:0
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100[1]:0
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.009
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.009
TEST.NOTES:
Testcase checks if function RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData could executed successfully

precondition:
_DtcConfiguration_State_0100 = LOCKING_STATE

set _LockTable_0100_Index == 127;

verify when locktable Reached the end of the table ,_DtcConfiguration_State_0100 = WRITE_TO_NVM_STATE
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_11]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_12]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:LOCKING_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0100_Index:127
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:WRITE_TO_NVM_STATE
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.010
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.010
TEST.NOTES:
\spec [UDD_DSC_SC_19] Then if state is write to NvM.
\spec [UDD_DSC_SC_20] Then update values in Ram and Nvm.
\spec [UDD_DSC_SC_21] Then changes state to search locks state.

set _DtcConfiguration_State_0100 = WRITE_TO_NVM_STATE

set NvM_WriteBlock return value = RTE_E_INVALID

verify update value in NVUM

function Sl_MemCpy execute failed!
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_16]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_17]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_18]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:WRITE_TO_NVM_STATE
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_INVALID
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:RTE_E_INVALID
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.011
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.011
TEST.NOTES:
Testcase checks if function RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData could executed successfully

set _DtcConfiguration_State_0100 = 3

verify function return value = RTE_E_OK 


TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0100:3
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData.return:RTE_E_OK
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_ReadData

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_ReadData.001
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_ReadData.001
TEST.NOTES:
Test if RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_ReadData can exeute successfully
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_4]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_OK
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_ReadData.return:RTE_E_OK
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.001
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.001
TEST.NOTES:
set _DtcConfiguration_State_0102 = SEARCH_LOCKS_STATE;
set return value = DCM_E_PENDING

Test function "search locks state" normal
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:SEARCH_LOCKS_STATE
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.002
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.002
TEST.NOTES:
set _DtcConfiguration_State_0102 = LOCKING_STATE;
set NvM_WriteBlock return value = 

Test function "search locks state" normal
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_10]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_11]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_12]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:LOCKING_STATE
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.return:0
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.003
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.003
TEST.NOTES:
set _DtcConfiguration_State_0102 = WRITE_TO_NVM_STATE;
set NvM_WriteBlock return value = RTE_E_OK
test return value = RTE_E_OK

Test function "Write to NvM state" normal
function Sl_MemCpy execute failed!

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_16]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_17]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_18]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:WRITE_TO_NVM_STATE
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_OK
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.004
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.004
TEST.NOTES:


precondition:
_DtcConfiguration_State_0100 = SEARCH_LOCKS_STATE

set return value = DCM_E_PENDING
set DTCConfiguration_Table_0102[0][0].DtcInHex ==1
set Data[0]=0
set _LockTable_0102_Index == 1(let _LockTable_0100[0] don't access (if _LockTable_0102[_LockTable_0102_Index]) statement)

Test if Statement (if (0 != DTCConfiguration_Table_0102[i][mask].DtcInHex)) and DTC needs to be locked - mark corresponding bit in the Lock table
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:SEARCH_LOCKS_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102_Index:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data:<<malloc 1>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data[0]:<<malloc 2>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data[0]:"0"
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[0]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.005
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.005
TEST.NOTES:

precondition:
_DtcConfiguration_State_0102 = SEARCH_LOCKS_STATE

set return value = DCM_E_PENDING
set DTCConfiguration_Table_0102[0][0].DtcInHex ==0

Test if Statement (if (0 != DTCConfiguration_Table_0102[i][mask].DtcInHex)) can't access
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:SEARCH_LOCKS_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data:<<malloc 1>>
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.006
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.006
TEST.NOTES:
precondition:
_DtcConfiguration_State_0102 = SEARCH_LOCKS_STATE

set return value = DCM_E_PENDING
set DTCConfiguration_Table_0102[1][0].DtcInHex ==1
set Data[1]=1((*Data)[i] & (1U << mask)==1)
set _LockTable_0102_Index == 2(let _LockTable_0102[1] don't access (if _LockTable_0102[_LockTable_0102_Index]) statement)

Test DTC needs to be unlocked,verifiy (CpApDSC_EventMngr_EventLockTable[1] &=~0x10  = 1)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_9]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_10]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:SEARCH_LOCKS_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102_Index:2
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0102[1][0].DtcInHex:1
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data:<<malloc 1>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data[0][0]:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data[0][1]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[0]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.007
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.007
TEST.NOTES:


precondition:
_DtcConfiguration_State_0102 = LOCKING_STATE

set _LockTable_0102_Index=0;
set _LockTable_0102[0]=1;
set _LockTable_0102[1]=0;
set Dem_ClearDTC :
	DTC = 0;
	DTCFormat = DEM_DTC_FORMAT_UDS;
	DTCOrigin = DEM_DTC_ORIGIN_PRIMARY_MEMORY;
	DTCreturn = DEM_CLEAR_PENDING;

Test Event_Index needs to be locked

set function return value RetVal = DCM_E_PENDING

Test Clearing not finished - terminate loop and return PENDING
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_10]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_11]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_12]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_13]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_14]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_15]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:LOCKING_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[0]:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[1]:0
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102_Index:0
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data:<<malloc 1>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data[0][0]:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data[0][1]:1
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTC:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTCFormat:DEM_DTC_FORMAT_UDS
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.DTCOrigin:DEM_DTC_ORIGIN_PRIMARY_MEMORY
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_PENDING
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[0]:1
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.008
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.008
TEST.NOTES:

precondition:
_DtcConfiguration_State_0102 = LOCKING_STATE
Test Event_Index needs to be locked

set Dem_ClearDTC return value RetVal = DEM_CLEAR_OK
set DTCConfiguration_Table_0102[0][0]=0
set CpApDSC_EventMngr_EventLockTable[0] = 15 verifiy value = 31

Test Clearing finished successfully,Set all DTC status bits to 0,Lock the DTC in the EventLockTable,Unmark corresponding bit in the Lock table
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_10]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_11]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_12]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_13]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_14]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_15]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_7]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:15
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[0]:1
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[1]:0
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102_Index:0
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data:<<malloc 1>>
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data[0][0]:0
TEST.VALUE:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.Data[0][1]:1
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_OK
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:31
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[0]:0
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102[1]:0
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.009
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.009
TEST.NOTES:
Testcase checks if function RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData could executed successfully

precondition:
_DtcConfiguration_State_0102 = LOCKING_STATE

set _LockTable_0102_Index == 127;

verify when locktable Reached the end of the table ,_DtcConfiguration_State_0102 = WRITE_TO_NVM_STATE
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_11]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_12]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:LOCKING_STATE
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._LockTable_0102_Index:127
TEST.EXPECTED:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:WRITE_TO_NVM_STATE
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.010
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.010
TEST.NOTES:
\spec [UDD_DSC_SC_19] Then if state is write to NvM.
\spec [UDD_DSC_SC_20] Then update values in Ram and Nvm.
\spec [UDD_DSC_SC_21] Then changes state to search locks state.

set _DtcConfiguration_State_0102 = WRITE_TO_NVM_STATE

set NvM_WriteBlock return value = RTE_E_INVALID

verify update value in NVUM

function Sl_MemCpy execute failed!
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_16]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_17]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_18]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:WRITE_TO_NVM_STATE
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_INVALID
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:RTE_E_INVALID
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.011
TEST.UNIT:CpApDSC_DTCConfiguration
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.011
TEST.NOTES:
Testcase checks if function RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0100_Read_WriteData could executed successfully

set _DtcConfiguration_State_0102 = 3

verify function return value = RTE_E_OK 
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5]
TEST.VALUE:CpApDSC_DTCConfiguration.<<GLOBAL>>._DtcConfiguration_State_0102:3
TEST.EXPECTED:CpApDSC_DTCConfiguration.RCtApDSC_SH00_DataServices_Data_DTCConfigurationIdentifier_0102_Read_WriteData.return:RTE_E_OK
TEST.END

-- Unit: CpApDSC_EventManager

-- Subprogram: CpApDSC_DTC_DynamicLocking

-- Test Case: CpApDSC_DTC_DynamicLocking.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_DTC_DynamicLocking
TEST.NEW
TEST.NAME:CpApDSC_DTC_DynamicLocking.001
TEST.NOTES:
Testcase checks if function CpApDSC_DTC_DynamicLocking works.

\spec [UDD_DSC_SH_SC_EP21H2_1069] Function starts with looping through the event lock table.
\spec [UDD_DSC_SH_SC_EP21H2_1070] Then checks whether the event id matches.

set DynamicDtcLockMapping_Table[0~2] EventIDCheck = 0; DynamicDtcLockMapping_Table[3].EventIDCheck = EventId

check when event id matches,if statement can works;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1069]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1070]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[0].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[1].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[2].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[3].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventId:3
TEST.END

-- Test Case: CpApDSC_DTC_DynamicLocking.002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_DTC_DynamicLocking
TEST.NEW
TEST.NAME:CpApDSC_DTC_DynamicLocking.002
TEST.NOTES:
Testcase checks if function CpApDSC_DTC_DynamicLocking works.

\spec [UDD_DSC_SH_SC_EP21H2_1069] Function starts with looping through the event lock table.
\spec [UDD_DSC_SH_SC_EP21H2_1070] Then checks whether the event id matches.
\spec [UDD_DSC_SH_SC_EP21H2_1071] Then checks event status.
\spec [UDD_DSC_SH_SC_EP21H2_1072] Then checks If event status is failed or prefailed.
\spec [UDD_DSC_SH_SC_EP21H2_1073] Then locks the dependant DTC.

set DynamicDtcLockMapping_Table[0] EventIDCheck = 3; DynamicDtcLockMapping_Table[0].EventIDCheck = EventId;EventStatus = DEM_EVENT_STATUS_FAILED

Lock the dependant DTC(CpApDSC_EventMngr_EventLockTable[CpApDSC_DynamicDtcLockMapping_Table[0].EventIDLock] |= 0x10;)

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1069]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1070]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1071]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1072]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1073]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[0].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[1].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[2].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[3].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventId:3
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventStatus:DEM_EVENT_STATUS_FAILED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0x10
TEST.ATTRIBUTES:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[3]:EXPECTED_BASE=16
TEST.END

-- Test Case: CpApDSC_DTC_DynamicLocking.003
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_DTC_DynamicLocking
TEST.NEW
TEST.NAME:CpApDSC_DTC_DynamicLocking.003
TEST.NOTES:
Testcase checks if function CpApDSC_DTC_DynamicLocking works.

\spec [UDD_DSC_SH_SC_EP21H2_1069] Function starts with looping through the event lock table.
\spec [UDD_DSC_SH_SC_EP21H2_1070] Then checks whether the event id matches.
\spec [UDD_DSC_SH_SC_EP21H2_1071] Then checks event status.
\spec [UDD_DSC_SH_SC_EP21H2_1072] Then checks If event status is failed or prefailed.
\spec [UDD_DSC_SH_SC_EP21H2_1073] Then locks the dependant DTC.

set DynamicDtcLockMapping_Table[0] EventIDCheck = 3; DynamicDtcLockMapping_Table[0].EventIDCheck = EventId;EventStatus = DEM_EVENT_STATUS_FAILED

Lock the dependant DTC(CpApDSC_EventMngr_EventLockTable[CpApDSC_DynamicDtcLockMapping_Table[0].EventIDLock] |= 0x10;)

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1069]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1070]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1071]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1072]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1073]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[0].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[1].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[2].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[3].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventId:3
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventStatus:DEM_EVENT_STATUS_PREFAILED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0x10
TEST.ATTRIBUTES:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[3]:EXPECTED_BASE=16
TEST.END

-- Test Case: CpApDSC_DTC_DynamicLocking.004
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_DTC_DynamicLocking
TEST.NEW
TEST.NAME:CpApDSC_DTC_DynamicLocking.004
TEST.NOTES:
Testcase checks if function CpApDSC_DTC_DynamicLocking works.

\spec [UDD_DSC_SH_SC_EP21H2_1069] Function starts with looping through the event lock table.
\spec [UDD_DSC_SH_SC_EP21H2_1070] Then checks whether the event id matches.
\spec [UDD_DSC_SH_SC_EP21H2_1071] Then checks event status.
\spec [UDD_DSC_SH_SC_EP21H2_1074] Else if event status is passed or prepassed.
\spec [UDD_DSC_SH_SC_EP21H2_1075] Then checks if DTC can be locked by multiple sources.
\spec [UDD_DSC_SH_SC_EP21H2_1076] Then checks if DTC is still locked by other DTC.
\spec [UDD_DSC_SH_SC_EP21H2_1077] Then if condition is met,lock the dependant DTC.
\spec [UDD_DSC_SH_SC_EP21H2_1078] Else if DTC is not locked by other DTC,unlock the dependant DTC.

set DynamicDtcLockMapping_Table[0] EventIDCheck = 3; DynamicDtcLockMapping_Table[0].EventIDCheck = EventId;EventStatus = DEM_EVENT_STATUS_PREPASSED
set RPpEventHandling_GetEventStatus and Dem_GetEventStatus return value = 0

set CpApDSC_DynamicDtcLockMapping_Table[0].EventIDLock = 3
CpApDSC_EventMngr_EventLockTable[3] = 3
Unlock dependant DTC in case it's not locked by other DTCs;

expect value CpApDSC_DynamicDtcLockMapping_Table[0].EventIDLock = (50101);
DTC_DYNAMIC_LOCK_VALUE = 0x10(1010b) ~DTC_DYNAMIC_LOCK_VALUE = 0x05(0101b)


TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1069]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1070]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1071]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1074]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1075]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1076]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1077]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1078]
TEST.FLOATING_POINT_TOLERANCE:100.0000%
TEST.VALUE:<<OPTIONS>>.EVENT_LIMIT:3000
TEST.STUB:CpApDSC_EventManager.RPpEventHandling_GetEventStatus
TEST.VALUE:uut_prototype_stubs.Dem_GetEventStatus.EventId:3
TEST.VALUE:uut_prototype_stubs.Dem_GetEventStatus.EventStatusExtended[0]:0
TEST.VALUE:uut_prototype_stubs.Dem_GetEventStatus.return:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[3]:3
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[0].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[0].EventIDLock:3
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[1].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[2].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[3].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventId:3
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventStatusExtended[0]:0
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventId:3
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventStatus:DEM_EVENT_STATUS_PREPASSED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[3]:0x3
TEST.ATTRIBUTES:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:EXPECTED_BASE=16
TEST.END

-- Test Case: CpApDSC_DTC_DynamicLocking.005
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_DTC_DynamicLocking
TEST.NEW
TEST.NAME:CpApDSC_DTC_DynamicLocking.005
TEST.NOTES:
Testcase checks if function CpApDSC_DTC_DynamicLocking works.

\spec [UDD_DSC_SH_SC_EP21H2_1069] Function starts with looping through the event lock table.
\spec [UDD_DSC_SH_SC_EP21H2_1070] Then checks whether the event id matches.
\spec [UDD_DSC_SH_SC_EP21H2_1071] Then checks event status.
\spec [UDD_DSC_SH_SC_EP21H2_1079] Else returns message with unknown event status received.

set EventStatus = 4;

Unknown EventStatus received

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1069]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1070]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1071]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1079]
TEST.VALUE:<<OPTIONS>>.EVENT_LIMIT:3000
TEST.STUB:CpApDSC_EventManager.RPpEventHandling_GetEventStatus
TEST.VALUE:uut_prototype_stubs.Dem_GetEventStatus.EventId:3
TEST.VALUE:uut_prototype_stubs.Dem_GetEventStatus.EventStatusExtended[0]:0
TEST.VALUE:uut_prototype_stubs.Dem_GetEventStatus.return:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[0].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[1].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[2].EventIDCheck:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_DynamicDtcLockMapping_Table[3].EventIDCheck:3
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventId:3
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventStatusExtended[0]:0
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventId:3
TEST.VALUE:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventStatus:4
TEST.ATTRIBUTES:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:EXPECTED_BASE=16
TEST.ATTRIBUTES:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[3]:EXPECTED_BASE=16
TEST.END

-- Subprogram: CpApDSC_EventManager_Init

-- Test Case: CpApDSC_EventManager_Init.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_EventManager_Init
TEST.NEW
TEST.NAME:CpApDSC_EventManager_Init.001
TEST.NOTES:
Testcase checks if function CpApDSC_EventManager_Init could executed successfully, and the veriable could be successly initialized.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1007]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1008]
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventIndex_Send:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventIndex_SetEventsSH:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._DTCConfiguration_Flag:0
TEST.FLOW
  CpApDSC_EventManager.c.CpApDSC_EventManager_Init
  CpApDSC_EventManager.c.CpApDSC_EventManager_Init
TEST.END_FLOW
TEST.END

-- Subprogram: CpApDSC_EventManager_Main

-- Test Case: CpApDSC_EventManager_Main.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_EventManager_Main
TEST.NEW
TEST.NAME:CpApDSC_EventManager_Main.001
TEST.NOTES:
Testcase checks if function CpApDSC_EventManager_Main works according to specification when _DTCConfiguration_Flag is set to 1.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1012]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1014]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1015]
TEST.VALUE:uut_prototype_stubs.Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return:RTE_E_NOT_UPDATED
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._DTCConfiguration_Flag:1
TEST.END

-- Test Case: CpApDSC_EventManager_Main.002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_EventManager_Main
TEST.NEW
TEST.NAME:CpApDSC_EventManager_Main.002
TEST.NOTES:
Testcase checks if function CpApDSC_EventManager_Main works according to specification when _DTCConfiguration_Flag is set to 0.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1012]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1013]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1014]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1015]
TEST.VALUE:uut_prototype_stubs.Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return:RTE_E_NOT_UPDATED
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._DTCConfiguration_Flag:0
TEST.END

-- Subprogram: CpApDSC_InitEventTable

-- Test Case: CpApDSC_InitEventTable.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:CpApDSC_InitEventTable
TEST.NEW
TEST.NAME:CpApDSC_InitEventTable.001
TEST.NOTES:
Testcase checks if function CpApDSC_InitEventTable could executed successfully.

 *  \spec [UDD_DSC_SH_SC_EP21H2_1032] Iterates through _CpApDSC_EventMngr_EventTable with Index value starting from zero
 *                       to DEH_MAX_NUMBER_OF_EVENTPATHS.
 *  \spec [UDD_DSC_SH_SC_EP21H2_1033] Iterates through StatusOfDtc with Index2 value starting from zero to maximum number of DTC states.
 *  \spec [UDD_DSC_SH_SC_EP21H2_1034] Then initialize all events and status table to not tested.
 *  \spec [UDD_DSC_SH_SC_EP21H2_1035] Then initialize all ReadPosition and WritePosition to zero.
 *  \spec [UDD_DSC_SH_SC_EP21H2_1036] Then initialize all EventLockTable to zero.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1032]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1034]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1033]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1035]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1036]
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].ReadPosition:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].WritePosition:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].StatusOfDtc[0]:DSC_EVENT_NOT_TESTED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].StatusOfDtc[1]:DSC_EVENT_NOT_TESTED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].StatusOfDtc[2]:DSC_EVENT_NOT_TESTED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].StatusOfDtc[3]:DSC_EVENT_NOT_TESTED
TEST.END

-- Subprogram: RPpEventHandling_GetEventStatus

-- Test Case: RPpEventHandling_GetEventStatus.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_GetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_GetEventStatus.001
TEST.NOTES:
\spec [UDD_DSC_SH_SC_EP21H2_1029] Checks if EventId is smaller than maximum allowed boundry.
\spec [UDD_DSC_SH_SC_EP21H2_1030] And EventStatusExtended is not NULL_PTR.

set EventID larger than maximun allowed boundry(DEH_MAX_NUMBER_OF_EVENTPATHS 156)
set NULL_PTR != EventStatusExtended

Program Can't call funtion Dem_GetEventStatus
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1029]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1030]
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventId:157
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventStatusExtended:<<malloc 1>>
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventStatusExtended[0]:1
TEST.END

-- Test Case: RPpEventHandling_GetEventStatus.002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_GetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_GetEventStatus.002
TEST.NOTES:
\spec [UDD_DSC_SH_SC_EP21H2_1029] Checks if EventId is smaller than maximum allowed boundry.
\spec [UDD_DSC_SH_SC_EP21H2_1030] And EventStatusExtended is not NULL_PTR.
\spec [UDD_DSC_SH_SC_EP21H2_1031] Then calls Dem_GetEventStatus with EventId and EventStatusExtended.

set EventID smaller than maximun allowed boundry(DEH_MAX_NUMBER_OF_EVENTPATHS 156)
set NULL_PTR != EventStatusExtended

Program Can call funtion Dem_GetEventStatus
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1029]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1030]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1031]
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventId:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventStatusExtended:<<malloc 1>>
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_GetEventStatus.EventStatusExtended[0]:1
TEST.FLOW
  CpApDSC_EventManager.c.RPpEventHandling_GetEventStatus
  uut_prototype_stubs.Dem_GetEventStatus
  CpApDSC_EventManager.c.RPpEventHandling_GetEventStatus
TEST.END_FLOW
TEST.END

-- Subprogram: RPpEventHandling_SetEventStatus

-- Test Case: RPpEventHandling_SetEventStatus.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.001
TEST.NOTES:
set EventId is set to 50, EventStatus is set to DEM_EVENT_STATUS_FAILED.

Testcase checks if function RPpEventHandling_SetEventStatus works
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1016]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1017]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1019]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1021]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1022]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1023]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1024]
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:50
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_FAILED
TEST.END

-- Test Case: RPpEventHandling_SetEventStatus.002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.002
TEST.NOTES:
set EventId is set out of the boundry 157, EventStatus is set to DEM_EVENT_STATUS_FAILED.

Testcase checks if function RPpEventHandling_SetEventStatus works
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1016]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1017]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1018]
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:157
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_FAILED
TEST.END

-- Test Case: RPpEventHandling_SetEventStatus.003
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.003
TEST.NOTES:
\spec [UDD_DSC_SC_39] Checks if event id is not higher than allowed boundry.
\spec [UDD_DSC_SC_40] And checks if EventStatus has valid status value.
\spec [UDD_DSC_SC_41] If EventStatus doesn't have valid status then returns wrong parameter message .

set EventId is set to 1, EventStatus is invalid and set to 5

Testcase checks if function RPpEventHandling_SetEventStatus works
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1016]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1017]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1018]
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:5
TEST.END

-- Test Case: RPpEventHandling_SetEventStatus.004
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.004
TEST.NOTES:


Testcase checks if function RPpEventHandling_SetEventStatus works according to specification

EventId is set to 1, EventStatus is set to DEM_EVENT_STATUS_FAILED,
set CpApDSC_EventMngr_EventLockTable[1] == 1,

Promgram can't access in if statement//if (CpApDSC_EventMngr_EventLockTable[EventId] == 0U)


TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1016]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1017]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1019]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1020]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].ReadPosition:22
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].WritePosition:22
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[0]:DEM_EVENT_STATUS_PASSED
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[1]:DEM_EVENT_STATUS_PASSED
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[2]:DEM_EVENT_STATUS_FAILED
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[3]:DEM_EVENT_STATUS_FAILED
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.FLOW
  CpApDSC_EventManager.c.RPpEventHandling_SetEventStatus
  CpApDSC_EventManager.c.RPpEventHandling_SetEventStatus
TEST.END_FLOW
TEST.END

-- Test Case: RPpEventHandling_SetEventStatus.005
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.005
TEST.NOTES:
Testcase checks if function RPpEventHandling_SetEventStatus works according to specification

EventId is set to 1, EventStatus is set to DEM_EVENT_STATUS_FAILED,
set CpApDSC_EventMngr_EventLockTable[1] == 0,

Promgram can access in if statement//if (CpApDSC_EventMngr_EventLockTable[EventId] == 0U)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1016]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1017]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1019]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1020]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:0
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.END

-- Test Case: RPpEventHandling_SetEventStatus.006
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.006
TEST.NOTES:
Testcase checks if function RPpEventHandling_SetEventStatus works according to specification

EventID set to 1,ReadPosition set to 2,WritePosition set to 2,ReadPosition = WritePostion;

Promgram can check FIFO Cyclic buffer is empty;

nWritePosition = 3;
pWritePosition = 1;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1021]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1022]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1023]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1024]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].ReadPosition:2
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].WritePosition:2
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:0
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].WritePosition:3
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[2]:0
TEST.END

-- Test Case: RPpEventHandling_SetEventStatus.007
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.007
TEST.NOTES:
\spec [UDD_DSC_SH_SC_EP21H2_1025] Else checks if the new EventStatus is different than current one in buffer.

Testcase checks if function RPpEventHandling_SetEventStatus works according to specification

EventID set to 1,ReadPosition set to 1,WritePosition set to 2

nWritePosition = 3;
pWritePosition = 1;

ReadPosition != WritePostion; 
(_CpApDSC_EventMngr_EventTable[1].StatusOfDtc[1]) == EventStatus

do nothing

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1025]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].ReadPosition:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].WritePosition:2
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:0
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:0
TEST.END

-- Test Case: RPpEventHandling_SetEventStatus.008
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.008
TEST.NOTES:
\spec [UDD_DSC_SH_SC_EP21H2_1025] Else checks if the new EventStatus is different than current one in buffer.
\spec [UDD_DSC_SH_SC_EP21H2_1026] Then checks if FIFO is full.
\spec [UDD_DSC_SH_SC_EP21H2_1027] If FIFO is not full update the buffer by setting eventstatus.

Testcase checks if function RPpEventHandling_SetEventStatus works according to specification

EventID set to 1,ReadPosition set to 1,WritePosition set to 2,_CpApDSC_EventMngr_EventTable[1].StatusOfDtc[1] = 1

nWritePosition = 3;
pWritePosition = 1;

ReadPosition != WritePostion; 
(_CpApDSC_EventMngr_EventTable[1].StatusOfDtc[1]) != EventStatus
nWritePosition != l_ReadPosition

FIFO isn't Full,Set the DTC status in the cyclic FIFO,Advance the write position by 1



TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1026]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1027]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].ReadPosition:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].WritePosition:2
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[1]:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:0
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].WritePosition:3
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[2]:0
TEST.END

-- Test Case: RPpEventHandling_SetEventStatus.009
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:RPpEventHandling_SetEventStatus
TEST.NEW
TEST.NAME:RPpEventHandling_SetEventStatus.009
TEST.NOTES:
\spec [UDD_DSC_SH_SC_EP21H2_1025] Else checks if the new EventStatus is different than current one in buffer.
\spec [UDD_DSC_SH_SC_EP21H2_1026] Then checks if FIFO is full.
\spec [UDD_DSC_SH_SC_EP21H2_1028] Else if FIFO is full prints message with indicating that FIFO is full.

Testcase checks if function RPpEventHandling_SetEventStatus works according to specification

EventID set to 1,ReadPosition set to 3,WritePosition set to 2,_CpApDSC_EventMngr_EventTable[1].StatusOfDtc[1] = 1

nWritePosition = 3;
pWritePosition = 1;

ReadPosition != WritePostion; 
(_CpApDSC_EventMngr_EventTable[1].StatusOfDtc[1]) != EventStatus
nWritePosition == l_ReadPosition

FIFO is full prints message with indicating that FIFO is full.



TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1026]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1028]
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].ReadPosition:3
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].WritePosition:2
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[1]:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:0
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventId:1
TEST.VALUE:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.END

-- Subprogram: _CpApDSC_DTCConfiguration_Init

-- Test Case: DTCConfigurationIdentifier_0100_PIM_001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_001
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Testcase checks if logical judgement can't access 
Check the state of the DTCConfiguration_0100 NvM block //DTCConfigurationBlockStatus != NVM_REQ_OK
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:(2)0
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_002
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Testcase checks if logical judgement can access 
Test if statement //DTCConfigurationBlockStatus != NVM_REQ_OK
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_003
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_003
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Preconditions:
statement(DTCConfigurationBlockStatus != NVM_REQ_OK) can access

set function NvM_WriteBlock return value(RetVal) != RTE_E_OK

Test if statement can access//RTE_E_OK != RetVal

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_INVALID
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_004
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_004
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Preconditions:
statement(DTCConfigurationBlockStatus != NVM_REQ_OK) can access

set function NvM_WriteBlock return value(RetVal) == RTE_E_OK

Test if statement can't access//RTE_E_OK != RetVal

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_OK
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:(2)1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_005
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_005
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

set DTCConfiguration_Table_0100[1][0]!=0

Test if statement can access//0 != DTCConfiguration_Table_0100[i][mask].DtcInHex
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:(2)1
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:(2)1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[1][0].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_006
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_006
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

set DTCConfiguration_Table_0100[1][0]==0

Test if statement can't access//0 != DTCConfiguration_Table_0100[i][mask].DtcInHex
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:(2)1
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:(2)1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[1][0].DtcInHex:0
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_007
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_007
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_OK;
set i=0,mask=any Value;
statement(0 != DTCConfiguration_Table_0100[i][mask].DtcInHex) can access;

set Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]=0

Test if statement can access//0 == (Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[i] & (1U << mask))
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[2][1].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[2][1].DtcInHex:1
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_008
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_008
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_Not_OK;
set i=1,mask=0;
statement(0 != DTCConfiguration_Table_0100[i][mask].DtcInHex) can access;

set Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[i]=1

Test if statement can't access//0 == (Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[i] & (1U << mask))
Test CpApDSC_DTCConfigurationIdentifier_DefaultValues is DefaultValue = 0xFFu
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[1][0].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[2][1].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.EXPECTED:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[1]:255
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[2][1].DtcInHex:1
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_009
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_009
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_OK;
set i=0,mask=any value;
statement(0 != DTCConfiguration_Table_0100[i][mask].DtcInHex) can access;
DTC needs to be Locked;

set Dem_ClearDTC return value = DEM_CLEAR_PENDING;

Test Function Delete DTC from Fault memory(while (RetVal == DEM_CLEAR_PENDING))
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:<<OPTIONS>>.EVENT_LIMIT:100
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[1][0].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_PENDING
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_010
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_010
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_OK;
set i=0,mask=0;
statement(0 != DTCConfiguration_Table_0100[i][mask].DtcInHex) can access;
DTC needs to be Locked;

set Dem_ClearDTC return value = DEM_CLEAR_PENDING and
 switch Dem_ClearDTC return value = DEM_CLEAR_OK

Test Function Set all DTC status bits to 0(EventStatus =DEM_EVENT_STATUS_PASSED)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:<<OPTIONS>>.EVENT_LIMIT:100
TEST.STUB:CpApDSC_EventManager.RPpEventHandling_SetEventStatus
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcEventId:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_OK
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.END

-- Test Case: DTCConfigurationIdentifier_0100_PIM_011
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0100_PIM_011
TEST.NOTES:
object:DTCConfigurationIdentifier_0100_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_OK;
set i=0,mask=0;
statement(0 != DTCConfiguration_Table_0100[i][mask].DtcInHex) can access;
DTC needs to be Locked;

set Dem_ClearDTC return value = DEM_CLEAR_PENDING and
 switch Dem_ClearDTC return value = DEM_CLEAR_OK

Test Function Lock the DTC in the EventLockTable(EventStatus =DTC_DYNAMIC_LOCK_VALUE)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:<<OPTIONS>>.EVENT_LIMIT:100
TEST.STUB:CpApDSC_EventManager.RPpEventHandling_SetEventStatus
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcEventId:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_OK
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][2].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][3].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][4].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][5].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][6].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0100[0][7].DtcInHex:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0x10
TEST.EXPECTED:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_001
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Testcase checks if logical judgement can't access 
Check the state of the DTCConfiguration_0102 NvM block//DTCConfigurationBlockStatus != NVM_REQ_OK
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:0
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_002
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Testcase checks if logical judgement can access 
Check the state of the DTCConfiguration_0102 NvM block//DTCConfigurationBlockStatus != NVM_REQ_OK
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_003
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_003
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Preconditions:
statement(DTCConfigurationBlockStatus != NVM_REQ_OK) can access

set function NvM_WriteBlock return value(RetVal) != RTE_E_OK

Test if statement can access//RTE_E_OK != RetVal

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_INVALID
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_004
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_004
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Preconditions:
statement(DTCConfigurationBlockStatus != NVM_REQ_OK) can access

set function NvM_WriteBlock return value(RetVal) == RTE_E_OK

Test if statement can't access//RTE_E_OK != RetVal

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:RTE_E_OK
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:(2)1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_005
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_005
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

set DTCConfiguration_Table_0102[1][0]!=0

Test if statement can access//0 != DTCConfiguration_Table_0102[i][mask].DtcInHex
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:(2)1
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:(2)1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0102[0][1].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_006
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_006
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

set DTCConfiguration_Table_0102[0][0]==0

Test if statement can't access//0 != DTCConfiguration_Table_0102[i][mask].DtcInHex
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.NvM_WriteBlock.return:(2)1
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:(2)1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:0
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_007
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_007
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_OK;
set i=0,mask=any Value;
statement(0 != DTCConfiguration_Table_0102[i][mask].DtcInHex) can access;

set Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[0]=0

Test if statement can access//0 == (Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[i] & (1U << mask))
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:NVM_REQ_OK
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0102[0][1].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_008
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_008
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_Not_OK;
set i=1,mask=0;
statement(0 != DTCConfiguration_Table_0102[i][mask].DtcInHex) can access;

set Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[i]=1

Test if statement can't access//0 == (Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[i] & (1U << mask))
Test CpApDSC_DTCConfigurationIdentifier_DefaultValues is DefaultValue = 0xFFu
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1011]
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[1][0].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.EXPECTED:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[1]:255
TEST.EXPECTED:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[0]:255
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_009
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_009
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_OK;
set i=0,mask=any value;
statement(0 != DTCConfiguration_Table_010[i][mask].DtcInHex) can access;
DTC needs to be Locked;

set Dem_ClearDTC return value = DEM_CLEAR_PENDING;

Test Function Delete DTC from Fault memory(while (RetVal == DEM_CLEAR_PENDING))
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:<<OPTIONS>>.EVENT_LIMIT:100
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[1][0].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_PENDING
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_010
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_010
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_OK;
set i=0,mask=0;
statement(0 != DTCConfiguration_Table_0102[i][mask].DtcInHex) can access;
DTC needs to be Locked;

set Dem_ClearDTC return value = DEM_CLEAR_PENDING and
 switch Dem_ClearDTC return value = DEM_CLEAR_OK

Test Function Set all DTC status bits to 0(EventStatus =DEM_EVENT_STATUS_PASSED)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:<<OPTIONS>>.EVENT_LIMIT:100
TEST.STUB:CpApDSC_EventManager.RPpEventHandling_SetEventStatus
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[0][1].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcEventId:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_OK
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.EXPECTED:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.ATTRIBUTES:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:EXPECTED_BASE=16
TEST.END

-- Test Case: DTCConfigurationIdentifier_0102_PIM_011
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_DTCConfiguration_Init
TEST.NEW
TEST.NAME:DTCConfigurationIdentifier_0102_PIM_011
TEST.NOTES:
object:DTCConfigurationIdentifier_0102_PIM

Preconditions:
DTCConfigurationBlockStatus is NVM_REQ_OK;
set i=0,mask=0;
statement(0 != DTCConfiguration_Table_0102[i][mask].DtcInHex) can access;
DTC needs to be Locked;

set Dem_ClearDTC return value = DEM_CLEAR_PENDING and
 switch Dem_ClearDTC return value = DEM_CLEAR_OK

Test Function Lock the DTC in the EventLockTable(EventStatus =DTC_DYNAMIC_LOCK_VALUE)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1009]
TEST.VALUE:<<OPTIONS>>.EVENT_LIMIT:100
TEST.STUB:CpApDSC_EventManager.RPpEventHandling_SetEventStatus
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcInHex:1
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0100[0][0].DtcEventId:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcEventId:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0100_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_DTCConfigurationIdentifier_0102_PIM[0]:0
TEST.VALUE:uut_prototype_stubs.Dem_ClearDTC.return:DEM_CLEAR_OK
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.DTCConfiguration_Table_0102[0][0].DtcInHex:1
TEST.EXPECTED:USER_GLOBALS_VCAST.<<GLOBAL>>.VECTORCAST_INT1:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0x10
TEST.EXPECTED:CpApDSC_EventManager.RPpEventHandling_SetEventStatus.EventStatus:DEM_EVENT_STATUS_PASSED
TEST.END

-- Subprogram: _CpApDSC_ProcessReceivedDtcs

-- Test Case: _CpApDSC_ProcessReceivedDtcs.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_ProcessReceivedDtcs
TEST.NEW
TEST.NAME:_CpApDSC_ProcessReceivedDtcs.001
TEST.NOTES:
Testcase checks if function _CpApDSC_ProcessReceivedDtcs works according to specification when l_DtcArray is set to 0,50,255,255.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1037]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1038]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1039]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1040]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1041]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1042]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1043]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1044]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1045]
TEST.STUB:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray:<<malloc 1>>
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray[0][0]:0
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray[0][1]:50
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray[0][2]:255
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray[0][3]:255
TEST.END

-- Test Case: _CpApDSC_ProcessReceivedDtcs.002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_ProcessReceivedDtcs
TEST.NEW
TEST.NAME:_CpApDSC_ProcessReceivedDtcs.002
TEST.NOTES:
Testcase checks if function _CpApDSC_ProcessReceivedDtcs works according to specification when l_DtcArray is set to 255,255,255,255.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1037]
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray:<<malloc 1>>
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray[0][0]:255
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray[0][1]:255
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray[0][2]:255
TEST.VALUE:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs.DtcArray[0][3]:255
TEST.END

-- Subprogram: _CpApDSC_ProcessSetEventsSH

-- Test Case: _CpApDSC_ProcessSetEventsSH.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_ProcessSetEventsSH
TEST.NEW
TEST.NAME:_CpApDSC_ProcessSetEventsSH.001
TEST.NOTES:
Testcase checks if function _CpApDSC_ProcessSetEventsSH works.

\spec [UDD_DSC_SH_SC_EP21H2_1056] Function starts iterating through all event table.
\spec [UDD_DSC_SH_SC_EP21H2_1057] Gets the read position and write position.
\spec [UDD_DSC_SH_SC_EP21H2_1058] Then checks if event is locked.
\spec [UDD_DSC_SH_SC_EP21H2_1059] Then checks if read position is not equal to write position.

Test updated Events,but event has been locked

set eventid = 0,ReadPosition = 1,WritePosition =2,eventLockTable =1

nothing to in the else case
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1056]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1057]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1058]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1059]
TEST.STUB:CpApDSC_EventManager.CpApDSC_EventManager_Init
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].ReadPosition:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].WritePosition:2
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:1
TEST.END

-- Test Case: _CpApDSC_ProcessSetEventsSH.002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_ProcessSetEventsSH
TEST.NEW
TEST.NAME:_CpApDSC_ProcessSetEventsSH.002
TEST.NOTES:
Testcase checks if function _CpApDSC_ProcessSetEventsSH works, according to _CpApDSC_EventMngr_EventTable ReadPosition/WritePosition is different/the same.

\spec [UDD_DSC_SH_SC_EP21H2_1056] Function starts iterating through all event table.
\spec [UDD_DSC_SH_SC_EP21H2_1057] Gets the read position and write position.
\spec [UDD_DSC_SH_SC_EP21H2_1058] Then checks if event is locked.
\spec [UDD_DSC_SH_SC_EP21H2_1059] Then checks if read position is not equal to write position.
\spec [UDD_DSC_SH_SC_EP21H2_1060] If conditions are met,get the event status.
\spec [UDD_DSC_SH_SC_EP21H2_1061] Then sent the event status with event index to DEM.
\spec [UDD_DSC_SH_SC_EP21H2_1062] Then advance to the next read position and apply mod operant with max number of states.
\spec [UDD_DSC_SH_SC_EP21H2_1063] Then dynamically locks/unlocks the associated DTC.

proconditon:
Event has updated and Event havn't locked;

example:
EventID = 0,set ReadPostion=0,writePostion=1,stateofDtc[0]=0

TestResult:
ReadPostion has updated ,Dynamically lock DTC return value =0;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1056]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1057]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1058]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1059]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1060]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1061]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1062]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1063]
TEST.STUB:CpApDSC_EventManager.CpApDSC_EventManager_Init
TEST.STUB:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].ReadPosition:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].WritePosition:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].StatusOfDtc[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].ReadPosition:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].WritePosition:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].StatusOfDtc[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[2].ReadPosition:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[2].WritePosition:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[2].StatusOfDtc[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[3].ReadPosition:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[3].WritePosition:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[3].StatusOfDtc[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[1]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[2]:0
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[3]:0
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].ReadPosition:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[1].ReadPosition:1
TEST.EXPECTED:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[2].ReadPosition:1
TEST.EXPECTED:CpApDSC_EventManager.CpApDSC_DTC_DynamicLocking.EventStatus:0
TEST.END

-- Test Case: _CpApDSC_ProcessSetEventsSH.003
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_ProcessSetEventsSH
TEST.NEW
TEST.NAME:_CpApDSC_ProcessSetEventsSH.003
TEST.NOTES:
Testcase checks if function _CpApDSC_ProcessSetEventsSH works.

\spec [UDD_DSC_SH_SC_EP21H2_1056] Function starts iterating through all event table.
\spec [UDD_DSC_SH_SC_EP21H2_1057] Gets the read position and write position.
\spec [UDD_DSC_SH_SC_EP21H2_1058] Then checks if event is locked.
\spec [UDD_DSC_SH_SC_EP21H2_1059] Then checks if read position is not equal to write position.
\spec [UDD_DSC_SH_SC_EP21H2_1064] Else if read position is equal to write position or event is locked then does nothing.
\spec [UDD_DSC_SH_SC_EP21H2_1065] Then increments the event index.
\spec [UDD_DSC_SH_SC_EP21H2_1066] Then checks if event index is reached to maximum event number.
\spec [UDD_DSC_SH_SC_EP21H2_1067] Then if event index is reached to maximum event number,make event index to zero.
\spec [UDD_DSC_SH_SC_EP21H2_1068] Then increment the iteration index.


Test Event havn't locked and Event has updated

set eventid = 0,ReadPosition = 1,WritePosition =1,eventLockTable =0

nothing to in the else case
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1056]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1057]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1058]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1059]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1064]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1065]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1066]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1067]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1068]
TEST.STUB:CpApDSC_EventManager.CpApDSC_EventManager_Init
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].ReadPosition:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>._CpApDSC_EventMngr_EventTable[0].WritePosition:1
TEST.VALUE:CpApDSC_EventManager.<<GLOBAL>>.CpApDSC_EventMngr_EventLockTable[0]:0
TEST.END

-- Subprogram: _CpApDSC_ReceiveDtcsFromPH

-- Test Case: _CpApDSC_ReceiveDtcsFromPH.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_ReceiveDtcsFromPH
TEST.NEW
TEST.NAME:_CpApDSC_ReceiveDtcsFromPH.001
TEST.NOTES:
Testcase checks if function _CpApDSC_ReceiveDtcsFromPH works according to specification when Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable is RTE_E_NOT_UPDATED .

set updated = RTE_E_NOT_UPDATED;
status has updated;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1046]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1047]
TEST.VALUE:uut_prototype_stubs.Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return:RTE_E_NOT_UPDATED
TEST.FLOW
  CpApDSC_EventManager.c._CpApDSC_ReceiveDtcsFromPH
  uut_prototype_stubs.Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable
  CpApDSC_EventManager.c._CpApDSC_ReceiveDtcsFromPH
TEST.END_FLOW
TEST.END

-- Test Case: _CpApDSC_ReceiveDtcsFromPH.002
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_ReceiveDtcsFromPH
TEST.NEW
TEST.NAME:_CpApDSC_ReceiveDtcsFromPH.002
TEST.NOTES:
Testcase checks if function _CpApDSC_ReceiveDtcsFromPH works according to specification when Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable is not RTE_E_NOT_UPDATED,

\spec [UDD_DSC_SH_SC_EP21H2_1047] Then checks if the status is not updated.
\spec [UDD_DSC_SH_SC_EP21H2_1048] Then if status is not updated, gets the event status table.
\spec [UDD_DSC_SH_SC_EP21H2_1049] Then process recevied event status table.


set function return value = 0;status havn't updated;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1047]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1048]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1049]
TEST.STUB:CpApDSC_EventManager._CpApDSC_ProcessReceivedDtcs
TEST.VALUE:uut_prototype_stubs.Rte_IRead_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.Rte_IRead_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return[0][0]:255
TEST.VALUE:uut_prototype_stubs.Rte_IRead_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return[0][1]:255
TEST.VALUE:uut_prototype_stubs.Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return:0
TEST.END

-- Test Case: _CpApDSC_ReceiveDtcsFromPH.003
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_ReceiveDtcsFromPH
TEST.NEW
TEST.NAME:_CpApDSC_ReceiveDtcsFromPH.003
TEST.NOTES:
Testcase checks if function _CpApDSC_ReceiveDtcsFromPH works according to specification when Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable is not RTE_E_NOT_UPDATED,
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1046]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1047]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1048]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1049]
TEST.VALUE:uut_prototype_stubs.Rte_IRead_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.Rte_IRead_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return[0][0]:0
TEST.VALUE:uut_prototype_stubs.Rte_IRead_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return[0][1]:50
TEST.VALUE:uut_prototype_stubs.Rte_IRead_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return[0][3]:255
TEST.VALUE:uut_prototype_stubs.Rte_IRead_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return[0][4]:255
TEST.VALUE:uut_prototype_stubs.Rte_IStatus_RDSC_SH00_PpDSCHandlerPH00_DeDtcStatusTable.return:0
TEST.END

-- Subprogram: _CpApDSC_SendDtcsToPH

-- Test Case: _CpApDSC_SendDtcsToPH.001
TEST.UNIT:CpApDSC_EventManager
TEST.SUBPROGRAM:_CpApDSC_SendDtcsToPH
TEST.NEW
TEST.NAME:_CpApDSC_SendDtcsToPH.001
TEST.NOTES:
Testcase checks if function _CpApDSC_SendDtcsToPH works.

This testcase don't have input interface ,can't change the value of the variable;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1050]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1051]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1052]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1053]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1054]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_1055]
TEST.STUB:CpApDSC_EventManager.CpApDSC_EventManager_Init
TEST.END

-- Unit: CpApDSC_FOTAUpdateTriggerHandling

-- Subprogram: CpApDSC_FOTAUpdateTriggerHandling

-- Test Case: CpApDSC_FOTAUpdateTriggerHandling.001
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_FOTAUpdateTriggerHandling
TEST.NEW
TEST.NAME:CpApDSC_FOTAUpdateTriggerHandling.001
TEST.NOTES:
Testcase checks if function CpApDSC_FOTAUpdateTriggerHandling could executed successfully, and the veriable could be successly initialized.

Check if all preconditions are fulfilled to trigger LCSM Reset;

set _LCSMResetTrigger_Flag=true;
set _LCSMResetTrigger_Counter =  0;

after 500ms,test if Counter will reset and _LCSMResetTrigger_Flag will become false;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2007]
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:0
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:TRUE
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:1
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:TRUE
TEST.END

-- Test Case: CpApDSC_FOTAUpdateTriggerHandling.002
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_FOTAUpdateTriggerHandling
TEST.NEW
TEST.NAME:CpApDSC_FOTAUpdateTriggerHandling.002
TEST.NOTES:
Testcase checks if function CpApDSC_FOTAUpdateTriggerHandling could executed successfully, and the veriable could be successly initialized.

Check if all preconditions are fulfilled to trigger LCSM Reset;

set _LCSMResetTrigger_Flag=Flase;

obtain CpApDSC_ProgrammingPrecondition_PowertrainStartup return value

set return value = RTE_E_OK

verify function if can access statement (if (RTE_E_OK == RetVal))


TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2007]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2008]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.return:RTE_E_OK
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:0
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.END

-- Test Case: CpApDSC_FOTAUpdateTriggerHandling.003
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_FOTAUpdateTriggerHandling
TEST.NEW
TEST.NAME:CpApDSC_FOTAUpdateTriggerHandling.003
TEST.NOTES:
Testcase checks if function CpApDSC_FOTAUpdateTriggerHandling could executed successfully, and the veriable could be successly initialized.

preconditon:
all preconditions aren't fulfilled;
RteVal == RTE_E_OK;

Check if FOTA Update Trigger is active

set Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07 value.EthFLIndHSC4 = Cx1_Active

obtain CpApDSC_ProgrammingPrecondition_PowertrainStartup return value

set return value = RTE_E_OK

verify function if can access statement (Cx1_Active == GW_HSC4_TBOX_FrP07_Diag_Data.EthFLIndHSC4)
and All Preconditions are fulfilled


TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2007]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2008]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2011]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.data[0].EthFLIndHSC4:Cx1_Active
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.return:RTE_E_OK
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:0
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:TRUE
TEST.END

-- Test Case: CpApDSC_FOTAUpdateTriggerHandling.004
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_FOTAUpdateTriggerHandling
TEST.NEW
TEST.NAME:CpApDSC_FOTAUpdateTriggerHandling.004
TEST.NOTES:
Testcase checks if function CpApDSC_FOTAUpdateTriggerHandling could executed successfully, and the veriable could be successly initialized.

preconditon:
all preconditions aren't fulfilled;
RteVal == RTE_E_OK;
FOTA Update Trigger is active；

Check Powertrain status - Precondition 1

set function CpApDSC_ProgrammingPrecondition_PowertrainStartup return value == True;

Send the Response data to RTE

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2007]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2008]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2011]
TEST.STUB:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_PowertrainStartup
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.data[0].EthFLIndHSC4:Cx1_Active
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.return:RTE_E_OK
TEST.VALUE:uut_prototype_stubs.Rte_Write_CtApDSC_SH00_Pp_IECU_HSC4_FrP23_DeIECU_HSC4_FrP23.data[0].EthFLRespHSC4:POWERTRAIN_STARTUP
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:0
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_PowertrainStartup.return:TRUE
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.END

-- Test Case: CpApDSC_FOTAUpdateTriggerHandling.005
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_FOTAUpdateTriggerHandling
TEST.NEW
TEST.NAME:CpApDSC_FOTAUpdateTriggerHandling.005
TEST.NOTES:
Testcase checks if function CpApDSC_FOTAUpdateTriggerHandling could executed successfully, and the veriable could be successly initialized.

preconditon:
all preconditions aren't fulfilled;
RteVal == RTE_E_OK;
FOTA Update Trigger is active；

Check Vehicle speed - Precondition 2

set function CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh return value == True;

Send the Response data to RTE

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2007]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2008]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2011]
TEST.STUB:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.data[0].EthFLIndHSC4:Cx1_Active
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.return:RTE_E_OK
TEST.VALUE:uut_prototype_stubs.Rte_Write_CtApDSC_SH00_Pp_IECU_HSC4_FrP23_DeIECU_HSC4_FrP23.data[0].EthFLRespHSC4:VEHICLE_SPEED_TOO_HIGH
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:0
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.return:TRUE
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.END

-- Test Case: CpApDSC_FOTAUpdateTriggerHandling.006
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_FOTAUpdateTriggerHandling
TEST.NEW
TEST.NAME:CpApDSC_FOTAUpdateTriggerHandling.006
TEST.NOTES:
Testcase checks if function CpApDSC_FOTAUpdateTriggerHandling could executed successfully, and the veriable could be successly initialized.

preconditon:
all preconditions aren't fulfilled;
RteVal == RTE_E_OK;
FOTA Update Trigger is active；

Check the PEF Flag

set Rte_CpApDSC_SH00_BlockConfiguration_2001_PIM[0]!=0

Send the Response data to RTE

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2007]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2008]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2009]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2011]
TEST.VALUE:uut_prototype_stubs.<<GLOBAL>>.Rte_CpApDSC_SH00_BlockConfiguration_2001_PIM[0]:1
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.data[0].EthFLIndHSC4:Cx1_Active
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.return:RTE_E_OK
TEST.VALUE:uut_prototype_stubs.Rte_Write_CtApDSC_SH00_Pp_IECU_HSC4_FrP23_DeIECU_HSC4_FrP23.data[0].EthFLRespHSC4:VEHICLE_SPEED_TOO_HIGH
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:0
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.END

-- Test Case: CpApDSC_FOTAUpdateTriggerHandling.007
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_FOTAUpdateTriggerHandling
TEST.NEW
TEST.NAME:CpApDSC_FOTAUpdateTriggerHandling.007
TEST.NOTES:
Testcase checks if function CpApDSC_FOTAUpdateTriggerHandling could executed successfully, and the veriable could be successly initialized.

Check if all preconditions are fulfilled to trigger LCSM Reset;

set _LCSMResetTrigger_Flag=true;
set _LCSMResetTrigger_Counter =  LCSM_RESET_TRIGGER_COUNTER_MAX-1;

after 500ms,test if Counter will reset and _LCSMResetTrigger_Flag will become false;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2007]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2012]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2013]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2014]
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:49
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:TRUE
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:0
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.END

-- Test Case: CpApDSC_FOTAUpdateTriggerHandling.008
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_FOTAUpdateTriggerHandling
TEST.NEW
TEST.NAME:CpApDSC_FOTAUpdateTriggerHandling.008
TEST.NOTES:
Testcase checks if function CpApDSC_FOTAUpdateTriggerHandling could executed successfully, and the veriable could be successly initialized.

Check if RTE Statue is ok;

precondition:
_LCSMResetTrigger_Flag = FALSE;

set Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07 return equal to 1;

test if statement(if (RTE_E_OK == RetVal))
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2007]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_GW_HSC4_TBOX_FrP07_DeGW_HSC4_TBOX_FrP07.return:1
TEST.VALUE:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Counter:0
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.<<GLOBAL>>._LCSMResetTrigger_Flag:FALSE
TEST.END

-- Subprogram: CpApDSC_ProgrammingPrecondition_PowertrainStartup

-- Test Case: CpApDSC_ProgrammingPrecondition_PowertrainStartup.001
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_ProgrammingPrecondition_PowertrainStartup
TEST.NEW
TEST.NAME:CpApDSC_ProgrammingPrecondition_PowertrainStartup.001
TEST.NOTES:
Testcase checks if function CpApDSC_ProgrammingPrecondition_PowertrainStartup could executed successfully, and the veriable could be successly initialized.

Obtain data from RTE;

set Rte_Read_CtApDSC_SH00_Pp_HCU_HSC1_FrP01_DeHCU_HSC1_FrP01 function data.EPTRdy_h1HSC1 = Cx1_Ready;

verify if powertrain is in Ready state(RetVal = TRUE)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2000]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2001]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2002]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_HCU_HSC1_FrP01_DeHCU_HSC1_FrP01.data[0].EPTRdy_h1HSC1:Cx1_Ready
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_PowertrainStartup.return:TRUE
TEST.END

-- Test Case: CpApDSC_ProgrammingPrecondition_PowertrainStartup.002
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_ProgrammingPrecondition_PowertrainStartup
TEST.NEW
TEST.NAME:CpApDSC_ProgrammingPrecondition_PowertrainStartup.002
TEST.NOTES:
Testcase checks if function CpApDSC_ProgrammingPrecondition_PowertrainStartup could executed successfully, and the veriable could be successly initialized.

Obtain data from RTE;

set Rte_Read_CtApDSC_SH00_Pp_HCU_HSC1_FrP01_DeHCU_HSC1_FrP01 function data.EPTRdy_h1HSC1 = 0;

verify if powertrain isn't in Ready state(RetVal = False)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2000]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_HCU_HSC1_FrP01_DeHCU_HSC1_FrP01.data[0].EPTRdy_h1HSC1:0
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_PowertrainStartup.return:FALSE
TEST.END

-- Subprogram: CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh

-- Test Case: CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.001
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh
TEST.NEW
TEST.NAME:CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.001
TEST.NOTES:
Testcase checks if function Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15 could executed successfully, and the veriable could be successly initialized.

obtain data from RTE;

Check if Vehicle Speed value is valid (Valid = 0, Invalid = 1) and Check if Vehicle speed is above 4 km/h

set Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.VehSpdAvgDrvnVHSC2 = Cx0_Valid;
set Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.VehSpdAvgDrvnHSC2 = SPEED_LIMIT_FOR_PROGRAMMING;

verify if Vehicle Speed is too high(RetVal = TRUE)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2004]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2005]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2006]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.data[0].VehSpdAvgDrvnVHSC2:Cx0_Valid
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.data[0].VehSpdAvgDrvnHSC2:4
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.return:TRUE
TEST.END

-- Test Case: CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.002
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh
TEST.NEW
TEST.NAME:CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.002
TEST.NOTES:
Testcase checks if function Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15 could executed successfully, and the veriable could be successly initialized.

obtain data from RTE;

Check if Vehicle Speed value is valid (Valid = 0, Invalid = 1) and when vehicle speed is under 4km/h the function can work successfully

set Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.VehSpdAvgDrvnVHSC2 = Cx0_Valid;
set Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.VehSpdAvgDrvnHSC2 = 2;

verify if Vehicle Speed is too high(RetVal = False)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2004]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2005]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.data[0].VehSpdAvgDrvnVHSC2:Cx0_Valid
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.data[0].VehSpdAvgDrvnHSC2:2
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.return:FALSE
TEST.END

-- Test Case: CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.003
TEST.UNIT:CpApDSC_FOTAUpdateTriggerHandling
TEST.SUBPROGRAM:CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh
TEST.NEW
TEST.NAME:CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.003
TEST.NOTES:
Testcase checks if function Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15 could executed successfully, and the veriable could be successly initialized.

obtain data from RTE;

Check if Vehicle Speed value is invalid,the function can work successfully

set Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.VehSpdAvgDrvnVHSC2 = 1;


verify if Vehicle Speed is too high(RetVal = False)
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_2004]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_Pp_SCS_HSC2_FrP15_DeSCS_HSC2_FrP15.data[0].VehSpdAvgDrvnVHSC2:1
TEST.EXPECTED:CpApDSC_FOTAUpdateTriggerHandling.CpApDSC_ProgrammingPrecondition_VehicleSpeedHigh.return:FALSE
TEST.END

-- Unit: CpApDSC_Gen_ConfigurationDIDReadServices

-- Subprogram: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ConditionCheckRead

-- Test Case: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ConditionCheckRead.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDReadServices
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ConditionCheckRead
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ConditionCheckRead.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ConditionCheckRead work successfully,and if variable can work normally;

\spec [UDD_DSC_SH_SC_EP21H2_5001] Returns RTE_E_OK.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5000]
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDReadServices.RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ConditionCheckRead.return:RTE_E_OK
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ReadData

-- Test Case: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ReadData.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDReadServices
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ReadData.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ReadData work successfully,and if variable can work normally;

\spec [UDD_DSC_SH_SC_EP21H2_5002] Returns RTE_E_OK.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5501]
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDReadServices.RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_ReadData.return:RTE_E_OK
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ConditionCheckRead

-- Test Case: RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ConditionCheckRead.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDReadServices
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ConditionCheckRead
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ConditionCheckRead.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ConditionCheckRead work successfully,and if variable can work normally;

\spec [UDD_DSC_SH_SC_EP21H2_5002] Returns RTE_E_OK.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5502]
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDReadServices.RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ConditionCheckRead.return:RTE_E_OK
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ReadData

-- Test Case: RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ReadData.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDReadServices
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ReadData.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ReadData work successfully,and if variable can work normally;

\spec [UDD_DSC_SH_SC_EP21H2_5003] Returns RTE_E_OK.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5003]
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDReadServices.RCtApDSC_SH00_DataServices_Data_Root_certification_number_Read_ReadData.return:RTE_E_OK
TEST.END

-- Unit: CpApDSC_Gen_ConfigurationDIDWriteServices

-- Subprogram: CpApDSC_Configuration_Init

-- Test Case: CpApDSC_Configuration_Init.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:CpApDSC_Configuration_Init
TEST.NEW
TEST.NAME:CpApDSC_Configuration_Init.001
TEST.NOTES:
Test if function CpApDSC_Configuration_Init work successfully,and if variable can work normally;

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5500]
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData

-- Test Case: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData work successfully,and if variable can work normally;

check CpApDSC_Configuration_State = PERFORM_CONFIGURATION;

set function _CpApDSC_Configuration_CF10_PerformConfiguration return value = RTE_E_OK;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5515]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5516]
TEST.STUB:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_PerformConfiguration
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:PERFORM_CONFIGURATION
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_PerformConfiguration.return:RTE_E_OK
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices.RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.002
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.002
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData work successfully,and if variable can work normally;

check CpApDSC_Configuration_State = CONFIGURATION_PENDING;

set function _CpApDSC_Configuration_CF10_WaitAndFinishConfiguration return value = RTE_E_OK;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5515]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5517]
TEST.STUB:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:CONFIGURATION_PENDING
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.return:RTE_E_OK
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices.RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.003
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.003
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData work successfully,and if variable can work normally;

check CpApDSC_Configuration_State = CONFIGURATION_PENDING;

set function _CpApDSC_Configuration_CF10_ErrorOrUnknownState return value = RTE_E_OK;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5515]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5518]
TEST.STUB:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_ErrorOrUnknownState
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:CONFIGURATION_ERROR
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_ErrorOrUnknownState.return:RTE_E_INVALID
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices.RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.return:RTE_E_INVALID
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.004
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.004
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData work successfully,and if variable can work normally;

check CpApDSC_Configuration_State = 3;

set function _CpApDSC_Configuration_CF10_ErrorOrUnknownState return value = RTE_E_OK;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5515]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5519]
TEST.STUB:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_ErrorOrUnknownState
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:3
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_ErrorOrUnknownState.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices.RCtApDSC_SH00_DataServices_Data_PIN_NUM_Read_WriteData.return:RTE_E_OK
TEST.END

-- Subprogram: _CpApDSC_Configuration_CF10_ErrorOrUnknownState

-- Test Case: _CpApDSC_Configuration_CF10_ErrorOrUnknownState.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:_CpApDSC_Configuration_CF10_ErrorOrUnknownState
TEST.NEW
TEST.NAME:_CpApDSC_Configuration_CF10_ErrorOrUnknownState.001
TEST.NOTES:
Test if function _CpApDSC_Configuration_CF10_ErrorOrUnknownState work successfully,and if variable can work normally;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5513]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5514]
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_ErrorOrUnknownState.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:PERFORM_CONFIGURATION
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_ErrorOrUnknownState.ErrorCode[0]:DCM_E_CONDITIONSNOTCORRECT
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_ErrorOrUnknownState.return:RTE_E_INVALID
TEST.END

-- Subprogram: _CpApDSC_Configuration_CF10_PerformConfiguration

-- Test Case: _CpApDSC_Configuration_CF10_PerformConfiguration.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:_CpApDSC_Configuration_CF10_PerformConfiguration
TEST.NEW
TEST.NAME:_CpApDSC_Configuration_CF10_PerformConfiguration.001
TEST.NOTES:
Test if function _CpApDSC_Configuration_CF10_PerformConfiguration work successfully,and if variable can work normally;

Check the state of the NVM block for ongoing write operations

set NvM_GetErrorStatus :
	RequestResultPtr =  NVM_REQ_PENDING;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5501]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5502]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5503]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5507]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:NVM_REQ_PENDING
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_PerformConfiguration.return:DCM_E_PENDING
TEST.END

-- Test Case: _CpApDSC_Configuration_CF10_PerformConfiguration.002
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:_CpApDSC_Configuration_CF10_PerformConfiguration
TEST.NEW
TEST.NAME:_CpApDSC_Configuration_CF10_PerformConfiguration.002
TEST.NOTES:
Test if function _CpApDSC_Configuration_CF10_PerformConfiguration work successfully,and if variable can work normally;

Check the state of CONFIGURATION_PENDING

percondition:
NvM_GetErrorStatus : RequestResultPtr =  NVM_REQ_NOT_OK;

set NvM_WriteBlock return value = RTE_E_OK；
set expect value :
CpApDSC_Configuration_State = CONFIGURATION_PENDING;
function return value = DCM_E_PENDING;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5501]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5502]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5503]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5504]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5505]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5506]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:NVM_REQ_NOT_OK
TEST.VALUE:uut_prototype_stubs.Rte_Write_CtApDSC_SH00_PpDiagConfiguration_PIN_NUM_0xCF10_DeDiagConfiguration_PIN_NUM_0xCF10.return:RTE_E_OK
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:CONFIGURATION_PENDING
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_PerformConfiguration.return:DCM_E_PENDING
TEST.END

-- Test Case: _CpApDSC_Configuration_CF10_PerformConfiguration.003
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:_CpApDSC_Configuration_CF10_PerformConfiguration
TEST.NEW
TEST.NAME:_CpApDSC_Configuration_CF10_PerformConfiguration.003
TEST.NOTES:
Test if function _CpApDSC_Configuration_CF10_PerformConfiguration work successfully,and if variable can work normally;

Check the state of CONFIGURATION_ERROR

percondition:
NvM_GetErrorStatus : RequestResultPtr =  NVM_REQ_NOT_OK;

set NvM_WriteBlock return value = RTE_E_INVALID
set expect value :
CpApDSC_Configuration_State = CONFIGURATION_PENDING;
function return value = DCM_E_PENDING;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5501]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5502]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5503]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5504]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5505]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5506]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:NVM_REQ_NOT_OK
TEST.VALUE:uut_prototype_stubs.Rte_Write_CtApDSC_SH00_PpDiagConfiguration_PIN_NUM_0xCF10_DeDiagConfiguration_PIN_NUM_0xCF10.return:RTE_E_INVALID
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:CONFIGURATION_ERROR
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_PerformConfiguration.return:DCM_E_PENDING
TEST.END

-- Subprogram: _CpApDSC_Configuration_CF10_WaitAndFinishConfiguration

-- Test Case: _CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.001
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:_CpApDSC_Configuration_CF10_WaitAndFinishConfiguration
TEST.NEW
TEST.NAME:_CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.001
TEST.NOTES:
Test if function _CpApDSC_Configuration_CF10_WaitAndFinishConfiguration work successfully,and if variable can work normally;

Check if writing of the Configuration values to NVM finished successfully and Writing finished successfully

set NvM_GetErrorStatus RequestResult = NVM_REQ_OK;
set except value CpApDSC_Configuration_State = PERFORM_CONFIGURATION;

verify return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5508]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5509]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5510]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:NVM_REQ_OK
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:PERFORM_CONFIGURATION
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.return:RTE_E_OK
TEST.END

-- Test Case: _CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.002
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:_CpApDSC_Configuration_CF10_WaitAndFinishConfiguration
TEST.NEW
TEST.NAME:_CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.002
TEST.NOTES:
Test if function _CpApDSC_Configuration_CF10_WaitAndFinishConfiguration work successfully,and if variable can work normally;

Check if writing of the Configuration values to NVM finished successfully and Writing still ongoing

set NvM_GetErrorStatus RequestResult = NVM_REQ_PENDING;

verify return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5508]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5509]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5511]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:NVM_REQ_PENDING
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.return:DCM_E_PENDING
TEST.END

-- Test Case: _CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.003
TEST.UNIT:CpApDSC_Gen_ConfigurationDIDWriteServices
TEST.SUBPROGRAM:_CpApDSC_Configuration_CF10_WaitAndFinishConfiguration
TEST.NEW
TEST.NAME:_CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.003
TEST.NOTES:
Test if function _CpApDSC_Configuration_CF10_WaitAndFinishConfiguration work successfully,and if variable can work normally;

Check if writing of the Configuration values to NVM finished successfully and Errors encountered during writing to NVM

set NvM_GetErrorStatus RequestResult = NVM_REQ_NOT_OK;

set exepect CpApDSC_Configuration_State = PERFORM_CONFIGURATION;
	*ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE		

verify return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5508]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5509]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_5512]
TEST.VALUE:uut_prototype_stubs.NvM_GetErrorStatus.RequestResultPtr[0]:NVM_REQ_NOT_OK
TEST.VALUE:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices.<<GLOBAL>>.CpApDSC_Configuration_State:PERFORM_CONFIGURATION
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.ErrorCode[0]:DCM_E_GENERALPROGRAMMINGFAILURE
TEST.EXPECTED:CpApDSC_Gen_ConfigurationDIDWriteServices._CpApDSC_Configuration_CF10_WaitAndFinishConfiguration.return:RTE_E_INVALID
TEST.END

-- Unit: CpApDSC_Gen_ReadMeasurementData

-- Subprogram: RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData

-- Test Case: RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.001
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData work successfully,and if variable can work normally;

Obtain data from RTE,check if return success;

set Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess:
	return value = RTE_E_OK;
	InertialProcessData.DiffDataLinkBroken_0xb00b.DiffDataLinkBroken = 3;

set except value *Data[0] = 1

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6021]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6022]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6023]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess.data[0].DiffDataLinkBroken_0xb00b.DiffDataLinkBroken:0x3
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess.return:RTE_E_OK
TEST.VALUE:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.Data:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.Data[0][0]:1
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.002
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.002
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData work successfully,and if variable can work normally;

Obtain data from RTE,check if return success;

set Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess:
	return value = RTE_E_INVALID;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6021]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6022]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6024]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.Data:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_DiffDataLinkBroken_Read_ReadData.return:RTE_E_INVALID
TEST.ATTRIBUTES:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess.data[0].DiffDataLinkBroken_0xb00b.DiffDataLinkBroken:INPUT_BASE=16
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData

-- Test Case: RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.001
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData work successfully,and if variable can work normally;

Obtain data from RTE,check if return success;

set Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess:
	return value = RTE_E_OK;
	InertialProcessData.GNSSAntennasBroken_0xb00c.LGNSSAntennasBroken = 3;
、	InertialProcessData.GNSSAntennasBroken_0xb00c.RGNSSAntennasBroken = 3

set except value *Data[0] = 3

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6026]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6027]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6028]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess.data[0].GNSSAntennasBroken_0xb00c.LGNSSAntennasBroken:3
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess.data[0].GNSSAntennasBroken_0xb00c.RGNSSAntennasBroken:3
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess.return:RTE_E_OK
TEST.VALUE:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.Data:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.Data[0][0]:3
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.002
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.002
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData work successfully,and if variable can work normally;

Obtain data from RTE,check if return success;

set Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess:
	return value = RTE_E_INVALID;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6026]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6027]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6029]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagInertialProcessWrite_DeMeasuredValue_InertialProcess.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.Data:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_GNSSAntennasBroken_Read_ReadData.return:RTE_E_INVALID
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData

-- Test Case: RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.001
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData work successfully,and if variable can work normally;

Obtain data from RTE,check if return success;

set Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00:
	return value = RTE_E_OK;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.Program_Corrected_ECC_errors = 0xFFFFFFFF;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.Data_Corrected_ECC_errors=0xFFFFFFFF;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.PFlash_Corrected_ECC_errors = 0xFFFFFFFF;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.DFlash_Corrected_ECC_errors = 0xFFFFFFFF;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.SRAM_Corrected_ECC_errors = 0xFFFFFFFF;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.Adress_of_last_error_PCACHE_PSPR = 0xFFFFFFFF;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.Address_of_last_error_DCACHE_DSPR = 0xFFFFFFFF;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.Address_of_last_error_PFLASH = 0xFFFFFFFF;
	BISTQM_SH00Data.Platform_SH_Memory_Health_0xb0b6.Address_of_last_error_SRAM = 0xFFFFFFFF;

verify function return value and * Data Array value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6566]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6567]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6568]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.Address_of_last_error_DCACHE_DSPR:0xFFFFFFFF
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.DFlash_Corrected_ECC_errors:0xFFFFFFFF
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.Address_of_last_error_SRAM:0xFFFFFFFF
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.SRAM_Corrected_ECC_errors:0xFFFFFFFF
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.Adress_of_last_error_PCACHE_PSPR:0xFFFFFFFF
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.Address_of_last_error_PFLASH:0xFFFFFFFF
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.Data_Corrected_ECC_errors:0xFFFFFFFF
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.PFlash_Corrected_ECC_errors:0xFFFFFFFF
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.data[0].Platform_SH_Memory_Health_0xb0b6.Program_Corrected_ECC_errors:0xFFFFFFFF
TEST.VALUE:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][0]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][1]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][2]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][3]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][4]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][5]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][6]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][7]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][8]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][9]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][10]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][11]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][12]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][13]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][14]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][15]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][16]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][17]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][18]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][19]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][20]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][21]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][22]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][23]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][24]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][25]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][26]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][27]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][28]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][29]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][30]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][31]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][32]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][33]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][34]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.Data[0][35]:0xFF
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.002
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.002
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData work successfully,and if variable can work normally;

Obtain data from RTE,check if return success;

set Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00 return value = RTE_E_INVALID

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6566]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6567]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6569]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTQM_SH00Write_DeMeasuredValue_BISTQM_SH00.return:RTE_E_INVALID
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Platform_SH_Memory_Health_Read_ReadData.return:RTE_E_INVALID
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ConditionCheckRead

-- Test Case: RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ConditionCheckRead.001
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ConditionCheckRead
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ConditionCheckRead.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ConditionCheckRead work successfully,and if variable can work normally;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6000]
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ConditionCheckRead.return:RTE_E_OK
TEST.END

-- Subprogram: RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData

-- Test Case: RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData.001
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData.001
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData work successfully,and if variable can work normally;

Obtain data from RTE,check if return success;

set Rte_Read_CtApDSC_SH00_PpDiagBISTASIL_SH00Write_DeMeasuredValue_BISTASIL_SH00:
	return value = RTE_E_OK;
	BISTASIL_SH00Data.Internal_Power_Supply_SH_ASIL_0xb0c4.KL30_ADC = 100;

set except value *Data[0] = 1

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6001]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6002]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6003]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTASIL_SH00Write_DeMeasuredValue_BISTASIL_SH00.data[0].Internal_Power_Supply_SH_ASIL_0xb0c4.KL30_ADC:100
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTASIL_SH00Write_DeMeasuredValue_BISTASIL_SH00.return:RTE_E_OK
TEST.VALUE:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData.Data:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData.Data[0][0]:1
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData.002
TEST.UNIT:CpApDSC_Gen_ReadMeasurementData
TEST.SUBPROGRAM:RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData
TEST.NEW
TEST.NAME:RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData.002
TEST.NOTES:
Test if function RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData work successfully,and if variable can work normally;

Obtain data from RTE,check if return success;

set Rte_Read_CtApDSC_SH00_PpDiagBISTASIL_SH00Write_DeMeasuredValue_BISTASIL_SH00:
	return value = RTE_E_INVALID;

verify function return value;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6001]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6002]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_6004]
TEST.VALUE:uut_prototype_stubs.Rte_Read_CtApDSC_SH00_PpDiagBISTASIL_SH00Write_DeMeasuredValue_BISTASIL_SH00.return:RTE_E_INVALID
TEST.EXPECTED:CpApDSC_Gen_ReadMeasurementData.RCtApDSC_SH00_DataServices_Data_Supply_Voltage_Read_ReadData.return:RTE_E_INVALID
TEST.END

-- Unit: CpApDSC_Gen_Routine

-- Subprogram: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.001
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.001
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = 2 (not include in enum table ,function can work normally)

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = 2;

verify if function return value = DCM_E_NOT_OK
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8025]
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:2
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:2
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.002
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.002
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults can work successfully,and if variable can run normally.

test Loop until we receive RTE_E_NO_DATA - queue empty!

set Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200 RetVal = RTE_E_TRANSMIT_ACK

verify if program locked in while loop
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8027]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8026]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8028]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_TRANSMIT_ACK
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].Routine_Control_Type:ROUTINECONTROL_REQUESTROUTINERESULTS
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_TRANSMIT_ACK
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.003
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.003
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults can work successfully,and if variable can run normally.

test Receive RTE_E_NO_DATA,send request to SWC success

procondition:
RoutineState = ROUTINE_INACTIVE;

set:
Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200:
	return value = RTE_E_NO_DATA
Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200 
	return value =RTE_E_OK;

verify return value and CpApDSC_RoutineControl_State
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8026]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8027]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8029]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8030]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8031]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8032]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8033]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_NO_DATA
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].Routine_Control_Type:ROUTINECONTROL_REQUESTROUTINERESULTS
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_NO_DATA
TEST.VALUE:uut_prototype_stubs.Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_OK
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:ROUTINE_MAX_NR_OF_CYCLES_FOR_RESPONSE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.004
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.004
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults can work successfully,and if variable can run normally.

test Receive RTE_E_NO_DATA,send request to SWC failed

procondition:
RoutineState = ROUTINE_INACTIVE;

set:
Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200:
	return value = RTE_E_NO_DATA
Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200 
	return value =RTE_E_INVALID;

verify return value and CpApDSC_RoutineControl_State
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8026]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8027]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8029]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8030]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_NO_DATA
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].Routine_Control_Type:ROUTINECONTROL_REQUESTROUTINERESULTS
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_NO_DATA
TEST.VALUE:uut_prototype_stubs.Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.005
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.005
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE and
RoutineTimerValue == 0;

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE;
set RoutineTimerValue == 0;

verify function return value and ErrorCode 
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8034]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8035]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8046]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8045]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8047]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8048]
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:0
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.ErrorCode[0]:DCM_E_REQUESTOUTOFRANGE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.006
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.006
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults can work successfully,and if variable can run normally.

test  Wait for response from SWC,and SWC replied

preconditon:
CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE and
RoutineTimerValue >0 ;

set Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200
	return value:RTE_E_OK
	RetVal = RTE_E_OK
	TAC2_Progress = 1;
	TAC2_Error = 1
	
verify ResData and function return value
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8034]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8035]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8036]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8037]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8038]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8039]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8041]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].TAC2_Progress:1
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].TAC2_Error:1
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_OK
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_OK
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:1
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.ResData:<<malloc 1>>
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.ResData[0][0]:1
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.ResData[0][1]:1
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.007
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.007
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults can work successfully,and if variable can run normally.

test  Wait for response from SWC,and SWC replied failed

preconditon:
CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE and
RoutineTimerValue >0 ;

set Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200
	return value:RTE_E_LOST_DATA 
	RetVal = RTE_E_LOST_DATA 
	
verify ErrorCode and function return value
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8034]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8035]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8036]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8037]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8038]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8040]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8041]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_LOST_DATA
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_LOST_DATA
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:1
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.ErrorCode[0]:RTE_E_LOST_DATA
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.008
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.008
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults can work successfully,and if variable can run normally.

test  Wait for response from SWC failed

preconditon:
CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE  and
RoutineTimerValue >0

set Rte_Receive_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200
	return value = RTE_E_INVALID
	
verify RoutineTimerValue and function return value
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8025]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8034]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8035]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8036]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8042]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8043]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8044]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:1
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:0
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_RequestResults.return:DCM_E_PENDING
TEST.END

-- Subprogram: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.001
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.001
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = 2 (not include in enum table ,function can work normally)

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = 2;

verify if function return value = DCM_E_NOT_OK
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8003]
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:2
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:2
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.002
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.002
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_INACTIVE and
Send request to SWC function work normal

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = 2;

verify if function return value = DCM_E_NOT_
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8004]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8005]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8006]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8007]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8008]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8009]
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:ROUTINE_MAX_NR_OF_CYCLES_FOR_RESPONSE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.003
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.003
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_INACTIVE and
Rte_Send function havn't work normally;

set Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200 return value = 1

verify function return value = RTE_E_INVALID
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8004]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8005]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8006]
TEST.VALUE:uut_prototype_stubs.Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.return:RTE_E_INVALID
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.004
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.004
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test routine_active = Routine_Active;

Wait for response from SWC and receive SWC replied,when SWC replied = ok，check function;

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE and
CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue = DSC_RID_MAX；
set Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200:
	RetVal = RTE_E_OK;
	return = RTE_E_OK;

verify if function Return ok and Switch to init state ;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8011]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8012]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8013]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8014]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8015]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8017]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_OK
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_OK
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:DSC_RID_MAX
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:DSC_RID_MAX
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.005
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.005
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test routine_active = Routine_Active;

Wait for response from SWC and receive SWC replied,when SWC replied = ok，check function;

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE and
CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue = DSC_RID_MAX；
set Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200:
	RetVal = RTE_E_OK;
	return = RTE_E_OK;

verify if function Return ok and Switch to init state ;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8011]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8012]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8013]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8014]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8016]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8017]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_LOST_DATA
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_LOST_DATA
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:DSC_RID_MAX
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:DSC_RID_MAX
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.006
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.006
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

Wait for response from SWC and receive SWC replied,when can't receive response from SWC，check function;

procondition:
RoutineState = ROUTINE_ACTIVE;
RoutineTimerValue>0

set Rte_Receive_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200 return value = RTE_E_INVALID;
set Rte_Receive_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200 RetVal value = RTE_E_INVALID;

verify if timer will decrement and return pending =  DCM_E_PENDING;
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8018]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8019]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8020]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8011]
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_INVALID
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:15
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:14
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.007
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.007
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

check when RoutineTimerValue == 0,function will run successfully;

precondition:
RoutineState = ROUTINE_ACTIVE;

set RoutineTimerValue == 0;

verify if function will run sunccessfully

TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8003]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8010]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8021]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8022]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8023]
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:0
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.ErrorCode[0]:DCM_E_REQUESTOUTOFRANGE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start.return:DCM_E_NOT_OK
TEST.END

-- Subprogram: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.001
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.001
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = 2 (not include in enum table ,function can work normally)

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = 2;

verify if function return value = DCM_E_NOT_OK
TEST.END_NOTES:
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:2
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:2
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.002
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.002
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_INACTIVE and
Send request to SWC function work normal

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_INACTIVE;
set Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200 return value = RTE_E_OK;

verify if send request to SWC successful,and switch to next state
TEST.END_NOTES:
TEST.VALUE:uut_prototype_stubs.Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_OK
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:ROUTINE_MAX_NR_OF_CYCLES_FOR_RESPONSE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.return:DCM_E_PENDING
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.003
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.003
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_INACTIVE and
Send request to SWC function work unsuccessfully

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_INACTIVE;
set Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200 return value = RTE_E_INVALID;

verify if send request to SWC successful,and switch to next state
TEST.END_NOTES:
TEST.VALUE:uut_prototype_stubs.Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200.data[0].Routine_Control_Type:ROUTINECONTROL_STOPROUTINE
TEST.VALUE:uut_prototype_stubs.Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.return:RTE_E_INVALID
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.004
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.004
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE and
RoutineTimerValue == 0;

set CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState = ROUTINE_ACTIVE;
set RoutineTimerValue == 0;

verify return value and if function will set NRC
TEST.END_NOTES:
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:0
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.ErrorCode[0]:DCM_E_REQUESTOUTOFRANGE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.005
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.005
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test Wait for response from SWC successfully and SWC replied

precondition:
RoutineState = ROUTINE_ACTIVE;
RoutineTimerValue>0

set Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200:
	return value = RTE_E_OK;
	RetVal = RTE_E_OK;

test function return value
verify return value and if function will set NRC
TEST.END_NOTES:
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_OK
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_OK
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:1
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.return:RTE_E_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.006
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.006
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test Wait for response from SWC successfully and SWC replied

precondition:
RoutineState = ROUTINE_ACTIVE;
RoutineTimerValue>0

set Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200:
	return value = RTE_E_LOST_DATA;
	RetVal = RTE_E_LOST_DATA;

test function return value
verify ErrorCode
TEST.END_NOTES:
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_LOST_DATA
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_LOST_DATA
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:1
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_INACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.ErrorCode[0]:RTE_E_LOST_DATA
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.return:DCM_E_NOT_OK
TEST.END

-- Test Case: RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.007
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop
TEST.NEW
TEST.NAME:RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.007
TEST.NOTES:
Test if RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Start can work successfully,and if variable can run normally.

test RTE received response failed;

precondition:
RoutineState = ROUTINE_ACTIVE;
RoutineTimerValue>0

set Rte_Send_CtApDSC_SH00_PpDiagEyeQComRead_DeFront_vision_TAC2_calibration_0x0200:
	return value = RTE_E_INVALID;
	RetVal = RTE_E_INVALID;

test function return value
verify ErrorCode
TEST.END_NOTES:
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.data[0].RetVal:RTE_E_INVALID
TEST.VALUE:uut_prototype_stubs.Rte_Receive_CtApDSC_SH00_PpDiagEyeQComWrite_DeFront_vision_TAC2_calibration_0x0200.return:RTE_E_INVALID
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:1
TEST.VALUE:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.VALUE:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.ErrorCode:<<malloc 1>>
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineTimerValue:0
TEST.EXPECTED:CpApDSC_Gen_Routine.<<GLOBAL>>.CpApDSC_RoutineControl_State[DSC_RID_0200].RoutineState:ROUTINE_ACTIVE
TEST.EXPECTED:CpApDSC_Gen_Routine.RCtApDSC_SH00_RoutineServices_Routine_Front_vision_TAC2_calibration_Start_Stop.return:DCM_E_PENDING
TEST.END

-- Subprogram: RoutineControl_Init

-- Test Case: RoutineControl_Init.001
TEST.UNIT:CpApDSC_Gen_Routine
TEST.SUBPROGRAM:RoutineControl_Init
TEST.NEW
TEST.NAME:RoutineControl_Init.001
TEST.NOTES:
Test if function RoutineControl_Init can work successfully.
TEST.END_NOTES:
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8000]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8001]
TEST.REQUIREMENT_KEY:ID_209082_DSC_[UDD_DSC_SH_SC_EP21H2_8002]
TEST.END
