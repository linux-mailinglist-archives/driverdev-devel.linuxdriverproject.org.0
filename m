Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 872E41905E2
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 07:46:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2D3F23449;
	Tue, 24 Mar 2020 06:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8hoLO4UMW9-y; Tue, 24 Mar 2020 06:46:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 219212271F;
	Tue, 24 Mar 2020 06:46:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E080C1BF35E
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 06:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D928D868BC
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 06:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YutbW367eZHj for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 06:46:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB3C485F60
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 06:46:15 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id l22so6692710oii.12
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 23:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dxldRsVgM50y/CNdhaywWvfHOux55cFEhCcDUOIPfIc=;
 b=tUBTb3+eObvRl1e/GyketYIRgCE1+FzmKzggzqiKcr26yjwZz9zLn2jScZ8Z+KFMzC
 DBVivRgcnTY0kWmXvqlz2FC0HZS2sJwiq5sp8yZ4S/C3T1KDE/1zTIJxZjzVqbbX/mH5
 5NZcYlf+iRhdxU/BuW66MIp8leVkBwXYSIHFxVbXnlDBSR4qcQUOQBKP+0hmxtlcjcGx
 1ur6/7rP1TKySS8VZ3OUKmPYHAmNjYMgNrJtCFSEPafe36X3JBGAd8t4KxPIwjPs4eU2
 OQg+vfvrbRt/jdjYdCQy/QJ1hs4AhgkRv0p25in+SsyEoAgV0dfZKzOIhDsRWLxmCNpl
 L60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dxldRsVgM50y/CNdhaywWvfHOux55cFEhCcDUOIPfIc=;
 b=io2FUlIw3gY+2pOA1xDlGcqaPz10hV5Cep6ZO2BQvsXP5HuKOBf0BYWmPX+9x/quBr
 mHGGsD6ZYdO5rOBWpbDiPMEuGjA5wdy+0daXmzm13lLyBrm1OueeyMGhGNQ6VGMSXAz3
 x3Cnm4fff+kNyfuGRRsrfVyOLzNFvU+6Oo5lDPiPmjrTqMmPdmvZ3fJg5UEsKmaPqgpk
 tliONYFNCsqK827r3m16bOBzSmwJW80CcMLSpQl/xWksELo1RA7l1kcIC3zuKOh3/WsQ
 WUsNfTuxKqyeVRCUkKx18IKh1NsJH3n76p6cTRiJcs47ZzrMlGX32XCibNhUSqCGsQby
 6FKw==
X-Gm-Message-State: ANhLgQ1AD0188QH26PVYp7fmygCV2TwS3juT3v7Q/+mYw8XV38hLBkif
 l7x8NLbC0eaNqMOtGAiNiYU=
X-Google-Smtp-Source: ADFU+vvcGS2wRG+9sQbBJ2cv3tSdoHfMLnhAMCIfg0rpuTvYyCCSier8i2eElVAQqcd8mo6C9uUFRA==
X-Received: by 2002:aca:d503:: with SMTP id m3mr2217585oig.165.1585032374928; 
 Mon, 23 Mar 2020 23:46:14 -0700 (PDT)
Received: from localhost.localdomain ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id x1sm2910134ota.7.2020.03.23.23.46.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 23:46:14 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: vt6656: change unused int return value to void
Date: Mon, 23 Mar 2020 23:45:45 -0700
Message-Id: <20200324064545.1832227-3-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324064545.1832227-1-jbwyatt4@gmail.com>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change unused int function return value to void from previous patch.

Update function documentation to remove mention of return value.

Remove if statement check of the only usage of function in the
kernel. Replace with calling the function.

Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/vt6656/card.c     | 7 ++-----
 drivers/staging/vt6656/card.h     | 2 +-
 drivers/staging/vt6656/main_usb.c | 4 +---
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 05b57a2489a0..4be7fca32796 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -715,11 +715,8 @@ int vnt_radio_power_off(struct vnt_private *priv)
  *      priv         - The adapter to be turned on
  *  Out:
  *      none
- *
- * Return Value: 0
- *
  */
-int vnt_radio_power_on(struct vnt_private *priv)
+void vnt_radio_power_on(struct vnt_private *priv)
 {
 	vnt_exit_deep_sleep(priv);
 
@@ -739,7 +736,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return 0;
+	return;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
index 75cd340c0cce..fcab6b086e71 100644
--- a/drivers/staging/vt6656/card.h
+++ b/drivers/staging/vt6656/card.h
@@ -40,7 +40,7 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
 u64 vnt_get_next_tbtt(u64 tsf, u16 beacon_interval);
 u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2);
 int vnt_radio_power_off(struct vnt_private *priv);
-int vnt_radio_power_on(struct vnt_private *priv);
+void vnt_radio_power_on(struct vnt_private *priv);
 u8 vnt_get_pkt_type(struct vnt_private *priv);
 void vnt_set_bss_mode(struct vnt_private *priv);
 
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 8e7269c87ea9..8214427f5ee3 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -370,9 +370,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	if (ret)
 		goto end;
 
-	ret = vnt_radio_power_on(priv);
-	if (ret)
-		goto end;
+	vnt_radio_power_on(priv);
 
 	dev_dbg(&priv->usb->dev, "<----INIbInitAdapter Exit\n");
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
