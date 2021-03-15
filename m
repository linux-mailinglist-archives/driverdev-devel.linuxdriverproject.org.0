Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C115A33C38A
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:09:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 516B64D751;
	Mon, 15 Mar 2021 17:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lDJTH2xrE2an; Mon, 15 Mar 2021 17:09:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BB3447489;
	Mon, 15 Mar 2021 17:09:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D752F1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6DEE6F52F
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUJBnuPrHiqR for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 072536F504
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:22 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id mm21so67438825ejb.12
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=xmDlSbpLqO505wWIW6WHcHRsMHnyktvFQKCwYcoA30E=;
 b=hTrqfO5/isHS8AG6h5YofqZCEyElc9I1Xs0HXiN3HPycsqUspldgtTxRiyx362NIL1
 kUjzzQ7zh6MAlHiwhRO6WXJdBP9YD/fnHl2c13oFCoJI+HCu6s/vRLd76HBu9PESZs9H
 JJoe6Q2YV+fzkrXmsqTvSfD/2qTjc3sSHx1EGJh2oi0ZZf/O97Mynv5pJext4sZ3sXlK
 swd3kzAo7p9ccQ25WGf2mLiGSS5WmlVybnIirT18NlxueyiCF8C7X2+f06PrdxxIwKra
 zG7IZYDnHfWoO9S6PDKBPL9DjlWDyc6/qFCSnPjBBxoStNWCoTz+gJ22oxS7BQ4L+xZr
 RrZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xmDlSbpLqO505wWIW6WHcHRsMHnyktvFQKCwYcoA30E=;
 b=UcVWP6hSDJFqGhEtr3zEK4QjWDwT8piALBQOEOCrTJpTFtRXIKf4hhnPUaoAsPcFMw
 rCm3Kko7vgRYXGCZSbVWaj/I+ah3cDuBuk7xJRKEyYCIP8p6fdoAYbbE53qzlUKwBwBU
 eYkBKY357vD4JuwHNwfmqGPTb6jHv0XNkXbOjjR4/U+kxSyluFtxG/Huqo38fmd/GFS6
 obFZ51tGo+D310gtj0kRYngQKN45Pv4DMA7fXvbNSTKq6OdjpWCbxBHbsr8sib4pHT0Q
 ccE3ZBTGAONntRSckTZ3AlwYl21VgAdl4zHdHHX72dLkMInENdsgFgsBp0rploX0YKvn
 RABA==
X-Gm-Message-State: AOAM533Kpc2mZmB7C/8B1DnT0jcJvdZv1p9hpSgrvSx1ss0bnUb24h8l
 GpsbqFth+oz0VjgMd9o0PqQ=
X-Google-Smtp-Source: ABdhPJxoi9FWDuwsSoY6wZnvRTEI98Dfez3SuZYUCu6Idlx2F3OU+9yBRzj1zVsr9sxjT0678oe/Mw==
X-Received: by 2002:a17:906:5611:: with SMTP id
 f17mr25103912ejq.208.1615827981080; 
 Mon, 15 Mar 2021 10:06:21 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:20 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 16/57] Staging: rtl8723bs: fix spaces in HalPhyRf_8723B.h
Date: Mon, 15 Mar 2021 18:05:37 +0100
Message-Id: <20210315170618.2566-17-marcocesati@gmail.com>
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
    #19: FILE: ./hal/HalPhyRf_8723B.h:19:
    +void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG * pConfig);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #22: FILE: ./hal/HalPhyRf_8723B.h:22:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #29: FILE: ./hal/HalPhyRf_8723B.h:29:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #44: FILE: ./hal/HalPhyRf_8723B.h:44:
    +void ODM_SetIQCbyRFpath(struct DM_ODM_T * pDM_Odm, u32 RFpath);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #49: FILE: ./hal/HalPhyRf_8723B.h:49:
    +void PHY_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
index 80cb446db5fa..5cd65a7cfebc 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.h
@@ -16,17 +16,17 @@
 #define	RF_T_METER_8723B					0x42	/*  */
 
 
-void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG * pConfig);
+void ConfigureTxpowerTrack_8723B(struct TXPWRTRACK_CFG *pConfig);
 
 void DoIQK_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u8 DeltaThermalIndex,
 	u8 ThermalValue,
 	u8 Threshold
 );
 
 void ODM_TxPwrTrackSetPwr_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	enum PWRTRACK_METHOD Method,
 	u8 RFPath,
 	u8 ChannelMappedIndex
@@ -41,12 +41,12 @@ void PHY_IQCalibrate_8723B(
 	u8 RF_Path
 );
 
-void ODM_SetIQCbyRFpath(struct DM_ODM_T * pDM_Odm, u32 RFpath);
+void ODM_SetIQCbyRFpath(struct DM_ODM_T *pDM_Odm, u32 RFpath);
 
 /*  */
 /*  LC calibrate */
 /*  */
-void PHY_LCCalibrate_8723B(struct DM_ODM_T * pDM_Odm);
+void PHY_LCCalibrate_8723B(struct DM_ODM_T *pDM_Odm);
 
 /*  */
 /*  AP calibrate */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
