Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA3F5B666
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F13428651C;
	Mon,  1 Jul 2019 08:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 22CWNoBWL396; Mon,  1 Jul 2019 08:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A77A857CB;
	Mon,  1 Jul 2019 08:11:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D679B1BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3BA5875D8
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id luncpv0ysAGt for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA714875BE
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:27 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id i189so6009913pfg.10
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wz2Y/mloDACBfX5w+SutZSEeh3TwkJA+1KgzOk7yZeQ=;
 b=bapb8/pfqoXOAdn2yShPR5id2BFc6NxuxTr3JdIk3DpTre6q/VChS5Or5gL1vDBFIR
 t+64OcnzElX9hpdu22So0kfk+pfXSKvYJWTrEL3nhepgMUqQCI0vU3hU4bOlDSewEoFl
 DOe/M2nHLRPInywWIniillaDtidPMLerfKlxhddxX2W4MHe3hNvOTIXAwwRKe8bM/2+z
 wPyp2gSkZzsQmOzDaRrx/3P8JA6RC8gBXEhJrbvSLfOHp93q2warBRKWrL6VCJ7Io8AM
 4HZsLJeHUY1IacFdNMkIdehnc9h3pOv8XY2Auy2E69p/SxWyts4D+yP2IUmMxwoa4LAq
 28rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wz2Y/mloDACBfX5w+SutZSEeh3TwkJA+1KgzOk7yZeQ=;
 b=l+8Nq6LxWpNtSuP3qOkS2HjKrj+1kshbzhjIi1ddJc5JbK3ZfpqbRHgWckn6Fc6Yyh
 yGSEfr+RK0dAgneRTS6gv259bmSPI4Ix8WqkIwrNnYWxBhR5aamy6Re5+NqeohWgAz/z
 rlq1nDGjlocBa7FFuBE846Z3pAZy3FhSHGsPn6v//za7s216A+hmhEe5XK/Nnwqnj6Je
 zG/7U0pB5QVHRTIym1KybiYLoguy/t0ghs8cU0ZpIJMQVETqTEDsVuytTOj8aKx9sqLT
 1iYbU+Fuv7rBGFTy4I79QfdRijyVX1cV8HC8xkKEBH61h7i19n76BNhgUMv9i3XmbOgV
 5niQ==
X-Gm-Message-State: APjAAAXWEL0UrPEkvduEuMMN+i8hp9dZkdFWGf7GF3iH6CzIcIL1zNgN
 U8R1GDBO8ucynnRVrUE4NYg=
X-Google-Smtp-Source: APXvYqwcm2fuTefkV+ODC6i82Mt9lQDoOyoEDhbRpkzopUO1WTHuaoqVAGfC5BqACBe1hLOrlzSqmw==
X-Received: by 2002:a63:d103:: with SMTP id k3mr21961782pgg.189.1561962207471; 
 Sun, 30 Jun 2019 23:23:27 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:27 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 06/10] staging: rtl8723bs: Remove rtw_btcoex_LpsNotify()
Date: Mon,  1 Jul 2019 11:53:00 +0530
Message-Id: <20190701062304.2440-6-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_LpsNotify as all it does is call
hal_btcoex_LpsNotify.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 2425b9ce8712..e1b265cb269c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -9,11 +9,6 @@
 #include <rtw_btcoex.h>
 #include <hal_btcoex.h>
 
-void rtw_btcoex_LpsNotify(struct adapter *padapter, u8 type)
-{
-	hal_btcoex_LpsNotify(padapter, type);
-}
-
 void rtw_btcoex_ScanNotify(struct adapter *padapter, u8 type)
 {
 	hal_btcoex_ScanNotify(padapter, type);
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 056be4674596..a4c99265bc22 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -457,7 +457,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
 			pwrpriv->bFwCurrentInPSMode = false;
 
-			rtw_btcoex_LpsNotify(padapter, ps_mode);
+			hal_btcoex_LpsNotify(padapter, ps_mode);
 		}
 	} else {
 		if ((PS_RDY_CHECK(padapter) && check_fwstate(&padapter->mlmepriv, WIFI_ASOC_STATE))
@@ -469,7 +469,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			DBG_871X(FUNC_ADPT_FMT" Enter 802.11 power save - %s\n",
 				FUNC_ADPT_ARG(padapter), msg);
 
-			rtw_btcoex_LpsNotify(padapter, ps_mode);
+			hal_btcoex_LpsNotify(padapter, ps_mode);
 
 			pwrpriv->bFwCurrentInPSMode = true;
 			pwrpriv->pwr_mode = ps_mode;
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index ebd51519680f..c75b08ab713c 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -15,7 +15,6 @@
 #define	PACKET_ARP				2
 #define	PACKET_EAPOL			3
 
-void rtw_btcoex_LpsNotify(struct adapter *, u8 type);
 void rtw_btcoex_ScanNotify(struct adapter *, u8 type);
 void rtw_btcoex_ConnectNotify(struct adapter *, u8 action);
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
