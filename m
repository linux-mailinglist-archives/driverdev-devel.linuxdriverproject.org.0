Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1E433C387
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:08:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55ECD605A5;
	Mon, 15 Mar 2021 17:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xOMa7LSXbhWT; Mon, 15 Mar 2021 17:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75AED6F557;
	Mon, 15 Mar 2021 17:08:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31A9E1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 214C1834B6
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nAl9QD-1pzuq for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A1AB83478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:20 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id bx7so18204286edb.12
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=l3MKeKrpuSoetsXtkuXImpmP9/W3Rx7kLlXz/NXv9ow=;
 b=UK07hyPSJARkQ+B9j1xz+ZL8kmjA7QkWE91r8JdODRfe/akr1cBfDW8uJexnbAM6Bg
 vvmnD7QuijTcB7nuh8RAso1VpXDw+7icjlHOwrthrs4P+seB+qs+Bm3Pfvec4WiCw9xZ
 59nSyFtPqaD8Wxb4HlypX9NkETvu+Q8ZHGxinkLUXqs1d0AH67NUFM0OWgp2i/tRrdRA
 GA2QFC+2wNNip+tRXHX+QNxFlPlBURctpzspNQ0unglUi8aqkfo1PR72tzYkjHSrkjaL
 mNjEKR3Uz6O8lBjcE1q5f+2ki+yhhjWBzYczV9uCiCBKvJcqDm6g+/ynEzWhTLJWVPCk
 xkpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l3MKeKrpuSoetsXtkuXImpmP9/W3Rx7kLlXz/NXv9ow=;
 b=TDUe0iCRAsYbND2yhj6uMCZqOpSDjvE23Qx0y+mRmhg5ftV14SnEOL4vC7C5vT5UmN
 19szaWubbOjC3bCIqEZ739AXb/f/JMqKOCfOL99zP45xzSDmlTV1sVCHN9C0hFWPIi90
 6Rxj1gUWRG5ZP02/Mx8ofp4/j+XWGnLDE7fo89yHiw8CNzV+GLIhwP9j+IUp3lW8cepl
 L5jS8ixj7BhUjL0MQgKRIIiOhxdashHlHpADlfEk21yYm/9fmiElsfuUSiph4NqbWVNk
 e3eyQqrH8QkzEpwBg8RkV1TEsEH5Hz0JrZ8L7wIR7AiWv+TSfMGTRL4V+nI0dcPWgOd1
 i/qA==
X-Gm-Message-State: AOAM5334w5Ljwv0pjmbmmzPdnZw08oFGkcemPPnditz7JoQk7XCMPRXu
 p7X60h30wEjEmqShC1OKPZo=
X-Google-Smtp-Source: ABdhPJwpSPEZX+1u06SFifpKlBPpbTTbZgCtdFkWe2Mbs2UQYlp2O2sCrUentf9Tx3S6KRTOjlZ/kg==
X-Received: by 2002:a05:6402:2552:: with SMTP id
 l18mr30598692edb.71.1615827978579; 
 Mon, 15 Mar 2021 10:06:18 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:18 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 13/57] Staging: rtl8723bs: fix spaces in HalPhyRf.c
Date: Mon, 15 Mar 2021 18:05:34 +0100
Message-Id: <20210315170618.2566-14-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #26: FILE: ./hal/HalPhyRf.c:26:
    +void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pConfig)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #26: FILE: ./hal/HalPhyRf.c:26:
    +void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pConfig)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #39: FILE: ./hal/HalPhyRf.c:39:
    +void ODM_ClearTxPowerTrackingState(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #77: FILE: ./hal/HalPhyRf.c:77:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalPhyRf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index 80ae4d0933f4..08064fd1d941 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -23,7 +23,7 @@
 	} while (0)
 
 
-void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pConfig)
+void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct TXPWRTRACK_CFG *pConfig)
 {
 	ConfigureTxpowerTrack_8723B(pConfig);
 }
@@ -36,7 +36,7 @@ void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pC
 /*  NOTE: If Tx BB swing or Tx scaling is varified during run-time, still */
 /*        need to call this function. */
 /*  */
-void ODM_ClearTxPowerTrackingState(struct DM_ODM_T * pDM_Odm)
+void ODM_ClearTxPowerTrackingState(struct DM_ODM_T *pDM_Odm)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(pDM_Odm->Adapter);
 	u8 p = 0;
@@ -74,7 +74,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 {
 
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	u8 ThermalValue = 0, delta, delta_LCK, delta_IQK, p = 0, i = 0;
 	u8 ThermalValue_AVG_count = 0;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
