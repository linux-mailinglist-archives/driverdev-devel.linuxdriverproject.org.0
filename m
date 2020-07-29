Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3E123254E
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 21:22:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E75A585118;
	Wed, 29 Jul 2020 19:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWyKiFrjG8fq; Wed, 29 Jul 2020 19:22:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABD4B85025;
	Wed, 29 Jul 2020 19:22:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 500191BF328
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 19:22:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2992D24804
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 19:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8sVIF7tcWS9i for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 19:22:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by silver.osuosl.org (Postfix) with ESMTPS id 130D220497
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 19:22:03 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id mt12so2402789pjb.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 12:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2grRz9PCgk2ZeVIhCfAMiKPxOtnJvOaxKg6ZGO8mUA=;
 b=dIX6XtBN+kUmQxdsfW7VBR+hCZQ5Fd9HKvN3ZdpR3J3i1X3bbfXMPofN8G0gh+h8Ee
 tm2YRFo0ttxD6LqFuxHrFCWlDvrHw0sZ+0ykWXAO/+Qbgc/PxP47xZiU3w+//Yihb+0R
 +T2rton5eG3+3k3+hjd/JIodLrXJfa4TDmBQn22vyLL+b/vezZXOj4vrSLTglbSy0ZQu
 Gevz4Y/sV/fEEBTfsSD9E6C31xHejzWHN+1Js/xH4FYwXgdrQ5bHid2CcVvWu6NKMmGi
 dluC+nfneIHvB3WKOMCDfW3tPYgg83AjLMCaE/B8cKDTPnHgYRuU7hcD+6O3dhWeSGdp
 56EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2grRz9PCgk2ZeVIhCfAMiKPxOtnJvOaxKg6ZGO8mUA=;
 b=kHMRn3xK3zyZWUSQm/4jOkrh0sxQhxzpyP1zhQbv0y5T+veGEyhkdZqhJef+FcRN6x
 RDDOWW/u+bYn6UvTrNIKez13yaDVu1Ym8nReqL+roM6SZ0dKcRdY0aYXaaGzMKVOkxpc
 FqMulk+b44lC1w5KQ0vsgRuA9vmOFwqzULLXHy97sRld/K3r8vtg5g8XLuOMF4Ck5CRH
 sef9zkIDvlzb+ePCX8C38HPHN3VoKjcVOxXqKzaquYVbNzx8gI1W1r4yrHzyxrpU8wz5
 W5LG+aJf/3gjrE6N/5fClD/eWi/RJMW0PJ62z1khpNDCr9HmYdTs+jAVbInA5KaTkJ+H
 ydQw==
X-Gm-Message-State: AOAM531xFENh7XBTwgqmHcH7iwvoVSdgSSaKoc15X/lzYx0nZpe7AzVf
 mWFVuHcrPx+le4gHmD7kQ+wP42QdAmNqc3HP
X-Google-Smtp-Source: ABdhPJx9d00VTRIC589bDdRp4nk/Do8tibFvjOXpjwsfs9SJUvWMyFY5Bjf5e4Q9DNDr7bT7Ypidjw==
X-Received: by 2002:a17:902:6b08:: with SMTP id
 o8mr29014174plk.104.1596050522549; 
 Wed, 29 Jul 2020 12:22:02 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id hg7sm599431pjb.24.2020.07.29.12.21.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 12:22:01 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 1/3] staging: rtl8723bs: Fix coding style errors
Date: Thu, 30 Jul 2020 00:51:34 +0530
Message-Id: <20200729192136.23828-2-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200729192136.23828-1-aditya.jainadityajain.jain@gmail.com>
References: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
 <20200729192136.23828-1-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, joe@perches.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixing ERROR: "foo *	bar" should be "foo *bar" in hal_phy_cfg.h
as reported by checkpatch.pl

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 .../staging/rtl8723bs/include/hal_phy_cfg.h    | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 419ddb0733aa..7e48abc4c760 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -42,7 +42,7 @@ u32 	Data
 
 u32
 PHY_QueryRFReg_8723B(
-struct adapter *		Adapter,
+struct adapter *Adapter,
 u8 		eRFPath,
 u32 			RegAddr,
 u32 			BitMask
@@ -50,7 +50,7 @@ u32 			BitMask
 
 void
 PHY_SetRFReg_8723B(
-struct adapter *		Adapter,
+struct adapter *Adapter,
 u8 		eRFPath,
 u32 			RegAddr,
 u32 			BitMask,
@@ -66,7 +66,7 @@ s32 PHY_MACConfig8723B(struct adapter *padapter);
 
 void
 PHY_SetTxPowerIndex(
-struct adapter *		Adapter,
+struct adapter *Adapter,
 u32 				PowerIndex,
 u8 			RFPath,
 u8 			Rate
@@ -74,7 +74,7 @@ u8 			Rate
 
 u8
 PHY_GetTxPowerIndex(
-struct adapter *		padapter,
+struct adapter *padapter,
 u8 			RFPath,
 u8 			Rate,
 enum CHANNEL_WIDTH		BandWidth,
@@ -83,19 +83,19 @@ u8 			Channel
 
 void
 PHY_GetTxPowerLevel8723B(
-struct adapter *	Adapter,
-	s32*			powerlevel
+struct adapter *Adapter,
+	s32 *powerlevel
 	);
 
 void
 PHY_SetTxPowerLevel8723B(
-struct adapter *	Adapter,
+struct adapter *Adapter,
 u8 	channel
 	);
 
 void
 PHY_SetBWMode8723B(
-struct adapter *			Adapter,
+struct adapter *Adapter,
 enum CHANNEL_WIDTH			Bandwidth,	/*  20M or 40M */
 unsigned char 			Offset		/*  Upper, Lower, or Don't care */
 );
@@ -108,7 +108,7 @@ u8 channel
 
 void
 PHY_SetSwChnlBWMode8723B(
-struct adapter *		Adapter,
+struct adapter *Adapter,
 u8 			channel,
 enum CHANNEL_WIDTH		Bandwidth,
 u8 			Offset40,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
