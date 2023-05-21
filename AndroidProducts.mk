#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_RMX3395.mk \
    $(LOCAL_DIR)/omni_RMX3395.mk

COMMON_LUNCH_CHOICES := \
    lineage_RMX3395-user \
    lineage_RMX3395-userdebug \
    lineage_RMX3395-eng \
    omni_RMX3395-user \
    omni_RMX3395-userdebug \
    omni_RMX3395-eng
