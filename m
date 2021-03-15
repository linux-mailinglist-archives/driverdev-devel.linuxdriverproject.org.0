Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D00BC33AFBF
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:15:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 318E5834BA;
	Mon, 15 Mar 2021 10:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yg3xTxWhqgAl; Mon, 15 Mar 2021 10:15:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02843833DB;
	Mon, 15 Mar 2021 10:15:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 847F61BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 71A15833DB
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H7ZHJdeVwElP for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:15:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F0E4833CA
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:15:44 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id 61so5378980wrm.12
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9SJsmNFn3+XibLj1Vrrh5Youe2JM8d55xgkNdLMqbXE=;
 b=kzDVr+6SYTF/mBaBMvBXA8iJLBC94bEKer0hErOnZEEc2n6UlYjblkzOQLkjuT7vuN
 NnlzC3K8Ea7a7xdYk8X2c0wteLKJ6mZXhBgx/rXI/ef2Q4bVqUmZLJhKcOWLANmRqE89
 uxufFFXOo4OmgI7mcHpSftghaxKa3DE+PBZUVhm+e3W3En4xRDORcnb2y+1W9ankA/t5
 rUGW/aV5RlA1X9dj4MGei7ctK9tndev+fRa427E4d/lAVXuzuYFBC20UEV+HqWuVXhNh
 /a2+dO1N/pVU8mUKRLTQviYxGi90nJrvrZy8aSQdhl6QTa7XjiPXcoNVby+zSY7DuUvg
 vFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9SJsmNFn3+XibLj1Vrrh5Youe2JM8d55xgkNdLMqbXE=;
 b=GAHdV3mWcpAIZkfvhpM2yye3S+IRfuN4bptW6T5r9iNIs8walQ6CEbRDulDLtZKpV9
 cV24U0aES2Ly/OHZQtjZYnt+x8cIbeqZzaBR7UsLw7a2TdhEO1/zLK/qnh5FqfwY4QrJ
 0fKg3LQ3SnIeS1yExXKB8KwhAPNzP+SyQH9F1wnlkcudJZm8xfcNd2B2hQpDWd3BDf+/
 xUe/+6AfrXW/l8U1eStOK8BGh3HmdSdkMNCcgYSZTqzkkuhUJU9qpdTB/FPkWT0wQwxj
 +166ipl137+NiuXP5OlFKgFvC48qTb2oj1a0AMsSP3pezh4IiN+UWDaqSqgXpg1TwjDs
 1p0Q==
X-Gm-Message-State: AOAM5336iePWEKjrWabxqaF7vlfPPV7+rXJcW731e3UNEAem+awANFMZ
 BN/Ev+F9Xib7a9yNUgrnnko=
X-Google-Smtp-Source: ABdhPJxj2/ewpYaxSLDUgUlrY0wganhs0zEM7NeRNLhR5jAn4aHcX486yDcjeNDVZXtqq/J6Jd/ytg==
X-Received: by 2002:a5d:6290:: with SMTP id k16mr25470904wru.177.1615803342602; 
 Mon, 15 Mar 2021 03:15:42 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id e1sm18996902wrd.44.2021.03.15.03.15.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:15:42 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:15:39 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_BACKGROUND_NOISE_MONITOR
Message-ID: <2872c6f848b8b7aa0dc2d0399123d798f4b18820.1615801722.git.fabioaiuto83@gmail.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615801721.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_BACKGROUND_NOISE_MONITOR

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 12 -----
 drivers/staging/rtl8723bs/hal/hal_com.c       | 35 -------------
 drivers/staging/rtl8723bs/include/hal_com.h   | 10 ----
 drivers/staging/rtl8723bs/include/hal_data.h  |  5 --
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 50 +------------------
 5 files changed, 1 insertion(+), 111 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 5d0611c5119b..e60a2ed32de5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -4211,18 +4211,6 @@ void site_survey(struct adapter *padapter)
 		channel_scan_time_ms = pmlmeext->chan_scan_time;
 
 		set_survey_timer(pmlmeext, channel_scan_time_ms);
-#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-		{
-			struct noise_info info;
-
-			info.bPauseDIG = false;
-			info.IGIValue = 0;
-			info.max_time = channel_scan_time_ms/2;/* ms */
-			info.chan = survey_channel;
-			rtw_hal_set_odm_var(padapter, HAL_ODM_NOISE_MONITOR, &info, false);
-		}
-#endif
-
 	} else {
 
 		/* 	channel number is 0 or this channel is not valid. */
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 7c65ec60a982..bf07251a07d7 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1262,20 +1262,6 @@ void GetHalODMVar(
 )
 {
 	switch (eVariable) {
-#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-	case HAL_ODM_NOISE_MONITOR:
-		{
-			struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-			u8 chan = *(u8 *)pValue1;
-			*(s16 *)pValue2 = pHalData->noise[chan];
-			#ifdef DBG_NOISE_MONITOR
-			DBG_8192C("### Noise monitor chan(%d)-noise:%d (dBm) ###\n",
-				chan, pHalData->noise[chan]);
-			#endif
-
-		}
-		break;
-#endif/* ifdef CONFIG_BACKGROUND_NOISE_MONITOR */
 	default:
 		break;
 	}
@@ -1313,27 +1299,6 @@ void SetHalODMVar(
 	case HAL_ODM_WIFI_DISPLAY_STATE:
 			ODM_CmnInfoUpdate(podmpriv, ODM_CMNINFO_WIFI_DISPLAY, bSet);
 		break;
-	#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-	case HAL_ODM_NOISE_MONITOR:
-		{
-			struct noise_info *pinfo = pValue1;
-
-			#ifdef DBG_NOISE_MONITOR
-			DBG_8192C("### Noise monitor chan(%d)-bPauseDIG:%d, IGIValue:0x%02x, max_time:%d (ms) ###\n",
-				pinfo->chan, pinfo->bPauseDIG, pinfo->IGIValue, pinfo->max_time);
-			#endif
-
-			pHalData->noise[pinfo->chan] = ODM_InbandNoise_Monitor(podmpriv, pinfo->bPauseDIG, pinfo->IGIValue, pinfo->max_time);
-			DBG_871X("chan_%d, noise = %d (dBm)\n", pinfo->chan, pHalData->noise[pinfo->chan]);
-			#ifdef DBG_NOISE_MONITOR
-			DBG_871X("noise_a = %d, noise_b = %d  noise_all:%d\n",
-				podmpriv->noise_level.noise[ODM_RF_PATH_A],
-				podmpriv->noise_level.noise[ODM_RF_PATH_B],
-				podmpriv->noise_level.noise_all);
-			#endif
-		}
-		break;
-	#endif/* ifdef CONFIG_BACKGROUND_NOISE_MONITOR */
 
 	default:
 		break;
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index c4b83eb16326..8669155dcddc 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -286,14 +286,4 @@ void SetHalODMVar(
 	enum HAL_ODM_VARIABLE		eVariable,
 	void *				pValue1,
 	bool					bSet);
-
-#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-struct noise_info {
-	u8 bPauseDIG;
-	u8 IGIValue;
-	u32 max_time;/* ms */
-	u8 chan;
-};
-#endif
-
 #endif /* __HAL_COMMON_H__ */
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 8f5de747ae4e..8e75a334c60b 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -439,11 +439,6 @@ struct hal_com_data {
 	/*  Interrupt related register information. */
 	u32 		SysIntrStatus;
 	u32 		SysIntrMask;
-
-#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-	s16 noise[ODM_MAX_CHANNEL_NUM];
-#endif
-
 };
 
 #define GET_HAL_DATA(__padapter)	((struct hal_com_data *)((__padapter)->HalData))
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index a52d04582aa1..b6ae7dfc51fe 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -313,12 +313,7 @@ static char *translate_scan(struct adapter *padapter,
 	/* Add quality statistics */
 	iwe.cmd = IWEVQUAL;
 	iwe.u.qual.updated = IW_QUAL_QUAL_UPDATED | IW_QUAL_LEVEL_UPDATED
-	#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-		| IW_QUAL_NOISE_UPDATED
-	#else
-		| IW_QUAL_NOISE_INVALID
-	#endif
-	;
+		| IW_QUAL_NOISE_INVALID;
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED) == true &&
 		is_same_network(&pmlmepriv->cur_network.network, &pnetwork->network, 0)) {
@@ -344,15 +339,7 @@ static char *translate_scan(struct adapter *padapter,
 
 	iwe.u.qual.qual = (u8)sq;   /*  signal quality */
 
-	#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-	{
-		s16 tmp_noise = 0;
-		rtw_hal_get_odm_var(padapter, HAL_ODM_NOISE_MONITOR, &(pnetwork->network.Configuration.DSConfig), &(tmp_noise));
-		iwe.u.qual.noise = tmp_noise;
-	}
-	#else
 	iwe.u.qual.noise = 0; /*  noise level */
-	#endif
 
 	/* DBG_871X("iqual =%d, ilevel =%d, inoise =%d, iupdated =%d\n", iwe.u.qual.qual, iwe.u.qual.level , iwe.u.qual.noise, iwe.u.qual.updated); */
 
@@ -3076,23 +3063,6 @@ static int rtw_dbg_port(struct net_device *dev,
 						}
 					}
 					break;
-#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-				case 0x1e:
-					{
-						struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-						PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
-						u8 chan = rtw_get_oper_ch(padapter);
-						DBG_871X("===========================================\n");
-						ODM_InbandNoise_Monitor(pDM_Odm, true, 0x1e, 100);
-						DBG_871X("channel(%d), noise_a = %d, noise_b = %d , noise_all:%d\n",
-							chan, pDM_Odm->noise_level.noise[ODM_RF_PATH_A],
-							pDM_Odm->noise_level.noise[ODM_RF_PATH_B],
-							pDM_Odm->noise_level.noise_all);
-						DBG_871X("===========================================\n");
-
-					}
-					break;
-#endif
 				case 0x23:
 					{
 						DBG_871X("turn %s the bNotifyChannelChange Variable\n", (extra_arg == 1)?"on":"off");
@@ -4734,24 +4704,6 @@ static struct iw_statistics *rtw_get_wireless_stats(struct net_device *dev)
 		#endif
 
 		tmp_qual = padapter->recvpriv.signal_qual;
-#ifdef CONFIG_BACKGROUND_NOISE_MONITOR
-		if (rtw_linked_check(padapter)) {
-			struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-			struct noise_info info;
-			info.bPauseDIG = true;
-			info.IGIValue = 0x1e;
-			info.max_time = 100;/* ms */
-			info.chan = pmlmeext->cur_channel ;/* rtw_get_oper_ch(padapter); */
-			rtw_ps_deny(padapter, PS_DENY_IOCTL);
-			LeaveAllPowerSaveModeDirect(padapter);
-
-			rtw_hal_set_odm_var(padapter, HAL_ODM_NOISE_MONITOR, &info, false);
-			/* ODM_InbandNoise_Monitor(podmpriv, true, 0x20, 100); */
-			rtw_ps_deny_cancel(padapter, PS_DENY_IOCTL);
-			rtw_hal_get_odm_var(padapter, HAL_ODM_NOISE_MONITOR, &(info.chan), &(padapter->recvpriv.noise));
-			DBG_871X("chan:%d, noise_level:%d\n", info.chan, padapter->recvpriv.noise);
-		}
-#endif
 		tmp_noise = padapter->recvpriv.noise;
 		DBG_871X("level:%d, qual:%d, noise:%d, rssi (%d)\n", tmp_level, tmp_qual, tmp_noise, padapter->recvpriv.rssi);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
