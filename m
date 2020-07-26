Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0557522DFA9
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 16:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E51C884E9;
	Sun, 26 Jul 2020 14:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Bgfc7nea240; Sun, 26 Jul 2020 14:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D96478847C;
	Sun, 26 Jul 2020 14:20:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 109DF1BF46D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 07F9521135
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjR8ndH7pM2l for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 14:20:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by silver.osuosl.org (Postfix) with ESMTPS id 3DDB52107F
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 14:20:55 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id f9so1741454pju.4
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 07:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2grRz9PCgk2ZeVIhCfAMiKPxOtnJvOaxKg6ZGO8mUA=;
 b=hcfrRZfxRlpKHNckV4E8H1IKWMM0vPYAHOtfhkmGQjX0JJ1QCW7j5SYe7y7S5pA/zf
 HH3yopq6H5Q+6RNUvvXsuyNdk9bmFbCbgkIkbGMA618ccXHa8ICHjWtKk5H11tTNRvJ3
 78IdZ/TKuBdZ/SWelUV2/hF83FekXYXm9/o/gV0XksI6YRPRR+P4ovy3na0j7AlOrjUM
 hnCqZQNRnI630pOqVoKvOgAKhncZQe/mLsBI66NbZ43JNaiz/4pq+DutgSQJhPP6C892
 uedOKP/LbBao53k8snid2j938wRM2Hxjv5enLAaDdvak08tTPz//QTOTRF3aQjPJvjpA
 QgxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2grRz9PCgk2ZeVIhCfAMiKPxOtnJvOaxKg6ZGO8mUA=;
 b=rJ5I1EAczmOtrewsfgXL+aojJmGBJ5Qt90VzkTvgd1CNh+ET6UzB9uC9gJCof4n8Lk
 9btfUdXU8D7rydMwLXb4GiozqNG42AvfCl4/XOK6OiRjl5VuHaUD7AZrZof1rotyhs8j
 7d8PmMTCV7e/ahGrAi1Ypvx5FhjNIQGh9AWA+5zFNrPacWZnqDKpulrSZvriq9CgLwfD
 JGUem9yHbQYhWAe+ERYimOPdabfw35ep+c5/1SPg82N1HqhvZVkil4rZYv6viuU70WhZ
 G5nzvp1eYWClggjG8rtyHrV8SbUwoLF7Z6CbCBASsDf+0qbsnFBBCzo7OjG5iSEfGcLC
 +jhA==
X-Gm-Message-State: AOAM533URQ5KxSYDJUhwD9R4BPW5qY0SF1tIgE1c+/RunA7yBScD/k+w
 sj9FgXIISZ4fgxy8afMEDEk=
X-Google-Smtp-Source: ABdhPJygNGTI0zcgc9LqGwKZYLNdXl6au3JVqqLPnPlkTPZpjgBPnWtn6+c7xroCfRWJ2eA141lhug==
X-Received: by 2002:a17:90a:d306:: with SMTP id
 p6mr13467646pju.25.1595773254709; 
 Sun, 26 Jul 2020 07:20:54 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id
 a13sm12493235pfn.171.2020.07.26.07.20.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 07:20:54 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 1/4] staging: rtl8723bs: include: Fix coding style errors
Date: Sun, 26 Jul 2020 19:50:10 +0530
Message-Id: <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
References: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
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
