ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/lime/config/BoardConfigQcom.mk
endif

include vendor/lime/config/BoardConfigKernel.mk

include vendor/lime/config/BoardConfigSoong.mk
