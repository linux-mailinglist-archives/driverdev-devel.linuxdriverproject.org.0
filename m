Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD5D562A4
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B5B120402;
	Wed, 26 Jun 2019 06:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-voxhcYfJQV; Wed, 26 Jun 2019 06:51:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 91C6D2152C;
	Wed, 26 Jun 2019 06:51:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C78041BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7DE5B85D30
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FVDsBA-FFpB3 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:51:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A594A85E6E
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:51:12 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 19so814278pfa.4
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OJq5VQefNTVLs4xZKByn3M696tDo6D932HcJOlkMSOI=;
 b=PKhjBEXbE0jV6K/hbq/3US06xKook2mRquaNTLavOdgntcqnBbnTKqRS+IxWXaKXda
 vP5k/6+6K9etXJCIQI8xPozl29zp6+QST5mJMowmnCyAqNwxi4h3K2+88Mb6kmbW0nca
 4FE2zLqe6SVN4J3404wV5aIxRhHYN76pOcfCLwMPamJ+qC6jFUW5KErEZOJC/lu5pTLn
 ihhdfYvRWxCmGn0Fcxla0dxrsY5Ftk3cpRP5ry/ObuHG2xK7QrVUvRB8bLjItv4JdOzW
 oKnHKJXUXmUfbdZpWrxyIfj/l4OEoN/u76UiYHtwGSLm/gW+uo0f5Lt7aP8kbZ276zw7
 WvBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OJq5VQefNTVLs4xZKByn3M696tDo6D932HcJOlkMSOI=;
 b=iRG/1zWgasL0DAe3dcvVQGf3ytawws28QUH48600KS7QadV7yYWiRnRhJDhDMZ6j3Q
 5o/LjlizBpXzydvWfN/Ju2YKrpcYbYF+7R6HwzrTmlVMFa2eHqd2O5wZeSDq7tS2sANs
 YKSxz854riaAIaYIQj2SKIPs4f6HeGsjqs/Hnf4zsvcIjOn5QMABeQ4cfEk5AEoxhVuf
 SaiDyHzgttMbbJ+J+GtABSi8v+KQvpjPxxNm/2qeO4Eu8W5Wl08UYZKoTqc5RLeyi/Od
 SBcCXgIa8mbIwgO4+Q18VZYP8ewczfY/nTUx+53dWZx6d8FSsg4XXzVkdMopU+4JBWXs
 baxg==
X-Gm-Message-State: APjAAAVlJeJsxX8Vi6DPK8YihLGhAX6enKBfnm93Tg4heimaeQ+1lNW9
 7gtZl3AmIGSS/KDqzv9iX7A=
X-Google-Smtp-Source: APXvYqwN4hKTz45gDqc0pEh8D0vUnaDJn/B9peOllCQB4l3sGGeICaOhgVRO1c8USaRfQmktIcjCoA==
X-Received: by 2002:a63:2ad5:: with SMTP id q204mr1416517pgq.140.1561531872302; 
 Tue, 25 Jun 2019 23:51:12 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id y23sm21734625pfo.106.2019.06.25.23.51.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:51:11 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net
Subject: [PATCH 2/4] staging: rtl8188eu: hal: Replace function
 odm_TXPowerTrackingInit()
Date: Wed, 26 Jun 2019 12:20:55 +0530
Message-Id: <20190626065057.3252-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626065057.3252-1-nishkadg.linux@gmail.com>
References: <20190626065057.3252-1-nishkadg.linux@gmail.com>
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

Remove function odm_TXPowerTrackingInit as all it does is call
odm_TXPowerTrackingThermalMeterInit.
Rename odm_TXPowerTrackingThermalMeterInit to odm_TXPowerTrackingInit
for compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm.c             | 5 -----
 drivers/staging/rtl8188eu/include/odm_precomp.h | 1 -
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index 74f7c9c81bf6..3fb2cc24436e 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -942,11 +942,6 @@ void odm_RSSIMonitorCheckCE(struct odm_dm_struct *pDM_Odm)
 /* 3============================================================ */
 
 void odm_TXPowerTrackingInit(struct odm_dm_struct *pDM_Odm)
-{
-	odm_TXPowerTrackingThermalMeterInit(pDM_Odm);
-}
-
-void odm_TXPowerTrackingThermalMeterInit(struct odm_dm_struct *pDM_Odm)
 {
 	pDM_Odm->RFCalibrateInfo.bTXPowerTracking = true;
 	pDM_Odm->RFCalibrateInfo.TXPowercount = 0;
diff --git a/drivers/staging/rtl8188eu/include/odm_precomp.h b/drivers/staging/rtl8188eu/include/odm_precomp.h
index df096c37f5eb..b4b7bce80694 100644
--- a/drivers/staging/rtl8188eu/include/odm_precomp.h
+++ b/drivers/staging/rtl8188eu/include/odm_precomp.h
@@ -59,7 +59,6 @@ void odm_RefreshRateAdaptiveMaskCE(struct odm_dm_struct *pDM_Odm);
 void odm_RefreshRateAdaptiveMaskAPADSL(struct odm_dm_struct *pDM_Odm);
 void odm_DynamicTxPowerNIC(struct odm_dm_struct *pDM_Odm);
 void odm_RSSIMonitorCheckCE(struct odm_dm_struct *pDM_Odm);
-void odm_TXPowerTrackingThermalMeterInit(struct odm_dm_struct *pDM_Odm);
 void odm_EdcaTurboCheckCE(struct odm_dm_struct *pDM_Odm);
 void odm_TXPowerTrackingCheckCE(struct odm_dm_struct *pDM_Odm);
 void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
