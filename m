Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333F45B7D7
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8C7687A14;
	Mon,  1 Jul 2019 09:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fyfHHeqizP9m; Mon,  1 Jul 2019 09:18:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 533EC87994;
	Mon,  1 Jul 2019 09:18:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA5831BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D53BD87985
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rSqKTHuUpRt8 for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30BBD87924
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:36 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id c85so6274835pfc.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NDt6SbQxP+I2erNvfxXhPyvTSxRmpG4+u1c/PlqVAWU=;
 b=n667DoGUFPsgpGY9SiUGJIb4djiqtKbE1LVcRqoGEo7fhU7ckLBVpGAUwe42p3HSFS
 Pc6svjUdMAK0t8iLez4PiwNQ8xgkyauG0iFLucjzOi6kN1ry+Kn3ZYhT8ZrAsr/bLasQ
 aZWEdEb1++XBmynkownsA6Oq4R/6vqtthYE2TIENs+P+lpi1rGuwzsf8IVb3JK7oAX18
 p5IhMkC8i36WXJgbON5zOSzPpm98hobcmPW4x6WGJct306jFDpf8TDRhax9rTr9Tj/YE
 mFk9wJoKF/wtyqj4iXzMBDPhS9xs/z8TQTl0LRtIS/QFrO3DRwsJWp56F8mHmdiEUjQO
 C/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NDt6SbQxP+I2erNvfxXhPyvTSxRmpG4+u1c/PlqVAWU=;
 b=S2lhxtbo/KRfh66+eyk7BzyeW7VdY9Qma+m+7ZpEg3EhcnB6hzrdUak+Utt7YSO+lP
 +iy7hwB5kGWB+Vp69ZkCtX2MHBetcMx7GXt9WhfgLoF8M10A//x7o1ggj5feQIeAS0Cr
 iZfjvLSJ5wirl+8WZj2PUDz/39ZnIIdJmmNHmfno6QDSl6RtUj8aG+t07iiuGueZU02x
 keis7f0zZm1Di33FYHm0B4kDArXNRWbCT3in+7xh0+tMWxRBXfPtSaCbK+Gi6jzJS0ex
 qyRUBllSZyWpss7vNsMkkFt/vAc7GIwaigDQ5fzwHuOJnwfirhCxyVTigt6D5/3xU3Bu
 39og==
X-Gm-Message-State: APjAAAVXPYCww20L/SL3k0SmTyywytuFIdDhscKWrS8LbV0cvB6JhyUO
 9mg8/uN5RAXyPVVYko9XmcI=
X-Google-Smtp-Source: APXvYqxZr459aVkS4+OX8LswznuWZuMr3PIKBEqFhxnu3xGKRmSzEqVVlICQSUKXZr1DGYShP72jLA==
X-Received: by 2002:a65:51c8:: with SMTP id i8mr450153pgq.116.1561972715861;
 Mon, 01 Jul 2019 02:18:35 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:35 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 04/10] staging: rtl8723bs: Remove rtw_btcoex_Handler()
Date: Mon,  1 Jul 2019 14:48:11 +0530
Message-Id: <20190701091817.12759-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701091817.12759-1-nishkadg.linux@gmail.com>
References: <20190701091817.12759-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_Handler as it does nothing except call
hal_btcoex_Handler.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_cmd.c       | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index d1da058fb4c9..9a6e0cb9f1cc 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -58,11 +58,6 @@ u8 rtw_btcoex_IsBtDisabled(struct adapter *padapter)
 	return hal_btcoex_IsBtDisabled(padapter);
 }
 
-void rtw_btcoex_Handler(struct adapter *padapter)
-{
-	hal_btcoex_Handler(padapter);
-}
-
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
 {
 	s32 coexctrl;
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 47d31a3b2e84..77d22f403b52 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1440,7 +1440,7 @@ static void dynamic_chk_wk_hdl(struct adapter *padapter)
 	/*  */
 	/*  BT-Coexist */
 	/*  */
-	rtw_btcoex_Handler(padapter);
+	hal_btcoex_Handler(padapter);
 
 
 	/* always call rtw_ps_processor() at last one. */
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 903940cc0b16..73864262f9bc 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -21,7 +21,6 @@ void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
 u8 rtw_btcoex_IsBtDisabled(struct adapter *);
-void rtw_btcoex_Handler(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
 u8 rtw_btcoex_IsBtControlLps(struct adapter *);
 void rtw_btcoex_SetBTCoexist(struct adapter *, u8 bBtExist);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
