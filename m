Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE84433C34E
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:06:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AE3E4CF79;
	Mon, 15 Mar 2021 17:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5tkRvFzW5IxW; Mon, 15 Mar 2021 17:06:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC9D347489;
	Mon, 15 Mar 2021 17:06:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16EE51BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14017430B9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJyKHiItL-5O for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B4CE40170
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:09 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id ci14so67355353ejc.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5kkPHfLMJuEwBnwAYQK9hsZQI1TYbfCLZ0FHQppahV0=;
 b=l9YuTuIWNVtCzu2xbEb754SponWEj0o2s6QzmqGrBQTWU1m92ZMxmcrsDwILjtJkdZ
 5QnTbeeluKbYl/cjBJapwArY3yFP4xVBcUToyuv8REd/6Bzy4AsPQNjcmKyIw2vmvB6X
 g4rPbrjkU+VyabC2R1nfLEfLHobtRudDFKH+s1hamgH9LbKOe3TqkxzJMg4Zcex2vhkw
 DWtzgBGDUUcTf9g7cdXfrwnrotsDsbswPlk11xrhiNtfQd/4lugOUcZyuM0o1Yj9X8sw
 IOGDSkzZMKIVVdl7Z/UnVhXTy8S8UzbbqNTj35sUbuECUt9B05fsugChub6OyaAVP3DY
 GM1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5kkPHfLMJuEwBnwAYQK9hsZQI1TYbfCLZ0FHQppahV0=;
 b=gAncLy9ll29skzYS0UqS8TAyFbLBnEMMiIYdbyKBi0sblMsEqT2O2mni2q0ThKmZXn
 bt/UOfFvm2xEzexTP5/notlOTapCkpc2A3hEczuOvr7+KWZQlxDSRQUcV+O4Sws2O4MX
 TUki7dqf1w01/P7hubQG32MWnXI2UsfLpFN4Q4p0D4nwc5GUNU05+eP1OBClZduDB8Mu
 F6HDFg8rCZWwmYdoBFBdPBV1+hWNUKL8xfn2hU3pW5adnlXziJ1rKrm+gYM5lDvwwkqc
 yOZv5FxnYvfMG0Cxe3+mBIleQES++sUwJ5d9y9+RZPcLFaF9gEvxG0HNO5WuVuFDRwl4
 8eFQ==
X-Gm-Message-State: AOAM530gFn0oj0UiN+bPjFPsqZtZ1D1/lkRI7I9x8BBktU9Gf+jkerGc
 KNP2UApZtXbKx7fJzTNS/2c=
X-Google-Smtp-Source: ABdhPJx9vsRnoYqrzNW1bjtWUHYHiyWohKTEn/KNQ5IjF6SHSe1OgMBFmxWWYzEyrC8D3lZQPSQbQg==
X-Received: by 2002:a17:906:144d:: with SMTP id
 q13mr23802065ejc.458.1615827967258; 
 Mon, 15 Mar 2021 10:06:07 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:06 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 00/57] Staging: rtl8723bs: fix POINTER_LOCATION whitespaces
Date: Mon, 15 Mar 2021 18:05:21 +0100
Message-Id: <20210315170618.2566-1-marcocesati@gmail.com>
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

This set of patches fixes 522 checkpatch.pl errors of type
POINTER_LOCATION in the staging/rtl8723bs souce code. Every patch is
purely syntactical: it does not change the generated machine code.
Furthermore, every single patch leaves the source code fully compilable,
so that 'git bisect' will not be affected.

The checkpatch.pl script emits many errors and warnings for these
patches, however all of them are caused by the original code. They shall
be fixed in different patchsets.

[PATCH 01/57] Staging: rtl8723bs: fix spaces in rtw_cmd.c
[PATCH 02/57] Staging: rtl8723bs: fix spaces in HalBtc8723b1Ant.c
[PATCH 03/57] Staging: rtl8723bs: fix spaces in HalBtc8723b1Ant.h
[PATCH 04/57] Staging: rtl8723bs: fix spaces in HalBtc8723b2Ant.c
[PATCH 05/57] Staging: rtl8723bs: fix spaces in HalBtc8723b2Ant.h
[PATCH 06/57] Staging: rtl8723bs: fix spaces in HalBtcOutSrc.h
[PATCH 07/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_BB.c
[PATCH 08/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_BB.h
[PATCH 09/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_MAC.c
[PATCH 10/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_MAC.h
[PATCH 11/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_RF.c
[PATCH 12/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_RF.h
[PATCH 13/57] Staging: rtl8723bs: fix spaces in HalPhyRf.c
[PATCH 14/57] Staging: rtl8723bs: fix spaces in HalPhyRf.h
[PATCH 15/57] Staging: rtl8723bs: fix spaces in HalPhyRf_8723B.c
[PATCH 16/57] Staging: rtl8723bs: fix spaces in HalPhyRf_8723B.h
[PATCH 17/57] Staging: rtl8723bs: fix spaces in hal_btcoex.c
[PATCH 18/57] Staging: rtl8723bs: fix spaces in hal_com.c
[PATCH 19/57] Staging: rtl8723bs: fix spaces in hal_com_phycfg.c
[PATCH 20/57] Staging: rtl8723bs: fix spaces in odm.c
[PATCH 21/57] Staging: rtl8723bs: fix spaces in odm.h
[PATCH 22/57] Staging: rtl8723bs: fix spaces in odm_CfoTracking.c
[PATCH 23/57] Staging: rtl8723bs: fix spaces in odm_DIG.c
[PATCH 24/57] Staging: rtl8723bs: fix in odm_DynamicBBPowerSaving.c
[PATCH 25/57] Staging: rtl8723bs: fix spaces in odm_DynamicTxPower.c
[PATCH 26/57] Staging: rtl8723bs: fix spaces in odm_EdcaTurboCheck.c
[PATCH 27/57] Staging: rtl8723bs: fix spaces in odm_HWConfig.c
[PATCH 28/57] Staging: rtl8723bs: fix spaces in odm_HWConfig.h
[PATCH 29/57] Staging: rtl8723bs: fix spaces in odm_NoiseMonitor.c
[PATCH 30/57] Staging: rtl8723bs: fix spaces in odm_PathDiv.c
[PATCH 31/57] Staging: rtl8723bs: fix spaces in odm_RegConfig8723B.c
[PATCH 32/57] Staging: rtl8723bs: fix spaces in odm_RegConfig8723B.h
[PATCH 33/57] Staging: rtl8723bs: fix spaces in odm_debug.c
[PATCH 34/57] Staging: rtl8723bs: fix spaces in odm_debug.h
[PATCH 35/57] Staging: rtl8723bs: fix spaces in rtl8723b_dm.c
[PATCH 36/57] Staging: rtl8723bs: fix spaces in rtl8723b_hal_init.c
[PATCH 37/57] Staging: rtl8723bs: fix spaces in rtl8723b_phycfg.c
[PATCH 38/57] Staging: rtl8723bs: fix spaces in HalPwrSeqCmd.h
[PATCH 39/57] Staging: rtl8723bs: fix spaces in basic_types.h
[PATCH 40/57] Staging: rtl8723bs: fix spaces in drv_types.h
[PATCH 41/57] Staging: rtl8723bs: fix spaces in hal_com.h
[PATCH 42/57] Staging: rtl8723bs: fix spaces in hal_com_h2c.h
[PATCH 43/57] Staging: rtl8723bs: fix spaces in hal_com_phycfg.h
[PATCH 44/57] Staging: rtl8723bs: fix spaces in ieee80211.h
[PATCH 45/57] Staging: rtl8723bs: fix spaces in ioctl_cfg80211.h
[PATCH 46/57] Staging: rtl8723bs: fix spaces in osdep_intf.h
[PATCH 47/57] Staging: rtl8723bs: fix spaces in osdep_service.h
[PATCH 48/57] Staging: rtl8723bs: fix spaces in osdep_service_linux.h
[PATCH 49/57] Staging: rtl8723bs: fix spaces in recv_osdep.h
[PATCH 50/57] Staging: rtl8723bs: fix spaces in rtl8723b_xmit.h
[PATCH 51/57] Staging: rtl8723bs: fix spaces in rtw_cmd.h
[PATCH 52/57] Staging: rtl8723bs: fix spaces in rtw_ioctl_set.h
[PATCH 53/57] Staging: rtl8723bs: fix spaces in rtw_mlme_ext.h
[PATCH 54/57] Staging: rtl8723bs: fix spaces in xmit_osdep.h
[PATCH 55/57] Staging: rtl8723bs: fix spaces in os_intfs.c
[PATCH 56/57] Staging: rtl8723bs: fix spaces in osdep_service.c
[PATCH 57/57] Staging: rtl8723bs: fix spaces in xmit_linux.c

 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   2 +-
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 152 +++++++++---------
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.h   |  28 ++--
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.c   | 142 ++++++++--------
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.h   |  28 ++--
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h  |  28 ++--
 .../staging/rtl8723bs/hal/HalHWImg8723B_BB.c  |  10 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_BB.h  |   6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_MAC.c |   6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_MAC.h |   2 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_RF.c  |  12 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_RF.h  |   6 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.c      |   6 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.h      |   4 +-
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    |  54 +++----
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.h    |  10 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c    |  89 +++++-----
 drivers/staging/rtl8723bs/hal/hal_com.c       |   2 +-
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    |   6 +-
 drivers/staging/rtl8723bs/hal/odm.c           |  92 +++++------
 drivers/staging/rtl8723bs/hal/odm.h           |  32 ++--
 .../staging/rtl8723bs/hal/odm_CfoTracking.c   |  28 ++--
 drivers/staging/rtl8723bs/hal/odm_DIG.c       |  60 +++----
 .../rtl8723bs/hal/odm_DynamicBBPowerSaving.c  |   4 +-
 .../rtl8723bs/hal/odm_DynamicTxPower.c        |   2 +-
 .../rtl8723bs/hal/odm_EdcaTurboCheck.c        |   6 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |  18 +--
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h  |  12 +-
 .../staging/rtl8723bs/hal/odm_NoiseMonitor.c  |   2 +-
 drivers/staging/rtl8723bs/hal/odm_PathDiv.c   |   4 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.c        |  14 +-
 .../rtl8723bs/hal/odm_RegConfig8723B.h        |  14 +-
 drivers/staging/rtl8723bs/hal/odm_debug.c     |   2 +-
 drivers/staging/rtl8723bs/hal/odm_debug.h     |   2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  12 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  24 +--
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   |   4 +-
 .../staging/rtl8723bs/include/HalPwrSeqCmd.h  |   2 +-
 .../staging/rtl8723bs/include/basic_types.h   |   2 +-
 drivers/staging/rtl8723bs/include/drv_types.h |  12 +-
 drivers/staging/rtl8723bs/include/hal_com.h   |  16 +-
 .../staging/rtl8723bs/include/hal_com_h2c.h   |   2 +-
 .../rtl8723bs/include/hal_com_phycfg.h        |  26 +--
 drivers/staging/rtl8723bs/include/ieee80211.h |   7 +-
 .../rtl8723bs/include/ioctl_cfg80211.h        |   2 +-
 .../staging/rtl8723bs/include/osdep_intf.h    |   2 +-
 .../staging/rtl8723bs/include/osdep_service.h |   4 +-
 .../rtl8723bs/include/osdep_service_linux.h   |   2 +-
 .../staging/rtl8723bs/include/recv_osdep.h    |   2 +-
 .../staging/rtl8723bs/include/rtl8723b_xmit.h |   4 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |   4 +-
 .../staging/rtl8723bs/include/rtw_ioctl_set.h |   4 +-
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  18 +--
 .../staging/rtl8723bs/include/xmit_osdep.h    |   4 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |   2 +-
 .../staging/rtl8723bs/os_dep/osdep_service.c  |   2 +-
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c |   4 +-
 57 files changed, 524 insertions(+), 522 deletions(-)

-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
