Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3347D6679E
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D087864E6;
	Fri, 12 Jul 2019 07:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DnIL77Ai0SAZ; Fri, 12 Jul 2019 07:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D630864AD;
	Fri, 12 Jul 2019 07:18:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59E181BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 517D686493
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W7VCY9qw6K95 for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:18:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0FD8086490
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:18:01 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id g2so3925557pfq.0
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P4roQNx52fEn1XBPLwPCmk6lP/r7J/b3EOMhta26DNM=;
 b=gjVlopBAqD+QW+hHdFCpcsV5t3gzW+Vx1OEqgll0DrLU3fPdRpmjUzk+pKXqI7/MCy
 tDOWclrOLTUG5MgY36UPZjtZjcBC/odjjxk1fHC/dnEz33nP1xprkykfBkvDzczNbG6z
 Tlq01rbxr/Rq2oLnCw2ldxe1VdoxeZCfVwE8pOMJATxPTM2uK4S+vbsqshiawyQgFDsR
 4xXYHEccPI7c561vdnAhi0vXh1KF/QmhvNCcNvd8Q04sftRnxfusV3pR8cYu+sjXW08Z
 HPMtURJthJc57hWGWB3kLb6Xj2QWkPl9Byw4yAn5htbkwcii+zWQHTKiY5h2m6tLtrxV
 ZvhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P4roQNx52fEn1XBPLwPCmk6lP/r7J/b3EOMhta26DNM=;
 b=qQZLFHjWDkB93YbwKGSDMiqqJx7/f+2jQFMOYkusnDHbHc1PrAxgV+OVXE9kGN6F5S
 5yoXF7EiOur/XnkxMzFhJJNUQz2wztJ2J+9UUMJTj9bBBXac2wPqpwKM+etR0/Jdzehq
 JnlGVPMicuqFzs+e6KKSiHlqnKpJYyDSIQAqgY3j3qxPXkfGtsPvR6ywXipnaXYeuh0w
 WPeUBpQHsDv4yq3eIA7vdZ1QEpYpw5dToFa4FbppmBHv5VzZYFEYVbmsLQYnpoVS/UVZ
 bLPCoVb6itg66oXDz864zSkHl76l8LKlLQzh796qtPUjX8aDU7AcRSinXKZ40urRLZ0N
 v0tw==
X-Gm-Message-State: APjAAAXI0IYeHQLf7vyzZLCIOCruYAT2XBl5JpqtkW47D9bIsi01rlqH
 TipBPc4tac0Me8Sq0DUcSZCMFhyM
X-Google-Smtp-Source: APXvYqywii33EESKOIidiPzAwtXdoK6vlcm+9PXtSB1JyCq1ht9mPDKhEO7MKWKiio9pIteaJqFogQ==
X-Received: by 2002:a17:90a:8a15:: with SMTP id
 w21mr9939434pjn.134.1562915880761; 
 Fri, 12 Jul 2019 00:18:00 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b126sm14019422pfa.126.2019.07.12.00.17.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:18:00 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 1/8] staging: rtl8188eu: core: Replace function Set_MSR()
Date: Fri, 12 Jul 2019 12:47:38 +0530
Message-Id: <20190712071746.2474-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change reference to Set_NETYPE0_MSR to Set_MSR.
Replace the contents of Set_MSR with the contents of Set_NETYPE0_MSR as
Set_MSR does nothing but call Set_NETYPE0_MSR.
Delete Set_NETYPE0_MSR.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  | 2 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 7 +------
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 6f3c03201f64..18dc9fc1c04a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -4854,7 +4854,7 @@ u8 setopmode_hdl(struct adapter *padapter, u8 *pbuf)
 	}
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_SET_OPMODE, (u8 *)(&type));
-	/* Set_NETYPE0_MSR(padapter, type); */
+	/* Set_MSR(padapter, type); */
 
 	return H2C_SUCCESS;
 }
diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 7bfc5b7c2757..b75568efb46f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -270,14 +270,9 @@ void Switch_DM_Func(struct adapter *padapter, u32 mode, u8 enable)
 		rtw_hal_set_hwreg(padapter, HW_VAR_DM_FUNC_CLR, (u8 *)(&mode));
 }
 
-static void Set_NETYPE0_MSR(struct adapter *padapter, u8 type)
-{
-	rtw_hal_set_hwreg(padapter, HW_VAR_MEDIA_STATUS, (u8 *)(&type));
-}
-
 void Set_MSR(struct adapter *padapter, u8 type)
 {
-	Set_NETYPE0_MSR(padapter, type);
+	rtw_hal_set_hwreg(padapter, HW_VAR_MEDIA_STATUS, (u8 *)(&type));
 }
 
 inline u8 rtw_get_oper_ch(struct adapter *adapter)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
