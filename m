Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CC15B7DB
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A80238660D;
	Mon,  1 Jul 2019 09:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id doJhxvDYyics; Mon,  1 Jul 2019 09:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9118B865A1;
	Mon,  1 Jul 2019 09:18:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A95B1BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 865B52048F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c50Uaxm3ilZM for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 700C4203C6
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:44 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id ay6so6992164plb.9
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n/cPxMzJuq3VKRq8dlR8y5CWXDdEalDt+AV9zWHkyFY=;
 b=eUsxufd7U7VT+TGSNfuhtHh3PUDmt+y23q4v1U7oBPFyNubZMWMcFlcu3n+5j+tqZR
 uzgOJw0gt4rFq+u8FDZHy8m7NIHApRX6jSBe0ligqQYdYgDN8KKSvJSUYAttiiLlM64T
 4jSCd+Agpbb+74dJp/yrfEPQMmahPW9fLoOKCmpBftCiHALxIdrgflZTrQSHLx+79mCr
 NB946DFTFcGvDg7kxb2COEnwmtJob3UOgFVOb9yyBS+XSGC3yD2YBgUknKf0dSRiFVv8
 +qL5BA6QDPEenpLjbOTRDYEMxsShWr3QNVoA30F6g+BxqZS7RDS5605SxmeVE7W7KX3Q
 SdUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n/cPxMzJuq3VKRq8dlR8y5CWXDdEalDt+AV9zWHkyFY=;
 b=Rm8vgTUGEYsamHR2iHYUX0RXq33Z/TVRIvA8VmyIQ+KqUWnHvWYGFbJGLveDS80s9X
 fkt+1B3vh/wpqeMjtwgEcihshyXcDjeDvIPh+R8eb1RlR/ZAIZO4RPpGaZcZg+qG2een
 7kgiLJ3s780K8jVVTqBQ6luArxZbhHbTegh1uO2pOEEgXu2pJDj/MmHM0G1oxo0buQ2D
 HZJQKIx37HnvCOI2axq8JiAt7XN/CpFMVxj9H+AOxmhg7Qv0i6FMlZHtkhmEvtCLluXd
 MCCkPD4yThQcQX/wZkzKvCbeDjT1PAxTW2gvzOTgUGxZLgGtLYMCfkeUIASAVdq80bFa
 Mhog==
X-Gm-Message-State: APjAAAWsD7apmWJQ6sNulEnfv++FzttqmrNkWLytVPfYlxgk3OHy6yM0
 iCj3db+6f7RnHOUDzxotO+4=
X-Google-Smtp-Source: APXvYqzcRSCmLEZ8Bisq+o0MdDo6axy4wovw3c8kdjUMxKzUCBD20vAJbST3TTRgbjvny4pZwsmDGg==
X-Received: by 2002:a17:902:5ac4:: with SMTP id
 g4mr28570556plm.80.1561972724154; 
 Mon, 01 Jul 2019 02:18:44 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:43 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 07/10] staging: rtl8723bs: Remove rtw_btcoex_SetBTCoexist()
Date: Mon,  1 Jul 2019 14:48:14 +0530
Message-Id: <20190701091817.12759-7-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_SetBTCoexist as it does nothing except call
hal_btcoex_SetBTCoexist.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c       | 5 -----
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h    | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 734e938fbaf7..de8f6cae7942 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -62,11 +62,6 @@ s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
 	return coexctrl;
 }
 
-void rtw_btcoex_SetBTCoexist(struct adapter *padapter, u8 bBtExist)
-{
-	hal_btcoex_SetBTCoexist(padapter, bBtExist);
-}
-
 void rtw_btcoex_SetChipType(struct adapter *padapter, u8 chipType)
 {
 	hal_btcoex_SetChipType(padapter, chipType);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index b21f04faf9c7..5ce93a56ad68 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2694,7 +2694,7 @@ void Hal_EfuseParseBTCoexistInfo_8723B(
 		}
 	}
 
-	rtw_btcoex_SetBTCoexist(padapter, pHalData->EEPROMBluetoothCoexist);
+	hal_btcoex_SetBTCoexist(padapter, pHalData->EEPROMBluetoothCoexist);
 	rtw_btcoex_SetChipType(padapter, pHalData->EEPROMBluetoothType);
 	rtw_btcoex_SetPGAntNum(padapter, pHalData->EEPROMBluetoothAntNum == Ant_x2 ? 2 : 1);
 	if (pHalData->EEPROMBluetoothAntNum == Ant_x1)
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 3b7f97f5b4c4..d5552543a490 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -21,7 +21,6 @@ void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
-void rtw_btcoex_SetBTCoexist(struct adapter *, u8 bBtExist);
 void rtw_btcoex_SetChipType(struct adapter *, u8 chipType);
 void rtw_btcoex_SetPGAntNum(struct adapter *, u8 antNum);
 void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
