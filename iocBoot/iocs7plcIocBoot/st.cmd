#!../../bin/linux-x86_64/s7plcIoc

#- You may have to change s7plcIoc to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/s7plcIoc.dbd",0,0)
s7plcIoc_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/s7plcIoc.db","user=root")

iocInit()

## Start any sequence programs
#seq sncs7plcIoc,"user=root"
