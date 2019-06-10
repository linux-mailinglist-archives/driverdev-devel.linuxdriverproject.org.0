Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CF73AFE2
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD0088507B;
	Mon, 10 Jun 2019 07:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8adr6v-EsYP; Mon, 10 Jun 2019 07:47:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 663FD85218;
	Mon, 10 Jun 2019 07:47:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 380D91BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3389585313
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBKUesotcJ7n for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6E7E8502B
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:30 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id l19so1977463pgh.9
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d/oneQ5DlC15Pj8AGmwAJ8QfqeY6w7PbALun/7Svg4w=;
 b=tii8NOjX6fBUoRaMzCNGpm9ubcublVBfSAToo1KrVmPkt7aDBodJuGw8a6xT32kE4t
 R7aHp1zUQVlDnR9sLHdTeIZZhuCu1Tb8AB6E8mqbOae5IAOyBY/TzYHoOo9kkf6iL0Wv
 WMKI+PdNAgsA7co0MF1ZrUbY9Q+FfxTabom8LmLHsQyayTJV1GmzK3me0MUGNdpFKrmA
 kUJOVNAflj10LxwCnC8Eve9pdblrijjEg7yiExq0SF+soXic0YV64+af4u+3x90KvQ6/
 m370MwjTAeXHp1Zt3D2o9c8rNpxszokWJkm4EKuzBrmIlbH96pVRRbfSAHSvxob4z9qH
 foZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d/oneQ5DlC15Pj8AGmwAJ8QfqeY6w7PbALun/7Svg4w=;
 b=bARt3Jv9PYPPEJuqf6jHIeVZjO/18WAkcy1QnjZtDrtumHyM9Y23ItH/req0i2ttz3
 VPjUxz0x/Oc8mNluD2K+ZgeqKBcSH1nnQjeFcxtm5usX7Vcvd/kVU5TTct3nHlO/najC
 U1rYvhMgtRD1ZUFBVEF2JPcxOczNzjxayXQkx+IQ6USZhFeri1imUQJtfB3Wgyo7XULi
 7cjWuWbEVah60VPjI0Y7Ko1/8y3gveuviwGwnShwGj6QTstmXe5N9Tbf2AxiOjKt5h1V
 wwsm7H8HtX22E7H4Bd89UfmyTbkaR0JqxnvOw6KFjUOnQZomzlGFxKnndH7JmvLSUxc1
 +26Q==
X-Gm-Message-State: APjAAAVFCPw/r+0hIqwETGYpd4fnaZgRb974gpVPna/NUrZDo9DjtnIW
 CiLWKwtGh4ilFgWibKtpELwda6po
X-Google-Smtp-Source: APXvYqxP4FhHic029eR2HP80by5VlGdAEr2JEtPSj5BNnZNfXwCdypnTxyC1P0j7MZaTcmUKb0HcTQ==
X-Received: by 2002:a62:160b:: with SMTP id 11mr72950443pfw.30.1560152850439; 
 Mon, 10 Jun 2019 00:47:30 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:30 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 05/10] staging: rtl8723bs: hal: hal_btcoex.c: Remove
 variables
Date: Mon, 10 Jun 2019 13:17:05 +0530
Message-Id: <20190610074710.15677-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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

Remove variables and use the values directly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Send as part of a patch series.

 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 6caddd7834a1..aebe8b8977ad 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -362,15 +362,9 @@ static u32 halbtcoutsrc_GetBtPatchVer(PBTC_COEXIST pBtCoexist)
 
 static s32 halbtcoutsrc_GetWifiRssi(struct adapter *padapter)
 {
-	struct hal_com_data *pHalData;
-	s32 UndecoratedSmoothedPWDB = 0;
-
-
-	pHalData = GET_HAL_DATA(padapter);
-
-	UndecoratedSmoothedPWDB = pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
+	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 
-	return UndecoratedSmoothedPWDB;
+	return pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
 }
 
 static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
