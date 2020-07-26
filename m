Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D3022DFAC
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 16:21:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A5D3D2155E;
	Sun, 26 Jul 2020 14:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9WUj9h1EtGM3; Sun, 26 Jul 2020 14:21:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5EF582107F;
	Sun, 26 Jul 2020 14:21:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BFAF41BF46D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BC511877EA
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9W+0+TgQmxcr for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 14:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CEA5877B4
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 14:21:12 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id mt12so368299pjb.4
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 07:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UgM1BsVmHsaMzzh6ewj32thGL7e0nNE7YBRNdbvAIEA=;
 b=gsukc+9ErkFCyi89t3AC6ZJcFp8qIEFMwV6A/bwEHK7iz7k7a29c86cWKFqkVjrW1b
 tusATpd5NnUhsLj0LZpN79OoLJlCuN213k/kobruj/UbhGmkDEpV0l5OUdNpZcV/TtFQ
 H+9G1GHlv9aK3DqN9DnKNsGoRW1lgF6F0yQCY6ZVfdhZnJjm4vKuB9YYwhbmfsG0Vqha
 FVHd469K1eSlD8mNX5kLGlavDEgtFHEXdkoDgNLuJCkcoGKF8HnLXSdOpSYPxbFPOJkj
 kHtzq/KNNQvclywfxZVqngDdyptOTx0AXGXHfnZjDDcHYXQuauPXRy9aX/ZFYkToW2pb
 Y8zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UgM1BsVmHsaMzzh6ewj32thGL7e0nNE7YBRNdbvAIEA=;
 b=Fd1nzCZ8PRt5XxtfC8Rgt9rWyakR8uOz4m8ySP2yLcHIIPGMcNPDyrg7FJGSNY1MFv
 135YAvemR1ETgtEpBFM2fliatBipkxiDHL/wHPUoR8SIVAmAHYXuED2B1KutA6ego3KL
 ZTTUMdM9IaqDKIT0Cs8+mVq47xokGsMet8X3Nlxsi/OS2zTM3gzzOcfZr3UEdYbrsTvc
 TBuwQLPyUaXggjXC8k1/3KtI0ZtO0w7IgQAZCN2PYZMDnrJNvlaDDbJgnQHROIXwv+VO
 6gYhpjubhtgI8P+5wH+Oqsbikc3v7qQj3+HEy0kas99bJcXwmz0ASg2R9jBDIAkMgbs0
 ar7g==
X-Gm-Message-State: AOAM530wWUB4XgRUstmUHp9WR2l1fbb4iDEpxEU1rxx+6pagjiTOeHsx
 PndSEihrrFP4RnhZZJOFvIs=
X-Google-Smtp-Source: ABdhPJyTUPuiH/cTXDX2JNf0mNI4SIcdaCQtS70FQd6dN8+Gd87+hOMTM4tVvDvRmY+FAzjnucndaQ==
X-Received: by 2002:a17:90a:3044:: with SMTP id
 q4mr13266242pjl.81.1595773271686; 
 Sun, 26 Jul 2020 07:21:11 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id
 a13sm12493235pfn.171.2020.07.26.07.21.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 07:21:11 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 3/4] staging: rtl8723bs: include: Further clean up function
 declarations
Date: Sun, 26 Jul 2020 19:50:12 +0530
Message-Id: <20200726142013.2891-3-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
References: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
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

Cleaning up messy multiline function declarations in hal_phy_cfg.h

This patch is a continuation of patch "Clean up function declarations"

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 .../staging/rtl8723bs/include/hal_phy_cfg.h   | 56 ++++++-------------
 1 file changed, 16 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 3cec06e9f359..2b059c9c7851 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -46,49 +46,25 @@ s32 PHY_MACConfig8723B(struct adapter *padapter);
 void PHY_SetTxPowerIndex(struct adapter *Adapter, u32 PowerIndex,
 			 u8 RFPath, u8 Rate);
 
-u8
-PHY_GetTxPowerIndex(
-struct adapter *padapter,
-u8 			RFPath,
-u8 			Rate,
-enum CHANNEL_WIDTH		BandWidth,
-u8 			Channel
-	);
-
-void
-PHY_GetTxPowerLevel8723B(
-struct adapter *Adapter,
-	s32 *powerlevel
-	);
-
-void
-PHY_SetTxPowerLevel8723B(
-struct adapter *Adapter,
-u8 	channel
-	);
-
-void
-PHY_SetBWMode8723B(
-struct adapter *Adapter,
-enum CHANNEL_WIDTH			Bandwidth,	/*  20M or 40M */
-unsigned char 			Offset		/*  Upper, Lower, or Don't care */
-);
+u8 PHY_GetTxPowerIndex(struct adapter *padapter, u8 RFPath, u8 Rate,
+			enum CHANNEL_WIDTH BandWidth, u8 Channel);
+
+void PHY_GetTxPowerLevel8723B(struct adapter *Adapter, s32 *powerlevel);
+
+void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 channel);
 
-void
-PHY_SwChnl8723B(/*  Call after initialization */
-struct adapter *Adapter,
-u8 channel
-	);
-
-void
-PHY_SetSwChnlBWMode8723B(
-struct adapter *Adapter,
-u8 			channel,
-enum CHANNEL_WIDTH		Bandwidth,
-u8 			Offset40,
-u8 			Offset80
+void PHY_SetBWMode8723B(struct adapter *Adapter,
+			enum CHANNEL_WIDTH Bandwidth,	/*  20M or 40M */
+			unsigned char Offset	/*  Upper, Lower, or Don't care */
 );
 
+/*  Call after initialization */
+void PHY_SwChnl8723B(struct adapter *Adapter, u8 channel);
+
+void PHY_SetSwChnlBWMode8723B(struct adapter *Adapter, u8 channel,
+				enum CHANNEL_WIDTH Bandwidth,
+				u8 Offset40, u8 Offset80);
+
 /*--------------------------Exported Function prototype End---------------------*/
 
 #endif
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
