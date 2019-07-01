Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAFC5B7D9
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD13087A3A;
	Mon,  1 Jul 2019 09:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CprSeXHKiFid; Mon,  1 Jul 2019 09:18:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5755887924;
	Mon,  1 Jul 2019 09:18:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC4F91BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D8D7686519
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0vYXV8tDOeFj for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE6D88651E
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:41 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id p184so6260150pfp.7
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KUm1mRttIMi6fYQYXkxbbqv2ngBiiLWek87GWdl3zhI=;
 b=tfo2msPbeQaYE0GVaZKRj8OXYtoEjiU+s7GCqVNQpUB5qmlg3zBeuwGhpiRQFTD+0F
 /2a+IXfF65aq5LFXxk/rTVXAnr4tcgI7X3g6S3PAlmzLZDxIVSUJaWdW9Cjxq9L4eJYB
 rCzbeFMwbOUdjTBvW/ej9ivP29/h/0WifGkSBnf3FoDXY4SaP7eJLZS5HokMHDzXUk/G
 8k929R5RpHSX2TO/3CP1ybJJlBTM/+QVCJYttS5vAkJ/ZXBLvbsmqlwcWUQhLDJxk/qr
 UUSXhNiepDr71a0k67IiPwtSwcnIehPc3UieDNLjH1i8GajqF065BvkSvx4/mC6L0ucz
 ud/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KUm1mRttIMi6fYQYXkxbbqv2ngBiiLWek87GWdl3zhI=;
 b=r+MM/OPRPRK+1Ok6Q4iKLhySNX4v9mjxZK7wAhykIH9OFAPzvIrczksTCr53S/BDfm
 8XOajsKxHH670KwSoZpbIJ3l0ED5cgtOjx8F3EXvcldbrLE/SU85KyYAU0CdR57157fO
 lnOMlSlMju83Wp6KcvkbIw6GQLIsfppzSLXc2PJx3b0lcCxyiaQPUSj/0LWett/58Xn8
 wLrv8g5i0cWkOcenN2c6kY/KUJ8R8XefNF4uMDvg7bYdXBBHd3gcXGh5rmqbKEw7ztkD
 md28lfg/1VauvOZstjq8CRVW/hqIH/f9NfxpM9500H+G3ruISQVbSNJsyFbjfw1sgK8s
 a9Kw==
X-Gm-Message-State: APjAAAVUS8dvpwpnGw4bw1QVWgprmBNBv8r7XIz3F0kvKVjnTJYok63X
 tR3jJwauH0TO1Tde7URLiJk=
X-Google-Smtp-Source: APXvYqxlmc5Jk2wCPinKjp/cn54oNw8X98zOWEsmToI/KXGfZxpMPhS1fmg4fowKbrW2XU4XqR9xSg==
X-Received: by 2002:a17:90a:246f:: with SMTP id
 h102mr29718551pje.126.1561972721434; 
 Mon, 01 Jul 2019 02:18:41 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:40 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 06/10] staging: rtl8723bs: Remove rtw_btcoex_IsBtDisabled()
Date: Mon,  1 Jul 2019 14:48:13 +0530
Message-Id: <20190701091817.12759-6-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_IsBtDisabled as it does nothing except call
hal_btcoex_IsBtDisabled.
Modify call sites accordingly.
Issue found wth Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_mlme.c      | 2 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 5 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index bcbe8a441074..734e938fbaf7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -53,11 +53,6 @@ void rtw_btcoex_HaltNotify(struct adapter *padapter)
 	hal_btcoex_HaltNotify(padapter);
 }
 
-u8 rtw_btcoex_IsBtDisabled(struct adapter *padapter)
-{
-	return hal_btcoex_IsBtDisabled(padapter);
-}
-
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
 {
 	s32 coexctrl;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 1ebde6e8880a..34adf5789c98 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -1889,7 +1889,7 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 		return;
 
 	if (is_primary_adapter(adapter))
-		DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", rtw_btcoex_IsBtDisabled(adapter), hal_btcoex_IsBtControlLps(adapter));
+		DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", hal_btcoex_IsBtDisabled(adapter), hal_btcoex_IsBtControlLps(adapter));
 
 	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode == true)
 		&& (hal_btcoex_IsBtControlLps(adapter) == false)
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 3fb8c65fb72a..ae7fb7046c93 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -481,7 +481,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			if (pwrpriv->alives == 0)
 				pslv = PS_STATE_S0;
 
-			if ((rtw_btcoex_IsBtDisabled(padapter) == false)
+			if ((hal_btcoex_IsBtDisabled(padapter) == false)
 				&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
 				u8 val8;
 
@@ -910,7 +910,7 @@ void rtw_unregister_task_alive(struct adapter *padapter, u32 task)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if ((rtw_btcoex_IsBtDisabled(padapter) == false)
+	if ((hal_btcoex_IsBtDisabled(padapter) == false)
 		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
@@ -1051,7 +1051,7 @@ void rtw_unregister_tx_alive(struct adapter *padapter)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if ((rtw_btcoex_IsBtDisabled(padapter) == false)
+	if ((hal_btcoex_IsBtDisabled(padapter) == false)
 		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
@@ -1093,7 +1093,7 @@ void rtw_unregister_cmd_alive(struct adapter *padapter)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if ((rtw_btcoex_IsBtDisabled(padapter) == false)
+	if ((hal_btcoex_IsBtDisabled(padapter) == false)
 		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 65781477cac9..939cb3e6b009 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -186,7 +186,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		/* ODM_CmnInfoUpdate(&pHalData->odmpriv , ODM_CMNINFO_RSSI_MIN, pdmpriv->MinUndecoratedPWDBForDM); */
 
-		bBtDisabled = rtw_btcoex_IsBtDisabled(Adapter);
+		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
 		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 7b4cc8505a38..3b7f97f5b4c4 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -20,7 +20,6 @@ void rtw_btcoex_ConnectNotify(struct adapter *, u8 action);
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
-u8 rtw_btcoex_IsBtDisabled(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
 void rtw_btcoex_SetBTCoexist(struct adapter *, u8 bBtExist);
 void rtw_btcoex_SetChipType(struct adapter *, u8 chipType);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
