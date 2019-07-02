Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B8F5C9BB
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA27B20778;
	Tue,  2 Jul 2019 07:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NtGm-T7u4tOH; Tue,  2 Jul 2019 07:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 16A8420794;
	Tue,  2 Jul 2019 07:02:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A5441BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5595085DE1
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y5D1v_QPxyUq for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:01:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0AF8D85E7C
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:01:58 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id a93so8650042pla.7
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0A25gR2RF0Nvd4DHMOOqp58yZXRJTiCI+GYhCsqfqfw=;
 b=VP5aGDHHdBvjhvNWvkvHMlyiisu5gnLBloosWSxdyMDPGeAHc3Rjj9lI8pF13xu7cI
 YfgvDOvaV3Hev+Lap97de6bID0YIrXwUwi6uRCmfx0HJlIFPgyKDfnTNUKQ1kFNrejCX
 S6qF47DNSvEhPecc9Rffm4JvzuxTxl7n25eKRLhq2K2YwIAq52+/zs+Onxujok9YXxKa
 P0y9Zvgi8r3zHcqDERD+AS336Wn7pYK29DCN8+zHzaBcCTIADoQbyg09Qd4AlIeo/Ekk
 RrpNm4fE0cnhz393tcyaRpPvslTZu3V3ukAEV1yunjIJJqrO2H4f6VDoHYsnkRI3GAFo
 vanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0A25gR2RF0Nvd4DHMOOqp58yZXRJTiCI+GYhCsqfqfw=;
 b=bAZSZUzYB29OQsOx1wNK8hu+XdID+vLZk4C+hc8jh+ItAnWHpD5Ga6ivdnY6NK5PXO
 vFqS+EV/4KRmsIGlGer+RanzkQUS9zP3IXreAUf6pEFjYBmYrD+is/ZqPSTeCnrqevcy
 L3Pxkd0EFAlNFB7r6GM1CygBGRguiAhWx+4frsfzMIvK4X4ZyUnwJ9GksoG15YAsklcY
 wlc6RPb8sFnZJ3k+rIg5DiWImMK8ho7M/SNBgTDyg41yK2/PNpUk4wFRZAhuTmqploqQ
 nErxaGC3iBB91MgKtkvzm3LL7RQeGTd6lV2J3ogVObgPTpy+P/QIuOdhXkHW6hddpGH5
 wfwA==
X-Gm-Message-State: APjAAAUXdBfxZmHYdVNj3U/3kuz3YF3yAb1y7zJea4FHHcXKPkB9PeFj
 CLxwKsENsUUE4sA5mMqx3Bo=
X-Google-Smtp-Source: APXvYqw5cexSl7gWzKttvcqPitvnrCGI+fs9Rmhqt/ZXhg0rMJI5OdRFbw2z/I9aF9b9B/UyL8ivSA==
X-Received: by 2002:a17:902:44a4:: with SMTP id
 l33mr33407930pld.174.1562050917704; 
 Tue, 02 Jul 2019 00:01:57 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.01.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:01:57 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 6/9] staging: rtl8723bs: Remove function rtw_btcoex_SetDBG()
Date: Tue,  2 Jul 2019 12:31:29 +0530
Message-Id: <20190702070132.6997-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190702070132.6997-1-nishkadg.linux@gmail.com>
References: <20190702070132.6997-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_SetDBG as all it does is call
hal_btcoex_setDBG.
Modify call sites accordingly.
Include the header file for hal_btcoex in the file that now calls
hal_btcoex_SetDBG instead of rtw_btcoex_SetDBG.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_debug.c     | 3 ++-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index e00336ab2ee6..f0d61033770e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -43,11 +43,6 @@ void rtw_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsiz
 	hal_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
 }
 
-void rtw_btcoex_SetDBG(struct adapter *padapter, u32 *pDbgModule)
-{
-	hal_btcoex_SetDBG(padapter, pDbgModule);
-}
-
 u32 rtw_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 {
 	return hal_btcoex_GetDBG(padapter, pStrBuf, bufSize);
diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
index 9f8446ccf771..17737fb7fd88 100644
--- a/drivers/staging/rtl8723bs/core/rtw_debug.c
+++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
@@ -8,6 +8,7 @@
 
 #include <drv_types.h>
 #include <rtw_debug.h>
+#include <hal_btcoex.h>
 
 u32 GlobalDebugLevel = _drv_err_;
 
@@ -1410,7 +1411,7 @@ ssize_t proc_set_btcoex_dbg(struct file *file, const char __user *buffer, size_t
 
 	DBG_871X(FUNC_ADPT_FMT ": input 0x%08X 0x%08X\n",
 		FUNC_ADPT_ARG(padapter), module[0], module[1]);
-	rtw_btcoex_SetDBG(padapter, module);
+	hal_btcoex_SetDBG(padapter, module);
 
 	return count;
 }
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 904dda178f94..10273ddb81a0 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -18,7 +18,6 @@
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_HaltNotify(struct adapter *);
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
-void rtw_btcoex_SetDBG(struct adapter *, u32 *pDbgModule);
 u32 rtw_btcoex_GetDBG(struct adapter *, u8 *pStrBuf, u32 bufSize);
 
 /*  ================================================== */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
