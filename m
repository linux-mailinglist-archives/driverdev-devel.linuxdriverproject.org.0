Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 925F05B66A
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 30F4B204B7;
	Mon,  1 Jul 2019 08:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vrKerbDxHVSl; Mon,  1 Jul 2019 08:11:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E383204F4;
	Mon,  1 Jul 2019 08:11:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C0AF1BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 799A385BC2
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AD2HZnwIRcDh for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF9248538A
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:25 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id p10so5511608pgn.1
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xo5YxnTv4iOnZ6KEoqsgpFHlFIokWmr5fEofFWAdRBc=;
 b=nqFwFGdBZSS3xUgP9sFaxwhNXAyfpgzooxYvcG7nqj89PHWMGFt07swtSNj851GJbZ
 c+W619htSf4ATpxkbvoK9/SUFm0zBB6OmZEr96b30ODxgxytlQswCdQIo9ubbuvYYihH
 BpE2C39xdF6lfPdp5C0S0FtCMLPLwIagpZVofn/s9dV8AACXZG6JQrOdlP4ddjHHIdSU
 FtowbOYgwHQk58kfHWsdPyYE8o9vHoVMacTP6AwBgc4T0jnjSRov8rbtzygD1mQp2yFX
 ftK9rHEE/c+hUYhGBJGzdqf1lmWqWkycNHLiCBp99/xEDKJAPG++aBkM9CkmSmvuQ6Ig
 Wa0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xo5YxnTv4iOnZ6KEoqsgpFHlFIokWmr5fEofFWAdRBc=;
 b=SfnVG6gffS+xx1YalI0WAxi+ZqOAy8bbDdZ39z0WN/R3eqXSqkj9GzI6DjNwIHooy0
 w6IzEFSlwUUdb6csaKrS/9+FXDXiHqgb+HzSVU48f0pLvezkw/azOtFtrhZ0zgygTpQQ
 XpQk8V/xIAf8pQG6mznsYvF0bwDA5UxlhhKTScwDegck4mn+aW8zLeTNuP4ymAnwVyTj
 xgbWD8N5eycf6lu5xHd8WMvOVx+MUY/jhvnEdrdZXQogjh8JCdwgOThMqNnjbyyfiREf
 fDB6DNeYDA6ygQBH+Ucr4RdZRnFSBCgxssLlRIo3/A1JpMkgNFaZ/f/EztkFtczmqDd8
 9zUQ==
X-Gm-Message-State: APjAAAVAcvKtqaYtxCkpx1KwEKJHoV0NXZlRvsjru9l7MULS+sejvuCx
 wLVxbdUqsqubOp8gHayLdKg=
X-Google-Smtp-Source: APXvYqx8lM6qpIhH96oWx22onrQV4SJrgo6uTPljvnJaolzkONt35ib3aGtdVYlPAMG+kmZlQerZeQ==
X-Received: by 2002:a65:63c3:: with SMTP id n3mr22733820pgv.139.1561962205401; 
 Sun, 30 Jun 2019 23:23:25 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:25 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 05/10] staging: rtl8723bs: Remove rtw_btcoex_IpsNotify()
Date: Mon,  1 Jul 2019 11:52:59 +0530
Message-Id: <20190701062304.2440-5-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_IpsNotify as all it does is call
hal_btcoex_IpsNotify.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c    | 2 +-
 4 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index dc4e2c806ec0..2425b9ce8712 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -9,11 +9,6 @@
 #include <rtw_btcoex.h>
 #include <hal_btcoex.h>
 
-void rtw_btcoex_IpsNotify(struct adapter *padapter, u8 type)
-{
-	hal_btcoex_IpsNotify(padapter, type);
-}
-
 void rtw_btcoex_LpsNotify(struct adapter *padapter, u8 type)
 {
 	hal_btcoex_LpsNotify(padapter, type);
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index c337a5285c68..056be4674596 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -43,7 +43,7 @@ void ips_enter(struct adapter *padapter)
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 
 
-	rtw_btcoex_IpsNotify(padapter, pwrpriv->ips_mode_req);
+	hal_btcoex_IpsNotify(padapter, pwrpriv->ips_mode_req);
 
 	mutex_lock(&pwrpriv->lock);
 	_ips_enter(padapter);
@@ -90,7 +90,7 @@ int ips_leave(struct adapter *padapter)
 	mutex_unlock(&pwrpriv->lock);
 
 	if (_SUCCESS == ret)
-		rtw_btcoex_IpsNotify(padapter, IPS_NONE);
+		hal_btcoex_IpsNotify(padapter, IPS_NONE);
 
 	return ret;
 }
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index d3b6851131d6..ebd51519680f 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -15,7 +15,6 @@
 #define	PACKET_ARP				2
 #define	PACKET_EAPOL			3
 
-void rtw_btcoex_IpsNotify(struct adapter *, u8 type);
 void rtw_btcoex_LpsNotify(struct adapter *, u8 type);
 void rtw_btcoex_ScanNotify(struct adapter *, u8 type);
 void rtw_btcoex_ConnectNotify(struct adapter *, u8 action);
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 6a8a7092f3ba..d505ccebad40 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1208,7 +1208,7 @@ void rtw_dev_unload(struct adapter *padapter)
 		}
 
 		if (padapter->bSurpriseRemoved == false) {
-			rtw_btcoex_IpsNotify(padapter, pwrctl->ips_mode_req);
+			hal_btcoex_IpsNotify(padapter, pwrctl->ips_mode_req);
 #ifdef CONFIG_WOWLAN
 			if (pwrctl->bSupportRemoteWakeup == true &&
 				pwrctl->wowlan_mode == true) {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
