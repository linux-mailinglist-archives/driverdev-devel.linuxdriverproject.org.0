Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E01F5B7D4
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A14E285C5E;
	Mon,  1 Jul 2019 09:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9WaOL1EU57OR; Mon,  1 Jul 2019 09:18:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA90D854AF;
	Mon,  1 Jul 2019 09:18:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 124891BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D02C8562D
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TwIwUPfu1u1o for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1421D854AF
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:29 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id m7so7003518pls.8
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dCce2qmjYjMoZ/6SgHzNc6afv6VwBVXHqh4OxJSa/H0=;
 b=O35HJy+MmEZmtAt8fjzKKyeCrg1bYYTR6cj4ef6ttjhusLDoexFVeQ2kTWheZxgGsa
 63/+6sd02SyKuJAAqdH9eb506IYXVvvTvqTAdzijt3eTIXePrRXgE75dmK2QWZyFlHTg
 r7ZpSxBtem/AQ03htCBanmwRLf19OdO+K5v8mxnpV+OKtxSCP7d2VIBPrDMJsEZ/e1vK
 rgFNE1s3kte+uSWzpxarbnMTPh9vEgjXjlPJOx8xjTXK0xWWGMT9gZQkPemOzE/8VmAM
 zDe2zlcLWnu50boa+R77jyoTtUFgPcbuD5o6ngSUySzh3LH/netuJ0Nt3ygB705x0Q5w
 Ddpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dCce2qmjYjMoZ/6SgHzNc6afv6VwBVXHqh4OxJSa/H0=;
 b=Gl/8D2LN4qFLQHG6qtMbIgHPNZqSADqIBXsc3nJGbNdSZulNXGLa7GZHxl3oAbSiiX
 hnBU3oFaM/imew63OSJTGjBgr+6SpCLOhMXTBp5VVDOB/Zk+g1gwnPKSCwEYsLaFkrsB
 u1SWKdJQKTFKezpqtgY02wCA11hZqi2+W2H/qGaQDr7cjdAVS/AENcdj3uVzzGwuvlLv
 JCdja4qGapjKI181A6+OWCsoSw5jjEWl8lM2PSdZDTCLA3n+6hVQ/WtpbDegbbLIS8uQ
 qY2mzmuBXFAQ7rJQolqi3Po7qyU+IIMZhDTPjJAr1KuFb4/bTZ9yXB2rxQ4je0Qrge+a
 8k1Q==
X-Gm-Message-State: APjAAAUkBYnffI5mTUxJyZUSPQ4UNkaRd4/sZBH0Vo58cp/mhZDk3Pi5
 mEsBOOtNa8r5OHi3gsIDAcM=
X-Google-Smtp-Source: APXvYqzBbygw4pdI39qYLNFb7e1cyrh6ANO1myWNbilQUSjNsrxIbdPTDEY81ozcoyNGYzHZ/pME1Q==
X-Received: by 2002:a17:902:846:: with SMTP id
 64mr27919081plk.265.1561972708792; 
 Mon, 01 Jul 2019 02:18:28 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:28 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 01/10] staging: rtl8723bs: Remove rtw_btcoex_RpwmVal()
Date: Mon,  1 Jul 2019 14:48:08 +0530
Message-Id: <20190701091817.12759-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove function rtw_btcoex_RpwmVal as all it does is call
hal_btcoex_RpwmVal.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index e747bfa4fa8c..fcdb6c1aa81c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -77,11 +77,6 @@ u8 rtw_btcoex_IsBtControlLps(struct adapter *padapter)
 	return hal_btcoex_IsBtControlLps(padapter);
 }
 
-u8 rtw_btcoex_RpwmVal(struct adapter *padapter)
-{
-	return hal_btcoex_RpwmVal(padapter);
-}
-
 u8 rtw_btcoex_LpsVal(struct adapter *padapter)
 {
 	return hal_btcoex_LpsVal(padapter);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 096f4729dd11..16ff688947cb 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1045,7 +1045,7 @@ void rtl8723b_set_FwPwrMode_cmd(struct adapter *padapter, u8 psmode)
 
 	if (psmode > 0) {
 		if (rtw_btcoex_IsBtControlLps(padapter) == true) {
-			PowerState = rtw_btcoex_RpwmVal(padapter);
+			PowerState = hal_btcoex_RpwmVal(padapter);
 			byte5 = rtw_btcoex_LpsVal(padapter);
 
 			if ((rlbm == 2) && (byte5 & BIT(4))) {
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 9a020bdc5be3..d8897a7ddfd4 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -24,7 +24,6 @@ u8 rtw_btcoex_IsBtDisabled(struct adapter *);
 void rtw_btcoex_Handler(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
 u8 rtw_btcoex_IsBtControlLps(struct adapter *);
-u8 rtw_btcoex_RpwmVal(struct adapter *);
 u8 rtw_btcoex_LpsVal(struct adapter *);
 void rtw_btcoex_SetBTCoexist(struct adapter *, u8 bBtExist);
 void rtw_btcoex_SetChipType(struct adapter *, u8 chipType);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
