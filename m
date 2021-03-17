Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 275CE33FAFB
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:23:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 904AF4EDF5;
	Wed, 17 Mar 2021 22:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5K9aTkLzdc1Y; Wed, 17 Mar 2021 22:23:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79F2B4EDD3;
	Wed, 17 Mar 2021 22:23:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26E8E1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C4B84EDDA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LTMdwtJVyb8M for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84B804EDD3
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id b16so4206477eds.7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=kFTkhD3wnxFujmzJ6JTjCToDyFHEuNA1gRtlGP6a4sk=;
 b=V+EVa1B3FXO4yUWGdDz5f8aV2KHmqq229Ly0n0QrX+DS0UGi+ULMviPARrHRCvUtm9
 Gbn28twbQdm5onifXPUBVZ8LgxrhxiFuVBfdH/shKHF9o5GxIKhcG3SXuTk8kzgkLZ7C
 QVkIItIFEqlKaCOQkx1rKY5YUQ1u6i/AKmCFmuPbnyn13ajalj0EMVScVbwDeCeygfae
 da3of7uHBnNfWOJGUE/6fw7o/QKZO6XeNZgpCCaDPYGiKX5ijcGfpdmlfkBaRoKF6A/j
 8tad+UaV9Eli6Djmq9v8CKFZyw50pgHBuGlxnNxvCB+PXKx7WQVy+rlJa5oLN2ajLyhC
 SJig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kFTkhD3wnxFujmzJ6JTjCToDyFHEuNA1gRtlGP6a4sk=;
 b=Gkp2v5DFxl4nawiVPsIdryghlgOcv3oQTgEwQV++HlD021AP4w9pU3EMGodmogfZOm
 AlwsjTblEAgRy/2I2B9T9U/GfuF/GB712eisWfdOXeA4L6ERWSMGrxuhyRaF14L5unTl
 xA29UAedbmkBznUmDSkaE9oXbnjaUOixSKlBsQSpFnTO8S3ck+9hFg0SYtzvFSdBYxLx
 PMxQ4PJAt34Vs/8NRlASEDKXQcl0Y0KIhx2rnGjXArZSRN3Nr84ZIsSMFyxjz8rTQHbf
 DMwWIguWCJhlJn0MUoZItV2GHqzkA67JsNiFd6lzV91Ay03Mu/WT2C7lhzn/T6xOFHKr
 4ykw==
X-Gm-Message-State: AOAM533O2SDUzWhFXbQJ90hZOxcm5Y+/GQt00/RflNYP/AdprdJQR558
 Ow6JVtfPTncV2+GV9mTSs50RnlHWojo=
X-Google-Smtp-Source: ABdhPJwqfUiuFqPm33oTd3RJhOB1gH2kwMC+YRbgvzl65C8zwtmsBIVaQ+DjffBazueFABbGTEUz5Q==
X-Received: by 2002:a05:6402:12cf:: with SMTP id
 k15mr43570571edx.192.1616019684740; 
 Wed, 17 Mar 2021 15:21:24 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:24 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 09/43] Staging: rtl8723bs: fix names in rtw_mp.h
Date: Wed, 17 Mar 2021 23:20:56 +0100
Message-Id: <20210317222130.29528-10-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/rtw_mp.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_mp.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index 8b6e4e9578f9..48e5915e0a7a 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -49,7 +49,7 @@ struct mp_tx {
 #define MP_MAX_LINES_BYTES	256
 
 typedef void (*MPT_WORK_ITEM_HANDLER)(void *Adapter);
-struct MPT_CONTEXT {
+struct mpt_context {
 	/*  Indicate if we have started Mass Production Test. */
 	bool			bMassProdTest;
 
@@ -257,12 +257,12 @@ struct mp_priv {
 	bool bSetRxBssid;
 	bool bTxBufCkFail;
 
-	struct MPT_CONTEXT MptCtx;
+	struct mpt_context MptCtx;
 
 	u8 *TXradomBuffer;
 };
 
-struct IOCMD_STRUCT {
+struct iocmd_struct {
 	u8 cmdclass;
 	u16 value;
 	u8 index;
@@ -286,7 +286,7 @@ struct bb_reg_param {
 #define BB_REG_BASE_ADDR		0x800
 
 /* MP variables */
-enum MP_MODE {
+enum mp_mode {
 	MP_OFF,
 	MP_ON,
 	MP_ERR,
@@ -303,7 +303,7 @@ enum MP_MODE {
 extern u8 mpdatarate[NumRates];
 
 /* MP set force data rate base on the definition. */
-enum MPT_RATE_INDEX {
+enum mpt_rate_index {
 	/* CCK rate. */
 	MPT_RATE_1M = 0,	/* 0 */
 	MPT_RATE_2M,
@@ -363,13 +363,13 @@ enum MPT_RATE_INDEX {
 
 #define MAX_TX_PWR_INDEX_N_MODE 64	/*  0x3F */
 
-enum POWER_MODE {
+enum power_mode {
 	POWER_LOW = 0,
 	POWER_NORMAL
 };
 
 /*  The following enumeration is used to define the value of Reg0xD00[30:28] or JaguarReg0x914[18:16]. */
-enum OFDM_TX_MODE {
+enum ofdm_tx_mode {
 	OFDM_ALL_OFF		= 0,
 	OFDM_ContinuousTx	= 1,
 	OFDM_SingleCarrier	= 2,
@@ -391,14 +391,14 @@ enum OFDM_TX_MODE {
 #define Mac_HT_FasleAlarm		0x90000000
 #define Mac_DropPacket			0xA0000000
 
-enum ENCRY_CTRL_STATE {
+enum encry_ctrl_state {
 	HW_CONTROL,		/* hw encryption& decryption */
 	SW_CONTROL,		/* sw encryption& decryption */
 	HW_ENCRY_SW_DECRY,	/* hw encryption & sw decryption */
 	SW_ENCRY_HW_DECRY	/* sw encryption & hw decryption */
 };
 
-enum MPT_TXPWR_DEF {
+enum mpt_txpwr_def {
 	MPT_CCK,
 	MPT_OFDM, /*  L and HT OFDM */
 	MPT_VHT_OFDM
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
