Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D94E5B66C
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B676886645;
	Mon,  1 Jul 2019 08:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I-l2JW-+2uv6; Mon,  1 Jul 2019 08:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F0DB864F6;
	Mon,  1 Jul 2019 08:11:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCF421BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA9ED204C3
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StknjobSIvHa for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id F1B1320403
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:29 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id d126so6022478pfd.2
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BN07URVN8wb0ZSKHoDqgUHJOTxOwlmwSsuLAvbKauoc=;
 b=enRFqK4NjDSvxmzOI5KmouWeEL2yFENY9E8j6ZuOz7z4LLt69P9s9HRwjxGJjyCRRM
 q005mkqBJ/F6ibSzb1YpGesiK7EKCIzd8WepFZyrzVyjlPfbkcMz9dyyZ//QhnIvytDx
 v8YZGVvqs4jGTBztS01kaP8RupEPXDFojDSb+4F7ZcvayLUH4dj4j9cLthUNPPGhrzsS
 T+bnamx9MzRyo3n6cOSWwXRyraRCobjBIk3kjAo79kuKNnUphFe7P3pjdQw1MsCc0OH1
 a3jwm1Ztm6fwI+jIcTrmUny3NPqyWRjtRXvwOMXX7wjgN4XmofYgLuYwa3jpCsmLUnEM
 IgxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BN07URVN8wb0ZSKHoDqgUHJOTxOwlmwSsuLAvbKauoc=;
 b=sPRdCm2EjHOGyI0WcM2ET6pH90FEZniYyq39vS/MVqWNwyM9pGWvumzEJq/KsSpDdK
 uzZoS+C3Q932Qbs2WmWMGlNkssNAXF92BNggYR2P/0kC9L0oW4MibjsCtFY7ZS4MeAkr
 12rhlsyVlHZquuamj6ZhzljUsEbhk53FT3Ib5IrlSgoIg5kHYX+cIINmaLYj4bYN8wBy
 sOIUj+IXc5jhugBbBGLV6yXdfES2yIHWTyT16QmzzqYvRvCDGPZyJTvO9oJgx7uGmHzL
 /tue9zQqod1NdkQOP57amAMKUuZqOYqk1ajDC5BrILVMt5EThdKKkcFi2yuWQz6vpu+u
 KwIw==
X-Gm-Message-State: APjAAAXLsc13ElfJNyurwlCD1cdlYT3ZjB1jllPmc3LP+LFwi7KhwYvK
 H8+jDWTl6vmwwB69zfQ6Hsjjimmd
X-Google-Smtp-Source: APXvYqwowjh2rDVkWbMIJ36m6BmeuPHGhtQtQ3N92GJ6C2Yffn489K91xpwMvmFU4cOdsoDpJkD3PQ==
X-Received: by 2002:a63:480a:: with SMTP id v10mr23145449pga.60.1561962209644; 
 Sun, 30 Jun 2019 23:23:29 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:29 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 07/10] staging: rtl8723bs: Remove
 rtw_btcoex_SpecialPacketNotify()
Date: Mon,  1 Jul 2019 11:53:01 +0530
Message-Id: <20190701062304.2440-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701062304.2440-1-nishkadg.linux@gmail.com>
References: <20190701062304.2440-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_SpecialPacketNotify as all it does is call
hal_btcoex_SpecialPacketNotify.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_cmd.c       | 3 ++-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index e1b265cb269c..e94d48927373 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -29,11 +29,6 @@ void rtw_btcoex_MediaStatusNotify(struct adapter *padapter, u8 mediaStatus)
 	hal_btcoex_MediaStatusNotify(padapter, mediaStatus);
 }
 
-void rtw_btcoex_SpecialPacketNotify(struct adapter *padapter, u8 pktType)
-{
-	hal_btcoex_SpecialPacketNotify(padapter, pktType);
-}
-
 void rtw_btcoex_BtInfoNotify(struct adapter *padapter, u8 length, u8 *tmpBuf)
 {
 	hal_btcoex_BtInfoNotify(padapter, length, tmpBuf);
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 55a481f9d441..47d31a3b2e84 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -8,6 +8,7 @@
 
 #include <drv_types.h>
 #include <rtw_debug.h>
+#include <hal_btcoex.h>
 #include <linux/jiffies.h>
 
 static struct _cmd_callback rtw_cmd_callback[] = {
@@ -1491,7 +1492,7 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
 	case LPS_CTRL_SPECIAL_PACKET:
 		/* DBG_871X("LPS_CTRL_SPECIAL_PACKET\n"); */
 		pwrpriv->DelayLPSLastTimeStamp = jiffies;
-		rtw_btcoex_SpecialPacketNotify(padapter, PACKET_DHCP);
+		hal_btcoex_SpecialPacketNotify(padapter, PACKET_DHCP);
 		LPS_Leave(padapter, "LPS_CTRL_SPECIAL_PACKET");
 		break;
 	case LPS_CTRL_LEAVE:
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index c75b08ab713c..7c5c71fa5c9c 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -18,7 +18,6 @@
 void rtw_btcoex_ScanNotify(struct adapter *, u8 type);
 void rtw_btcoex_ConnectNotify(struct adapter *, u8 action);
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
-void rtw_btcoex_SpecialPacketNotify(struct adapter *, u8 pktType);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_SuspendNotify(struct adapter *, u8 state);
 void rtw_btcoex_HaltNotify(struct adapter *);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
