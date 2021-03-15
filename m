Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 958E033AFC0
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:16:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2057D834C7;
	Mon, 15 Mar 2021 10:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3dqWGyJUOI8F; Mon, 15 Mar 2021 10:16:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EE0C83466;
	Mon, 15 Mar 2021 10:16:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA4A21BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA0AB40172
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NtfQp2cuRpe7 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:15:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FF6D40139
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:15:55 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id t9so5376222wrn.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mi7e+Xch9BQgQv2YvbhHGhbW0OiQyFlrohsnv1hS94Y=;
 b=REWKGj6m3kb/GyXtsobkUpv2GEXwPZjX3isS2KXC9X/cECHhgUyE1gP7aFhaDXaDZi
 MJV1axMnCO16gvugOTcSz/Li+sLWllz+QoI0nJtXc3SfP1NFm8eVdC65vZh4zfAd04nX
 14OSku9F744aJJUsGP3owil1If8MxaIcrQFy970/430Gm57+hFqjiy4+4xkDryq+U21i
 nZUTocpC+wNa5PZQfQF+WiZ6XJU15EJ7rQHJFIiWk898PoAmjZrFxbFRh78IH1G7JIZt
 R9N2DqSIszkWE85B2WKZvXNxiiTQq642i41KJRbLp3xveGE8DBJv0Q/FH6boOw6jDMW9
 4bcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mi7e+Xch9BQgQv2YvbhHGhbW0OiQyFlrohsnv1hS94Y=;
 b=i+b/Kz1n/VbYULHQPp6di1ulKxGiKnxy1JTUflTBVALqP7uj7jRT9STENcKWjj5M+7
 Hbc1+KB7KVBG8FXL13IGE5slxzsjoxnxuzWKsyi5mwrWF6RvHRybJBZh0/PE/8Kl/XdA
 l95qvfJRY20f/oRCzzZscdThS/LIgGzt4T4VTadi234PY18o9d9wMZEciAgxz5NEdXD+
 YLzpxJ6WcE3tJ054hbXuiHpvGPuSdqOOx7jjKudqAStgQsZ8l9rZ336uAzzdnllghngH
 o9u6EagP4fJrFsaVRWxYeB4um8DXzSnDCD34wIq7B/z76t4zevGBxoVmmmJzbhBD0BIc
 ctzw==
X-Gm-Message-State: AOAM532FW/GO4apuxTbR4LIiS1JSYhScFPQr0Ilv0kIydny+aGptvXtm
 c6707Gq1TJC9U7ubte2djChaVmqKzNU=
X-Google-Smtp-Source: ABdhPJx/8YxmsHoRbvtqJX9wzUxsQJI7OgwOOUvXI8yRlEJ16PCNMAWt5g8TmJRgaLlc3G3WN9P0nw==
X-Received: by 2002:a5d:6049:: with SMTP id j9mr26212150wrt.117.1615803353354; 
 Mon, 15 Mar 2021 03:15:53 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id c11sm18621568wrm.67.2021.03.15.03.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:15:53 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:15:50 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_SKIP_SIGNAL_SCALE_MAPPING
Message-ID: <e21c0b175ba3d8e3310a1f7e94148c10dac7a63c.1615801722.git.fabioaiuto83@gmail.com>
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
CONFIG_SKIP_SIGNAL_SCALE_MAPPING

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |  9 --------
 drivers/staging/rtl8723bs/include/rtw_recv.h  |  5 -----
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 21 -------------------
 3 files changed, 35 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index de63e4a2932e..5f2f17b49173 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -226,19 +226,10 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 	/* UI BSS List signal strength(in percentage), make it good looking, from 0~100. */
 	/* It is assigned to the BSS List in GetValueFromBeaconOrProbeRsp(). */
 	if (isCCKrate) {
-#ifdef CONFIG_SKIP_SIGNAL_SCALE_MAPPING
-		pPhyInfo->SignalStrength = (u8)PWDB_ALL;
-#else
 		pPhyInfo->signal_strength = (u8)(odm_SignalScaleMapping(pDM_Odm, PWDB_ALL));/* PWDB_ALL; */
-#endif
 	} else {
 		if (rf_rx_num != 0) {
-#ifdef CONFIG_SKIP_SIGNAL_SCALE_MAPPING
-			total_rssi /= rf_rx_num;
-			pPhyInfo->signal_strength = (u8)total_rssi;
-#else
 			pPhyInfo->signal_strength = (u8)(odm_SignalScaleMapping(pDM_Odm, total_rssi /= rf_rx_num));
-#endif
 		}
 	}
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 484e9d62ef92..0a56c3a66ee8 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -512,14 +512,9 @@ static inline s32 translate_percentage_to_dbm(u32 SignalStrengthIndex)
 {
 	s32	SignalPower; /*  in dBm. */
 
-#ifdef CONFIG_SKIP_SIGNAL_SCALE_MAPPING
-	/*  Translate to dBm (x =y-100) */
-	SignalPower = SignalStrengthIndex - 100;
-#else
 	/*  Translate to dBm (x = 0.5y-95). */
 	SignalPower = (s32)((SignalStrengthIndex + 1) >> 1);
 	SignalPower -= 95;
-#endif
 
 	return SignalPower;
 }
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index b6ae7dfc51fe..d0e77465ad9a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -325,17 +325,7 @@ static char *translate_scan(struct adapter *padapter,
 	}
 
 
-	#ifdef CONFIG_SKIP_SIGNAL_SCALE_MAPPING
-	{
-		/* Do signal scale mapping when using percentage as the unit of signal strength, since the scale mapping is skipped in odm */
-
-		struct hal_com_data *pHal = GET_HAL_DATA(padapter);
-
-		iwe.u.qual.level = (u8)odm_SignalScaleMapping(&pHal->odmpriv, ss);
-	}
-	#else
 	iwe.u.qual.level = (u8)ss;/*  */
-	#endif
 
 	iwe.u.qual.qual = (u8)sq;   /*  signal quality */
 
@@ -4691,18 +4681,7 @@ static struct iw_statistics *rtw_get_wireless_stats(struct net_device *dev)
 		piwstats->qual.noise = 0;
 		/* DBG_871X("No link  level:%d, qual:%d, noise:%d\n", tmp_level, tmp_qual, tmp_noise); */
 	} else {
-		#ifdef CONFIG_SKIP_SIGNAL_SCALE_MAPPING
-		{
-			/* Do signal scale mapping when using percentage as the unit of signal strength, since the scale mapping is skipped in odm */
-
-			struct hal_com_data *pHal = GET_HAL_DATA(padapter);
-
-			tmp_level = (u8)odm_SignalScaleMapping(&pHal->odmpriv, padapter->recvpriv.signal_strength);
-		}
-		#else
 		tmp_level = padapter->recvpriv.signal_strength;
-		#endif
-
 		tmp_qual = padapter->recvpriv.signal_qual;
 		tmp_noise = padapter->recvpriv.noise;
 		DBG_871X("level:%d, qual:%d, noise:%d, rssi (%d)\n", tmp_level, tmp_qual, tmp_noise, padapter->recvpriv.rssi);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
