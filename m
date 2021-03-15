Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CA833C3AF
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8760D835A9;
	Mon, 15 Mar 2021 17:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SxkDAan1-kHl; Mon, 15 Mar 2021 17:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1ACD82C99;
	Mon, 15 Mar 2021 17:11:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A72061BF387
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 952D441503
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i_Xw4lNvODzV for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E40ED430B9
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:32 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id z1so18218287edb.8
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=LwH8+9TmdxKVhlCVaaCYxk3k88Dvv0DugODW54+nIug=;
 b=QmYkTQicA/DF+lOZxovKC4c6ruQXZzE5gKhOyDVHi+A7uGxb/6PUbWcLQaTF7AE5s6
 8RBG4knZX9otixPrzf+Zm4WNYfdoRxKANjDmuAXCRogP3FZIDH+2pDH2puTntcL2guOz
 2yJCTXPVhofqXCyf0UEjoLwtGoYwhig9NpMhGBWqTFDgosJuMsDR8J8dAsTw6DtYeL1I
 Zu8U37URNB9vXVWnUho8pyhxmZD1IkH9h4235HJ1LDBy+OGKPASwydYTco5PJWLDdp/J
 vD8MtRU3t5CGtINggdN/zftQnDo/ZSxmrXPnxWq5AYbc3KmQQJ4tYg/sc1A0XTB9puZN
 tp/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LwH8+9TmdxKVhlCVaaCYxk3k88Dvv0DugODW54+nIug=;
 b=DJoJIE9pGYqA/SXITbaEqe2U3ZPFY/6Ainoe26+Wnks68Cb6ISOs2nSTHGAVVHK3ie
 paskFgfdQTsvAa7X/nZ7MdbJXJ9o1Yl7/6xBhQaKPteoaZ5sCEFT4bqFRmwMnLuOLuKw
 6yps7Vq8TAXNQxls+3ahW47zqBzzl4IHq/1txDpWCYuWKAEtJ8yUYAV8rEbywXpHatzO
 jhowTfHyzwB1/hlyhNZbaix2QEaToVzgU1xWRCljR7L4sgraDuPaRWWlWXGmCfSuDfSY
 MglNXARbXtux4VaiZXjMI7GJ1yElvsu0RdZQc0LJaLsaa75D1vGtXT3ZkWijN+vRV0sb
 TWSA==
X-Gm-Message-State: AOAM532/qqRZOOvf8emDz3oInVTIKlIErPVdd9e2Iqnrvis6ijxUTMOZ
 DWHCZOhQRcTYDpk9ARhyBE5UhKDT3KE=
X-Google-Smtp-Source: ABdhPJxNrMJ2VlqMTGMWDy+08OuajudTUI3vXTve8g1nUSLkpydhuL7hsZ9WwC0K8Y8cBasXJNoMnA==
X-Received: by 2002:a05:6402:518d:: with SMTP id
 q13mr31255419edd.313.1615827991177; 
 Mon, 15 Mar 2021 10:06:31 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:31 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 28/57] Staging: rtl8723bs: fix spaces in odm_HWConfig.h
Date: Mon, 15 Mar 2021 18:05:49 +0100
Message-Id: <20210315170618.2566-29-marcocesati@gmail.com>
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
    #125: FILE: ./hal/odm_HWConfig.h:125:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #131: FILE: ./hal/odm_HWConfig.h:131:
    +enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #134: FILE: ./hal/odm_HWConfig.h:134:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #140: FILE: ./hal/odm_HWConfig.h:140:
    +	struct DM_ODM_T * pDM_Odm, enum ODM_BB_Config_Type ConfigType

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #144: FILE: ./hal/odm_HWConfig.h:144:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #150: FILE: ./hal/odm_HWConfig.h:150:
    +s32 odm_SignalScaleMapping(struct DM_ODM_T * pDM_Odm, s32 CurrSig);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
index d4d53839a3f9..deec2e71bd49 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
@@ -122,31 +122,31 @@ struct PHY_STATUS_RPT_8812_T {
 
 
 void ODM_PhyStatusQuery(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	struct odm_phy_info *pPhyInfo,
 	u8 *pPhyStatus,
 	struct odm_packet_info *pPktinfo
 );
 
-enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T * pDM_Odm);
+enum HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(struct DM_ODM_T *pDM_Odm);
 
 enum HAL_STATUS ODM_ConfigRFWithHeaderFile(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	enum ODM_RF_Config_Type ConfigType,
 	enum ODM_RF_RADIO_PATH_E eRFPath
 );
 
 enum HAL_STATUS ODM_ConfigBBWithHeaderFile(
-	struct DM_ODM_T * pDM_Odm, enum ODM_BB_Config_Type ConfigType
+	struct DM_ODM_T *pDM_Odm, enum ODM_BB_Config_Type ConfigType
 );
 
 enum HAL_STATUS ODM_ConfigFWWithHeaderFile(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	enum ODM_FW_Config_Type ConfigType,
 	u8 *pFirmware,
 	u32 *pSize
 );
 
-s32 odm_SignalScaleMapping(struct DM_ODM_T * pDM_Odm, s32 CurrSig);
+s32 odm_SignalScaleMapping(struct DM_ODM_T *pDM_Odm, s32 CurrSig);
 
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
