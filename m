Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5662D21AC
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:07:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 521F687A7A;
	Tue,  8 Dec 2020 04:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Qf23zdbCNO1; Tue,  8 Dec 2020 04:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A478587A07;
	Tue,  8 Dec 2020 04:07:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDC071BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C9DEC8768C
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OCR2Ww69f-Eb for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0867887681
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:39 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id p5so10633783ilm.12
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EXnHiFhA62oVUcQ34nxEosBhVg1xsDqILWNASVrluOk=;
 b=CSwYIMWIqxqSQyY1CF+/zvtA3ng62R7i74zjhvLqY1OsxrfXDEBsOlQ5IQnPpL7Svi
 1kPP4nGCzCMa85Cs6B+Tc4TjOY/2l80uHFNO04mQbvQRvcdkm01P2AvXvXMvIrpuKLxX
 7ZPY4479tEY5hwjqwCFuffhCKfM2YFiFjOaiqcsoeu4Xoahv3RJmZpIDtxN4FuA3OXvU
 HRDPhNFSoLc/e8r3jq94M0t8BKTr2PnZRgOjvo/LyZH9x/TOp/JN5LOFhIX3RZdvrBvP
 T9PoLv4IJFODmNWyElhBca8uL4QYZs/5UZc0s8M/1AjsPqjWYdPqCBcc+Pixk20dUIld
 mP5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EXnHiFhA62oVUcQ34nxEosBhVg1xsDqILWNASVrluOk=;
 b=YEXrBRSQ4Xw94RGTVm4xQT7DOCEUuJ4rYz/Xy2mywTfQ21b1XZ9XqrcwER11K3jQFt
 bdCdc5DURSAbg9GF9OIvt/4XyEUVw3zwyFKrdiPkG3+txGQ6gMM1/ae7+psmFHJHdG7r
 un1q+m/kyBStQiX8d5dukzKnn8TuFQOhs+KwBukZInx+JK2trpyADUf1YiQUL0dyZizu
 lCf+VH2zdn9LsW7PslpfCnQov2zaHitrJFs/jR9S+4AM6VTNPSGEe0mYfnG10FAkQsZ5
 v7NgDXVVWYH8iBLIZ6MS/Jde66XuZ5XNtf0Gf1ocnMdTurLNlmV9rYeBtUwNO7nzaRuG
 z6Tw==
X-Gm-Message-State: AOAM531hCKxo2qkY2OujZxmc+0kBRKB5UD6X1HCX3pLLj0kMr8FHO0GP
 OKQJ9itmcmq4Vtc70C5jufo=
X-Google-Smtp-Source: ABdhPJwm12RtvwYLO/AYypjmqK/prbrJWpme6ClHwTupI5C/j+MLckhML0/gLISD9w58SzCwmQ48KQ==
X-Received: by 2002:a92:8bcb:: with SMTP id
 i194mr24199798ild.200.1607400458333; 
 Mon, 07 Dec 2020 20:07:38 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:37 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 00/21] replace unique macros and ELEMENT_ID
Date: Mon,  7 Dec 2020 22:07:12 -0600
Message-Id: <20201208040733.379197-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set replaces many macros and the ELEMENT_ID enum with the
ieee80211_eid enum from linux/ieee80211.h. In several cases more than
one macro or constant is replaced by one constant. As suggested, each
constant replacement is separated into a distinct patch.

Changes in v2:
- Single patch divided into per-constant replacement patches

v1 can be found here:
https://lore.kernel.org/driverdev-devel/20201206034517.4276-10-ross.schm.dev@gmail.com/

Ross Schmidt (21):
  staging: rtl8723bs: use WLAN_EID_HT_CAPABILITY
  staging: rtl8723bs: use WLAN_EID_VENDOR_SPECIFIC
  staging: rtl8723bs: use WLAN_EID_RSN
  staging: rtl8723bs: use WLAN_EID_HT_OPERATION
  staging: rtl8723bs: replace WLAN_EID_VHT_OP_MODE_NOTIFY
  staging: rtl8723bs: replace _SSID_IE_
  staging: rtl8723bs: replace _SUPPORTEDRATES_IE_
  staging: rtl8723bs: replace _DSSET_IE_
  staging: rtl8723bs: replace _TIM_IE_
  staging: rtl8723bs: replace _IBSS_PARA_IE_
  staging: rtl8723bs: replace _COUNTRY_IE_
  staging: rtl8723bs: replace _CHLGETXT_IE_
  staging: rtl8723bs: replace _ERPINFO_IE_
  staging: rtl8723bs: replace _EXT_SUPPORTEDRATES_IE_
  staging: rtl8723bs: replace _WAPI_IE_
  staging: rtl8723bs: replace _MME_IE_
  staging: rtl8723bs: replace EID_BSSCoexistence
  staging: rtl8723bs: replace EID_BSSIntolerantChlReport
  staging: rtl8723bs: replace EID_EXTCapability
  staging: rtl8723bs: remove unused macros
  staging: rtl8723bs: remove ELEMENT_ID enum

 drivers/staging/rtl8723bs/core/rtw_ap.c       |  62 ++++----
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   4 +-
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  44 +++---
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  26 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 146 +++++++++---------
 drivers/staging/rtl8723bs/core/rtw_recv.c     |   4 +-
 drivers/staging/rtl8723bs/core/rtw_security.c |   2 +-
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  26 ++--
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |  12 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  20 +--
 drivers/staging/rtl8723bs/include/ieee80211.h |   8 -
 .../staging/rtl8723bs/include/rtw_security.h  |   3 -
 drivers/staging/rtl8723bs/include/wifi.h      | 108 -------------
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |   4 +-
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |  14 +-
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |   2 +-
 16 files changed, 183 insertions(+), 302 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
