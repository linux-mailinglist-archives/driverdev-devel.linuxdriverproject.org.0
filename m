Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DA1562A5
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DABC587B81;
	Wed, 26 Jun 2019 06:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1DlZEBNdvjV1; Wed, 26 Jun 2019 06:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 966E187B4F;
	Wed, 26 Jun 2019 06:51:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C550D1BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BEBBC864A0
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:51:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X1J78SpjkBHM for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:51:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F14086456
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:51:16 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id c14so890538plo.0
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YGsV0Zepuwv6pI5GEu390PpsTWBqnypDiW4CvN/ThVg=;
 b=uCzhkLWd9tNKiT/oXVEQZ1jCIBXL6wSklri7yxrLlq0pznL7Hd1N3at8Dt/Wn33bKw
 1IzMb3ywRdLzaE9cF+Gr3zniMrc27PlDNOCmenI9wToD4+s/GLTcea0tO3rO4LtJkTu9
 O90MW6F3+jWwvWp9H16ma9/YQiLzFugpKzGs/OjVvYUazka0jjOsz7zb65KR8jlnKc7C
 N4/6pGYiXTfOMwmm0Yf3E2tkGtgEetIc4ZEgRmhRn4P4sERrZD7btU27CrRWLAH23kdv
 cSrerSYVe6v3eS9xYjbGRpan8dzPAg5wRPmJlbMeQmntEpHV0ti0ttIbVRIL87x0NpeV
 Kg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YGsV0Zepuwv6pI5GEu390PpsTWBqnypDiW4CvN/ThVg=;
 b=ac9S2Te341GEdw8k00Z4zoUjRkbF5RZeHipg6hyur/Kr+wjLSG0K9ax70aVjXSSt5B
 kapghwjHvWQgHJkG6Cm2+4WSWOj3DanTCqkzE6mI2sRmj8P8JlvoI3XmniUl3gtOXKk7
 NNdg4oFbTyv7QgE9JUr8IW+yfEet06kHEk3Nt61vhIbjWlrvC818zSpAGJrVt4b3dCdN
 6WXOn5Dz9ifwVLw5J71huSKi+YiWlvzneO7QU7saC9JajtotmglGRYq7jcjk21ByS6Iv
 horXxTSU0eieAWNYErHs6K6JjoAKLoJee4H+G/zDJLHXvFgQgLpZ0d+E4xA5OZSMneMn
 RE8Q==
X-Gm-Message-State: APjAAAWwvlSb2a9mN8AZzn5SKChtrXoLv/vzLEwl7HBMvkNz2q84KZbL
 Czss1fRWZTGUDUyMeXpoIOw=
X-Google-Smtp-Source: APXvYqy/T3+Nhw128Ys3v43o4sInvQXAxodtNFYIjyrQed8x99n9D7mfq5oO66qbOVYibniYyT5Qeg==
X-Received: by 2002:a17:902:3341:: with SMTP id
 a59mr3487549plc.186.1561531874886; 
 Tue, 25 Jun 2019 23:51:14 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id y23sm21734625pfo.106.2019.06.25.23.51.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:51:14 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net
Subject: [PATCH 3/4] staging: rtl8188eu: hal: Replace function
 ODM_TXPowerTrackingCheck()
Date: Wed, 26 Jun 2019 12:20:56 +0530
Message-Id: <20190626065057.3252-3-nishkadg.linux@gmail.com>
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

Remove function ODM_TXPowerTrackingCheck as all it does is call
odm_TXPowerTrackingCheckCE.
Rename odm_TXPowerTrackingCheckCE to ODM_TXPowerTrackingCheck for
compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm.c             | 5 -----
 drivers/staging/rtl8188eu/include/odm_precomp.h | 1 -
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index 3fb2cc24436e..4e2f6cb55a75 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -957,11 +957,6 @@ void ODM_TXPowerTrackingCheck(struct odm_dm_struct *pDM_Odm)
 	/*  2011/09/29 MH In HW integration first stage, we provide 4 different handle to operate */
 	/*  at the same time. In the stage2/3, we need to prive universal interface and merge all */
 	/*  HW dynamic mechanism. */
-	odm_TXPowerTrackingCheckCE(pDM_Odm);
-}
-
-void odm_TXPowerTrackingCheckCE(struct odm_dm_struct *pDM_Odm)
-{
 	struct adapter *Adapter = pDM_Odm->Adapter;
 
 	if (!(pDM_Odm->SupportAbility & ODM_RF_TX_PWR_TRACK))
diff --git a/drivers/staging/rtl8188eu/include/odm_precomp.h b/drivers/staging/rtl8188eu/include/odm_precomp.h
index b4b7bce80694..5254d875f96b 100644
--- a/drivers/staging/rtl8188eu/include/odm_precomp.h
+++ b/drivers/staging/rtl8188eu/include/odm_precomp.h
@@ -60,7 +60,6 @@ void odm_RefreshRateAdaptiveMaskAPADSL(struct odm_dm_struct *pDM_Odm);
 void odm_DynamicTxPowerNIC(struct odm_dm_struct *pDM_Odm);
 void odm_RSSIMonitorCheckCE(struct odm_dm_struct *pDM_Odm);
 void odm_EdcaTurboCheckCE(struct odm_dm_struct *pDM_Odm);
-void odm_TXPowerTrackingCheckCE(struct odm_dm_struct *pDM_Odm);
 void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
 void odm_InitHybridAntDiv(struct odm_dm_struct *pDM_Odm);
 void odm_HwAntDiv(struct odm_dm_struct *pDM_Odm);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
