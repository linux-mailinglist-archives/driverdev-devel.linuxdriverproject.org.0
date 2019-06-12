Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCDB432D2
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60E47862BE;
	Thu, 13 Jun 2019 05:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xn050osI6EEB; Thu, 13 Jun 2019 05:42:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE4CA86302;
	Thu, 13 Jun 2019 05:42:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B38541BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AE923207A2
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nm7sg+qQIv5Y for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 359BF20014
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:13 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f21so4241570pgi.3
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TVSKFR+uAXplwOLBSVF/8Tmrp0o/ZLjE4F0T6LVvVBA=;
 b=i9+L2P0iXSfAuboZFXCjTXjIucFyJuXf8f/Scl2o259aHUu/aqK5LSUhsmYVqN4nV3
 vL7raRagUCIxxk278TRPQhWCPqrpnKK9nBdSI5y21wZhtz1aC1Ej8YNThOkYQuFC9UVB
 ceCAcI+LrbE97ved02G6iSwBnqegEoftOpyDRIgn8x+dF67/BOSARebkhrCHYIQaVOxV
 77f4NzqHPihvkgOtUFuh+WXnigGIOVDXxs2bdBNezGDwcIUV3Za/NHdbe29kLZHbgHAr
 f/HTnvx2BKyPpc8hzWF32Ta4myLv0iBnfXWexTKf9+xoOVRpULZmvs2rVCLbg7Tjj7o9
 Gmew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TVSKFR+uAXplwOLBSVF/8Tmrp0o/ZLjE4F0T6LVvVBA=;
 b=PddNMif3J6Hzlhd39kDfqAn0rr8dfNntI9ZqDngfNrupvX2h2NnDNzLGRvZ5Cvwa63
 Pa99Go6Y0G1ndgAbel2C1xAv+gge/t/CNkOKTxrNxn2JX/jDOhvQkLhuAz2Nl2w5AO48
 TLPlobP2LMjSafT9lpn9IlpRxQS/ne8dskmj+hegN9Xd/72rw+DmcrZwSMQ1nKlH3lAT
 5J1oiHza+D4pEvALc3Xk1iMwH2h04EH/0OZJQCQqrAJnTlRgUn+xE1TyScM1e8o/1ChY
 PvxU7/kaisZPtNusd7yZU99XprARWjeDhc90AbwktK3nyFpMKtKZ6Q0QuciBvzW5n5Jn
 XinQ==
X-Gm-Message-State: APjAAAVlKW0a/cJocN/t+NfV/3DJW5mIHnfhq4qU9E1Iiw6irWU9NLYg
 ezp/ZFDaZS7zzmzqRbMCbBE=
X-Google-Smtp-Source: APXvYqxnOEoC4oazw2SZcyzTI+bzXXuIdmBn2/3CcHipk2OUNVWpOEgnPMLeRhvPGcLMpGAW0070Lg==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id
 h1mr3317516pjs.101.1560404532915; 
 Wed, 12 Jun 2019 22:42:12 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:12 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 04/11] staging: rtl8723bs: core: Replace function Set_MSR()
Date: Wed, 12 Jun 2019 23:34:32 +0530
Message-Id: <20190612180439.7101-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190612180439.7101-1-nishkadg.linux@gmail.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
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

Remove function Set_NETYPE0_MSR as it only has one line and it is only
called by one other function, Set_MSR.
Replace contents of Set_MSR with the contents of Set_NETYPE0_MSR as
Set_MSR does nothing except call Set_NETYPE0_MSR.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c  | 2 +-
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 7 +------
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 5f0b20038a28..1f09e668c672 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -6036,7 +6036,7 @@ u8 setopmode_hdl(struct adapter *padapter, u8 *pbuf)
 	}
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_SET_OPMODE, (u8 *)(&type));
-	/* Set_NETYPE0_MSR(padapter, type); */
+	/* Set_MSR(padapter, type); */
 
 
 #ifdef CONFIG_AUTO_AP_MODE
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index a131d5cd46df..d7103f73e281 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -302,14 +302,9 @@ void Switch_DM_Func(struct adapter *padapter, u32 mode, u8 enable)
 		rtw_hal_set_hwreg(padapter, HW_VAR_DM_FUNC_CLR, (u8 *)(&mode));
 }
 
-static void Set_NETYPE0_MSR(struct adapter *padapter, u8 type)
-{
-	rtw_hal_set_hwreg(padapter, HW_VAR_MEDIA_STATUS, (u8 *)(&type));
-}
-
 void Set_MSR(struct adapter *padapter, u8 type)
 {
-	Set_NETYPE0_MSR(padapter, type);
+	rtw_hal_set_hwreg(padapter, HW_VAR_MEDIA_STATUS, (u8 *)(&type));
 }
 
 inline u8 rtw_get_oper_ch(struct adapter *adapter)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
