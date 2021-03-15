Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DBC33C3C9
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:14:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94C0C430FB;
	Mon, 15 Mar 2021 17:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Xo_6VDPBlsz; Mon, 15 Mar 2021 17:14:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC1F641503;
	Mon, 15 Mar 2021 17:14:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 635F21BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26DCA430E8
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRppX2gDBWAm for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D083430CA
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:45 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id ox4so51886592ejb.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=rWpG6Ws4ReLpI3M+Zd+um2eriyt7DgQiJT2um93dbP4=;
 b=hH/xqqte3heQBOwo3bXtgyVcskk1NDbcm09SCBkK9LtVIZ11BorYQA5b21TmeDHImC
 kEQuI1pcEiDe1ly/UWXrivuOphz6WOPrSVjtJQR0Gh1bLytqj2mXq7uPIumLcyIgYUdY
 ycLqb6qRMccAt46gfrmLaGRGU1/oRK/3+dk1ww2vaw+ElfYChdk8UB9mKa/MlCm+lFO6
 ANiNs2zePS8wTiBNiQgLXUqC0IrzajhPteaYy+UKNTeEzmdMTLALsi+sHhGGc/n9nd3l
 GD2UFmIIVWQpFLgMuNw4Z8Cdb0BRmz6CAJPEU+gHjobpYwrVkJwC5kUwG4RoNkaj76kT
 MfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rWpG6Ws4ReLpI3M+Zd+um2eriyt7DgQiJT2um93dbP4=;
 b=skmT040d8y0XL2PDQ2I1puaV6P5rXmENx43C19OW8gj9GXOBVwUieRnIvCTFm9dRBX
 6SDyaVWZbb7wp1OYwIa7dWq0UkLpI5SRWIcleHN1vEP6qxTyMjuTTkcmX8hAHDF7gGBG
 pNZ8m4kwG0BGETl/W/TTD5M2nl1W+QeeV5VXpIPVmbfdk6E4M2jZ2Blivyim+xyUjE/S
 9uMQt8xL1zv09s8BbqHeVasDAmRmW/GyAPFs4XBM03fDL2KGt8rBV7ZJg9U9YO8q6urL
 oOXaJgQbvauH5IPLAUdSiAbSP9xtz3an1gUXRl71zl3gh2VkpZeRxF7JxmlM80l46Ljw
 CyYA==
X-Gm-Message-State: AOAM5301RWpdZ627a0d+MdVRjkmenLBnbVi5uO9JpxHr+Sgsd+kpNX9+
 T2hgYaOvdQ+W4Jb5FashhVM=
X-Google-Smtp-Source: ABdhPJwVzY2flL4zA62YVRZ3LQcp6d0WJxo60hGD6OCy5aJ+J3SiDr1AgxnkpzqUtGNfGqrVqq18Rw==
X-Received: by 2002:a17:906:814b:: with SMTP id
 z11mr24695391ejw.290.1615828003365; 
 Mon, 15 Mar 2021 10:06:43 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:43 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 43/57] Staging: rtl8723bs: fix spaces in hal_com_phycfg.h
Date: Mon, 15 Mar 2021 18:06:04 +0100
Message-Id: <20210315170618.2566-44-marcocesati@gmail.com>
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

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #75: FILE: ./include/hal_com_phycfg.h:75:
    +struct adapter *	Adapter,

    ERROR:POINTER_LOCATION: "foo*		bar" should be "foo *bar"
    #95: FILE: ./include/hal_com_phycfg.h:95:
    +	u8*		RateIndex,

    ERROR:POINTER_LOCATION: "foo*		bar" should be "foo *bar"
    #96: FILE: ./include/hal_com_phycfg.h:96:
    +	s8*		PwrByRateVal,

    ERROR:POINTER_LOCATION: "foo*		bar" should be "foo *bar"
    #97: FILE: ./include/hal_com_phycfg.h:97:
    +	u8*		RateNum

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #107: FILE: ./include/hal_com_phycfg.h:107:
    +struct adapter *	padapter,

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #141: FILE: ./include/hal_com_phycfg.h:141:
    +struct adapter *	padapter,

    ERROR:POINTER_LOCATION: "foo*			bar" should be "foo *bar"
    #145: FILE: ./include/hal_com_phycfg.h:145:
    +u8*			Rates,

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #167: FILE: ./include/hal_com_phycfg.h:167:
    +	struct adapter *		padapter

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #172: FILE: ./include/hal_com_phycfg.h:172:
    +struct adapter *	padapter,

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #189: FILE: ./include/hal_com_phycfg.h:189:
    +struct adapter *		Adapter,

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #201: FILE: ./include/hal_com_phycfg.h:201:
    +struct adapter *		Adapter

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #206: FILE: ./include/hal_com_phycfg.h:206:
    +struct adapter *		Adapter

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #218: FILE: ./include/hal_com_phycfg.h:218:
    +struct adapter *	Adapter,

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../rtl8723bs/include/hal_com_phycfg.h        | 26 +++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
index 9fff4aa36546..580b85324ae7 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
@@ -72,7 +72,7 @@ struct bb_register_def {
 
 u8
 PHY_GetTxPowerByRateBase(
-struct adapter *	Adapter,
+struct adapter *Adapter,
 u8 		Band,
 u8 		RfPath,
 u8 		TxNum,
@@ -92,9 +92,9 @@ struct adapter *padapter,
 u32 		RegAddr,
 u32 		BitMask,
 u32 		Value,
-	u8*		RateIndex,
-	s8*		PwrByRateVal,
-	u8*		RateNum
+u8		*RateIndex,
+s8		*PwrByRateVal,
+u8		*RateNum
 	);
 
 u8
@@ -104,7 +104,7 @@ u8 Rate
 
 void
 PHY_SetTxPowerIndexByRateSection(
-struct adapter *	padapter,
+struct adapter *padapter,
 u8 		RFPath,
 u8 		Channel,
 u8 		RateSection
@@ -138,11 +138,11 @@ u8 	path
 
 void
 PHY_SetTxPowerIndexByRateArray(
-struct adapter *	padapter,
+struct adapter *padapter,
 u8 		RFPath,
 enum CHANNEL_WIDTH	BandWidth,
 u8 		Channel,
-u8*			Rates,
+u8		*Rates,
 u8 		RateArraySize
 	);
 
@@ -164,12 +164,12 @@ u32 		Data
 
 void
 PHY_TxPowerByRateConfiguration(
-	struct adapter *		padapter
+	struct adapter *padapter
 	);
 
 u8
 PHY_GetTxPowerIndexBase(
-struct adapter *	padapter,
+struct adapter *padapter,
 u8 		RFPath,
 u8 		Rate,
 enum CHANNEL_WIDTH	BandWidth,
@@ -186,7 +186,7 @@ u8 		Channel
 
 void
 PHY_SetTxPowerLimit(
-struct adapter *		Adapter,
+struct adapter *Adapter,
 u8 			*Regulation,
 u8 			*Band,
 u8 			*Bandwidth,
@@ -198,12 +198,12 @@ u8 			*PowerLimit
 
 void
 PHY_ConvertTxPowerLimitToPowerIndex(
-struct adapter *		Adapter
+struct adapter *Adapter
 	);
 
 void
 PHY_InitTxPowerLimit(
-struct adapter *		Adapter
+struct adapter *Adapter
 	);
 
 s8
@@ -215,7 +215,7 @@ PHY_GetTxPowerTrackingOffset(
 
 void
 Hal_ChannelPlanToRegulation(
-struct adapter *	Adapter,
+struct adapter *Adapter,
 u16 			ChannelPlan
 	);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
