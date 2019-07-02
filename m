Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8F45C9B8
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:02:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C190785E07;
	Tue,  2 Jul 2019 07:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MU7mZy7CVCNo; Tue,  2 Jul 2019 07:02:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DA1C85DC0;
	Tue,  2 Jul 2019 07:02:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B38F51BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ADA7086AFE
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUGK37cRoPEv for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE82586AEE
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:01:59 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id bh12so8622733plb.4
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5pJMa2Cl4PPtIT/hOD/v07al7ZYB5kLac6f3OHyC9mg=;
 b=Zthls3i+V6mVg4t/Dwhq3nAsRgXSIieUHVurLLkRU6BjVY6CtPGw7wFrWKL0ppz2h2
 fJwUjy8tSLEZsJHDaws7mWFerMNByiyIiath/BjDildll7nyXC0hXC3NFKWmJBvHThc5
 gDCOF4yjyE6vnFBS1qiqQ9+YowEDgUJQoEwtTfdDsOi7o32k2bhTh5Siwpdn6goDCz0E
 M6wD3naT6vJe8PDKlwTJ+V/Z516P3rm/jf7vYhA3AdHTrkjKLBjTPvVHtYPm/W/oh/Eu
 RtT4ndfsYeuxXbThXRpBnKeC213/QCzcGoF3DJZInT4ixp6mnfPsx7Nnd1JFlOa7wqhX
 Ik/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5pJMa2Cl4PPtIT/hOD/v07al7ZYB5kLac6f3OHyC9mg=;
 b=ted+QXLuq38d0TClUYccRsK9Bk0jPHcmy/bmtkvsup0VSR8aGKyXlZSdQoNbAijaDD
 iP9vZJJLxyNDrq/NgMf6lafV2IUCacMouCNDGrvoTIWg/BNhqBzKumGeE5PzmKOdM4Uj
 zeergAcdRd9f8r9gsjnnM29zU2q2gDygaangMUYAIHhHW4m7IYHX2zxB2sNR7G4Mun0Z
 whzH3bIEiAcT5pz8aFgUUmoHNvb8zXvnuhDDVth35qRJvBl3IVzjbeogrmn+SLeQLtTB
 rm4QRmZd9EK+Rot1lFZYDCUGVWurCEPodyvr8YKijTgZ3ObY8E7D960VNUHiHfgvAGhR
 9+LA==
X-Gm-Message-State: APjAAAVtuqYnaOqwigJojz6yp9pUSwzU8+0MdyxUVmFIsT9iSNxyFTTy
 uxUof8mUolgBriwJg9mYmy8=
X-Google-Smtp-Source: APXvYqyI36gFKr9espQPEHwCuMIm+VAdHQvVZgMfHp5nF+J1aJ2RaZGd9rVgZQc3jCKbZyM4cF6f8w==
X-Received: by 2002:a17:902:204:: with SMTP id 4mr244482plc.178.1562050919656; 
 Tue, 02 Jul 2019 00:01:59 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.01.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:01:59 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 7/9] staging: rtl8723bs: Remove function rtw_btcoex_GetDBG()
Date: Tue,  2 Jul 2019 12:31:30 +0530
Message-Id: <20190702070132.6997-7-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_GetDBG as all it does is call
hal_btcoex_GetDBG.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_debug.c     | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index f0d61033770e..de997c291f3a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -43,11 +43,6 @@ void rtw_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsiz
 	hal_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
 }
 
-u32 rtw_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
-{
-	return hal_btcoex_GetDBG(padapter, pStrBuf, bufSize);
-}
-
 /*  ================================================== */
 /*  Below Functions are called by BT-Coex */
 /*  ================================================== */
diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
index 17737fb7fd88..d46ea418d34e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_debug.c
+++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
@@ -1351,7 +1351,7 @@ int proc_get_btcoex_dbg(struct seq_file *m, void *v)
 	char buf[512] = {0};
 	padapter = (struct adapter *)rtw_netdev_priv(dev);
 
-	rtw_btcoex_GetDBG(padapter, buf, 512);
+	hal_btcoex_GetDBG(padapter, buf, 512);
 
 	DBG_871X_SEL(m, "%s", buf);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 10273ddb81a0..c2f2c1f35254 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -18,7 +18,6 @@
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_HaltNotify(struct adapter *);
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
-u32 rtw_btcoex_GetDBG(struct adapter *, u8 *pStrBuf, u32 bufSize);
 
 /*  ================================================== */
 /*  Below Functions are called by BT-Coex */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
