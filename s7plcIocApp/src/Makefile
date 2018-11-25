TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = s7plcIoc
# s7plcIoc.dbd will be created and installed
DBD += s7plcIoc.dbd

# s7plcIoc.dbd will be made up from these files:
s7plcIoc_DBD += base.dbd
s7plcIoc_DBD += xxxSupport.dbd
s7plcIoc_LIBS += s7plcSupport

# Include dbd files from all support applications:
#s7plcIoc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#s7plcIoc_LIBS += xxx

# s7plcIoc_registerRecordDeviceDriver.cpp derives from s7plcIoc.dbd
s7plcIoc_SRCS += s7plcIoc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
s7plcIoc_SRCS_DEFAULT += s7plcIocMain.cpp
s7plcIoc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#s7plcIoc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
s7plcIoc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

