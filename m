Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF763D1733
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Jul 2021 21:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28D9140522;
	Wed, 21 Jul 2021 19:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7js-pc4X8Pag; Wed, 21 Jul 2021 19:46:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 873F340124;
	Wed, 21 Jul 2021 19:46:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83E501BF337
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 19:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73E1482C61
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 19:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hHyl3ismgW7e for <devel@linuxdriverproject.org>;
 Wed, 21 Jul 2021 19:46:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF5D4826F5
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 19:46:20 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 a17-20020a17090abe11b0290173ce472b8aso473961pjs.2
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 12:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L4wuqZSTo/D/iGhzmyA3OtJ8rC6n7v8LIy4VtdrvjYQ=;
 b=fkhb17BbDESA98NSuKsgwGYbUV0AyacE+2EI59uFtjYDzNb3xFlzWovEmAPcPK3pxS
 h+U0AYIMZ1D4oXOHN5gzV5L5VuPMXE/Ks5ElCSuFnqU4up/eLP1oFhr2zsU2nG2b/o5j
 U1LBVS0HDk0fr0AOjRK1mNS9IGZC8BP8p5U96IFOHpbhHSV2yO6kdsBtWgltZFOM/cpw
 cCOfrkDdV6Cig0UVe+aHUVCuV6JueRd+kmlwd2Bt8P9bYiRmKgfWgpJc274NKcM1DLQU
 mI4bA2sdKgSgfB/B2RCN9n5bemV7cRxpuXu5hdH9ch1aPCuxaE3q+QDC1fWV+hWoIz8d
 mhNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L4wuqZSTo/D/iGhzmyA3OtJ8rC6n7v8LIy4VtdrvjYQ=;
 b=AdSNn8gBDKobxs7f1sgaxdItbnLCrzFtX33x6ucISKdizvaeH8A6RtECFi8gJpubV8
 9ZToiaxiD09x7zRpL9+iOGKPQhW9RUsp9xOYDI7qmAA54hl7GNVEcxb/14DyfMt9ooqx
 BFMJCf1e74/tkaxSnmCB5wRnAtPLhdAV4PKzyL48xJwNaD7lwA7HLrICZ4amB6vzi89V
 +GjoDpwrYrOCuf5PsyHIk6wAwihcF6/lWUDVaWPqCqXuGgS9XnzHioB50NE5fwuPq7pC
 1R8fJdb8NpT0kzAJiZ/Dk1+Xzvn9jACfLVHTK1PGxKByef6z7E67U3vkQ+fU3r4aGdPm
 PuHg==
X-Gm-Message-State: AOAM530Zwh6L5megWoGhzyIwlnUZWOltlediOX/ywNkIZFWq8eptX7Ez
 zuEgTGNxgVdOG0mTxrRMcFg=
X-Google-Smtp-Source: ABdhPJwQplgo4oYRKsiNr07GnRMlmLVE+wq9mWASmvQIxDtAh+3XhlJRgaz0v8VWb/SsLcA1V7IvTg==
X-Received: by 2002:a63:1551:: with SMTP id 17mr27864353pgv.76.1626896780244; 
 Wed, 21 Jul 2021 12:46:20 -0700 (PDT)
Received: from localhost.localdomain ([2402:e280:2130:198:9b25:1cfb:9ff3:2a8f])
 by smtp.gmail.com with ESMTPSA id a15sm27630096pff.128.2021.07.21.12.46.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 12:46:19 -0700 (PDT)
From: Benjamin Philip <benjamin.philip495@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188eu: remove unnecessary blank lines in
 core/rtw_ap.c
Date: Thu, 22 Jul 2021 01:15:54 +0530
Message-Id: <20210721194554.203940-1-benjamin.philip495@gmail.com>
X-Mailer: git-send-email 2.31.1
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Benjamin Philip <benjamin.philip495@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes some checkpatch checks for blank lines before
and after braces in drivers/staging/rtl8188eu/core/rtw_ap.c

Signed-off-by: Benjamin Philip <benjamin.philip495@gmail.com>
---

This patch fixes some checkpatch.pl CHECKs for blank lines.

I have tested my changes by compiling them. I also used 
checkpatch.pl, which did not issue any warnings for my patch.

This is my first patch to the kernel. If I have erred in the patch sending
workflow in any way, I will be glad to resend it in the correct manner.

 drivers/staging/rtl8188eu/core/rtw_ap.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index b817aa8b9de4..a2aeb78733d5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -381,7 +381,6 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 		/* set ra_id, init_rate */
 		psta->raid = raid;
 		psta->init_rate = init_rate;
-
 	}
 }
 
@@ -453,7 +452,6 @@ static void update_bmc_sta(struct adapter *padapter)
 		spin_lock_bh(&psta->lock);
 		psta->state = _FW_LINKED;
 		spin_unlock_bh(&psta->lock);
-
 	}
 }
 
@@ -1140,7 +1138,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 {
-
 	if (!memcmp(WPS_OUI, oui, 4))
 		update_bcn_wps_ie(padapter);
 }
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
