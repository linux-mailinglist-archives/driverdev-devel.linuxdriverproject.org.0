Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7484433FAF0
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:21:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4F4C4EDE7;
	Wed, 17 Mar 2021 22:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2YDsOU8CY1m; Wed, 17 Mar 2021 22:21:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A1DE4EDE0;
	Wed, 17 Mar 2021 22:21:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3BB61BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3AE06F998
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VZ7ZA8yi8o5d for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDD3C60636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:20 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id u5so817435ejn.8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0yQrwQM9MfZHmtNg9fqEKHLvxPvgVt8ykp5OqKUE9ZM=;
 b=Wf/CClZTZ2mHG3cZzsl2XhklTUrit+r+wqg8BW3qHvTtHo5DJonwHdFgUdOd2Vpx3v
 g2crBXeo3JYUf7o8ZE+x4PPxbqCHQQ6plTuHzo2kRy0fFh2VwUvK8vJqyj34Yzjjfeqe
 L+mj/PCZgop6hqBQtubLVRLMEMo+d6BNzYvd4dG9FX+bMXPirnrrFv7ESEWCAiaadHEE
 Fw2SDXx5vB0wX3pTuqnRrCIttCq0N6REi0VSG9gMYv+SMwqPFT8IS9/mIBub5GksDnTh
 aa/v2PsSqgBobugNEPGMRbh2M1dStOAv9BtIlWGN7N9fJSqfvlg66XFPSkm2ZQRPvg1r
 PaYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0yQrwQM9MfZHmtNg9fqEKHLvxPvgVt8ykp5OqKUE9ZM=;
 b=RH85flw4JLqYpWL6hkxDUXhjHNKi9iP2m7v2qU8fazkJJloY3hGtQLStyTOZRv4bQz
 RSVBxOXYKTzjB+8hefuwytoLMm57RRHx7u2wsPBvPH51nVGh13W1d5fR6e5zkKuklV6i
 NVW9ZLGHFp7An44XZ8bHPZP90D2lUwg9y5/lZ5601ItitWuavz+L4VNF2cD/VaqsA+Wo
 un+EfwW5/uoNdmxE9tBzJdnG5YgdmhG3YRXF3f56H9TiCS3EiPOx7ogLWPhC+e1n5kaD
 eJa5qny/scekCFhp5n0kMEi58Ry8PynuNf0YOFY78pHuXkiS8ypDbNdHBS10rocNxZyf
 h6mw==
X-Gm-Message-State: AOAM532VKbNjbRfARxfys8Xi2mvBT5+iSiLgTx11aZ8h5qQaFGrOUptJ
 9fIFt+UQF73CbKJKWvNV7Do=
X-Google-Smtp-Source: ABdhPJz+keVnC27QmgN3R6LHEXP3uX6a/9GDS3dpIzz1TsgoJRqWQ6GEysFEhwlzj44VSuzk2ailCQ==
X-Received: by 2002:a17:906:d787:: with SMTP id
 pj7mr36959800ejb.257.1616019678877; 
 Wed, 17 Mar 2021 15:21:18 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:18 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 00/43] Staging: rtl8723bs: convert ALL_CAPS names
Date: Wed, 17 Mar 2021 23:20:47 +0100
Message-Id: <20210317222130.29528-1-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This set of patches converts struct and enum names in the
staging/rtl8723bs source code from all caps to lowercase.
The checkpatch.pl script emits many errors and warnings for these
patches, however all of them are caused by the original code.

[PATCH 01/43] Staging: rtl8723bs: fix names in rtw_mlme.h
[PATCH 02/43] Staging: rtl8723bs: fix names in wlan_bssdef.h
[PATCH 03/43] Staging: rtl8723bs: fix names in rtw_pwrctrl.h
[PATCH 04/43] Staging: rtl8723bs: fix names in hal_com.h
[PATCH 05/43] Staging: rtl8723bs: fix names in rtw_eeprom.h
[PATCH 06/43] Staging: rtl8723bs: fix names in rtw_recv.h
[PATCH 07/43] Staging: rtl8723bs: fix names in drv_types.h
[PATCH 08/43] Staging: rtl8723bs: fix names in rtw_ht.h
[PATCH 09/43] Staging: rtl8723bs: fix names in rtw_mp.h
[PATCH 10/43] Staging: rtl8723bs: fix names in rtw_cmd.h
[PATCH 11/43] Staging: rtl8723bs: fix names in hal_intf.h
[PATCH 12/43] Staging: rtl8723bs: fix names in osdep_service.h
[PATCH 13/43] Staging: rtl8723bs: fix names in rtw_security.h
[PATCH 14/43] Staging: rtl8723bs: fix names in hal_com_h2c.h
[PATCH 15/43] Staging: rtl8723bs: fix names in rtl8723b_xmit.h
[PATCH 16/43] Staging: rtl8723bs: fix names in HalVerDef.h
[PATCH 17/43] Staging: rtl8723bs: fix names in wifi.h
[PATCH 18/43] Staging: rtl8723bs: fix names in rtl8723b_hal.h
[PATCH 19/43] Staging: rtl8723bs: fix names in hal_phy.h
[PATCH 20/43] Staging: rtl8723bs: fix names in rtw_mlme_ext.h
[PATCH 21/43] Staging: rtl8723bs: fix names in rtw_xmit.h
[PATCH 22/43] Staging: rtl8723bs: fix names in rtw_rf.h
[PATCH 23/43] Staging: rtl8723bs: fix names in HalPwrSeqCmd.h
[PATCH 24/43] Staging: rtl8723bs: fix names in hal_com_phycfg.h
[PATCH 25/43] Staging: rtl8723bs: fix names in sta_info.h
[PATCH 26/43] Staging: rtl8723bs: fix names in hal_data.h
[PATCH 27/43] Staging: rtl8723bs: fix names in ieee80211.h
[PATCH 28/43] Staging: rtl8723bs: fix names in rtw_efuse.h
[PATCH 29/43] Staging: rtl8723bs: fix names in hal_btcoex.h
[PATCH 30/43] Staging: rtl8723bs: fix names in odm_interface.h
[PATCH 31/43] Staging: rtl8723bs: fix names in HalBtcOutSrc.h
[PATCH 32/43] Staging: rtl8723bs: fix names in odm_EdcaTurboCheck.h
[PATCH 33/43] Staging: rtl8723bs: fix names in odm_HWConfig.h
[PATCH 34/43] Staging: rtl8723bs: fix names in HalBtc8723b1Ant.h
[PATCH 35/43] Staging: rtl8723bs: fix names in odm_types.h
[PATCH 36/43] Staging: rtl8723bs: fix names in odm_DIG.h
[PATCH 37/43] Staging: rtl8723bs: fix names in hal_btcoex.c
[PATCH 38/43] Staging: rtl8723bs: fix names in odm_CfoTracking.h
[PATCH 39/43] Staging: rtl8723bs: fix names in HalPhyRf.h
[PATCH 40/43] Staging: rtl8723bs: fix names in odm.h
[PATCH 41/43] Staging: rtl8723bs: fix in odm_DynamicBBPowerSaving.h
[PATCH 42/43] Staging: rtl8723bs: fix names in odm_NoiseMonitor.h
[PATCH 43/43] Staging: rtl8723bs: fix names in HalBtc8723b2Ant.h

 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   4 +-
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |   6 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  26 +--
 drivers/staging/rtl8723bs/core/rtw_odm.c      |   6 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |   4 +-
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 156 +++++++++---------
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.h   |  40 ++---
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.c   | 146 ++++++++--------
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.h   |  38 ++---
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h  | 100 +++++------
 .../staging/rtl8723bs/hal/HalHWImg8723B_BB.c  |  10 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_BB.h  |   6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_MAC.c |   6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_MAC.h |   2 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_RF.c  |  12 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_RF.h  |   6 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.c      |   8 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.h      |  18 +-
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    |  56 +++----
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.h    |  12 +-
 drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c  |   4 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c    | 138 ++++++++--------
 drivers/staging/rtl8723bs/hal/hal_com.c       |  22 +--
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    |  18 +-
 drivers/staging/rtl8723bs/hal/hal_intf.c      |  12 +-
 drivers/staging/rtl8723bs/hal/hal_pwr_seq.c   |  22 +--
 drivers/staging/rtl8723bs/hal/odm.c           | 102 ++++++------
 drivers/staging/rtl8723bs/hal/odm.h           | 150 ++++++++---------
 .../staging/rtl8723bs/hal/odm_CfoTracking.c   |  28 ++--
 .../staging/rtl8723bs/hal/odm_CfoTracking.h   |   2 +-
 drivers/staging/rtl8723bs/hal/odm_DIG.c       |  52 +++---
 drivers/staging/rtl8723bs/hal/odm_DIG.h       |   4 +-
 .../rtl8723bs/hal/odm_DynamicBBPowerSaving.c  |   8 +-
 .../rtl8723bs/hal/odm_DynamicBBPowerSaving.h  |   2 +-
 .../rtl8723bs/hal/odm_DynamicTxPower.c        |   2 +-
 .../rtl8723bs/hal/odm_EdcaTurboCheck.c        |   6 +-
 .../rtl8723bs/hal/odm_EdcaTurboCheck.h        |   2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |  24 +--
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h  |  28 ++--
 .../staging/rtl8723bs/hal/odm_NoiseMonitor.c  |   2 +-
 .../staging/rtl8723bs/hal/odm_NoiseMonitor.h  |   2 +-
 drivers/staging/rtl8723bs/hal/odm_PathDiv.c   |   4 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.c        |  16 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.h        |  16 +-
 drivers/staging/rtl8723bs/hal/odm_debug.c     |   2 +-
 drivers/staging/rtl8723bs/hal/odm_debug.h     |   2 +-
 drivers/staging/rtl8723bs/hal/odm_interface.h |   2 +-
 drivers/staging/rtl8723bs/hal/odm_types.h     |   4 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  12 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  12 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  54 +++---
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   |  24 +--
 .../staging/rtl8723bs/hal/rtl8723b_rf6052.c   |   2 +-
 .../staging/rtl8723bs/hal/rtl8723bs_recv.c    |   2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  |   8 +-
 .../staging/rtl8723bs/include/HalPwrSeqCmd.h  |   6 +-
 drivers/staging/rtl8723bs/include/HalVerDef.h |  50 +++---
 drivers/staging/rtl8723bs/include/drv_types.h |   8 +-
 .../staging/rtl8723bs/include/hal_btcoex.h    |   2 +-
 drivers/staging/rtl8723bs/include/hal_com.h   |  14 +-
 .../staging/rtl8723bs/include/hal_com_h2c.h   |   2 +-
 .../rtl8723bs/include/hal_com_phycfg.h        |  14 +-
 drivers/staging/rtl8723bs/include/hal_data.h  |  32 ++--
 drivers/staging/rtl8723bs/include/hal_intf.h  |  36 ++--
 drivers/staging/rtl8723bs/include/hal_phy.h   |  16 +-
 .../staging/rtl8723bs/include/hal_phy_cfg.h   |   6 +-
 .../staging/rtl8723bs/include/hal_pwr_seq.h   |  22 +--
 drivers/staging/rtl8723bs/include/ieee80211.h |  10 +-
 .../staging/rtl8723bs/include/osdep_service.h |   2 +-
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |  10 +-
 .../staging/rtl8723bs/include/rtl8723b_rf.h   |   2 +-
 .../staging/rtl8723bs/include/rtl8723b_xmit.h |   2 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |   6 +-
 .../staging/rtl8723bs/include/rtw_eeprom.h    |   2 +-
 drivers/staging/rtl8723bs/include/rtw_efuse.h |   6 +-
 drivers/staging/rtl8723bs/include/rtw_ht.h    |   6 +-
 .../staging/rtl8723bs/include/rtw_ioctl_set.h |   4 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h  |  20 +--
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  28 ++--
 drivers/staging/rtl8723bs/include/rtw_mp.h    |  20 +--
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   |   8 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h  |   2 +-
 drivers/staging/rtl8723bs/include/rtw_rf.h    |  18 +-
 .../staging/rtl8723bs/include/rtw_security.h  |   6 +-
 drivers/staging/rtl8723bs/include/rtw_xmit.h  |   2 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |   4 +-
 drivers/staging/rtl8723bs/include/wifi.h      |  14 +-
 .../staging/rtl8723bs/include/wlan_bssdef.h   |  28 ++--
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |   6 +-
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |  10 +-
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |   8 +-
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c  |   2 +-
 92 files changed, 943 insertions(+), 943 deletions(-)

-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
