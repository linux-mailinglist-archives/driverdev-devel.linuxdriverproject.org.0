Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 830DB33D771
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:30:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAE934EC84;
	Tue, 16 Mar 2021 15:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P8uIbWmJDczj; Tue, 16 Mar 2021 15:30:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 839914EC5A;
	Tue, 16 Mar 2021 15:30:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E2BE1BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BF134EC5A
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DzfFVrExdOov for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:30:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 293D34EBBD
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:30:24 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id e9so7655612wrw.10
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8Dp/YU7BjP7tuvO83iJhuaJJVbiqvNcU3OcxU2f06ms=;
 b=rKVhkwohaMSU3XoibbktudpzsJydYpm1Y/8dn31BNjp94HXr0OCQHKArMfYerOSP2p
 UftA4wD52BcLy6KesQ69JQYu+JtDT0Nt0Nr97ruTS2WgfC8TyqzHkZb7qBwjdzJV5HmT
 5pby4HS0Pdb8T94WyFvycqHXrsnx7XDAppg1PE+RVaRQLRTe1q8x3LCC8CaSFzGm7WYY
 BIMnvyKYB1vwaEfetyV8Hjae1GheKL1gKg6BtbjWENa1FTMoUzrpPH5kErK5hAqj56WX
 xYgG6t10X9WxjzH5KBb7FdKyy+rbR9cllcwe1Z21C3LQR9TP7IhYu6Fe7YhtEeSSXUDZ
 xmEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8Dp/YU7BjP7tuvO83iJhuaJJVbiqvNcU3OcxU2f06ms=;
 b=INfx7N9DTAOKWnZEixciIO0Shgs1OshKQDVnaPXuCuL/SuX78p3Igj6wuhKgj6ERIK
 /i90ZQd5N4jN5F7vUeJP9XDDPAs2eOTZpkQpZe9byeynqr95pjTg8r48U4zyzOvnZHI6
 pp+mMGuPW8dgn1tYWwOg//eHuZ7fh5EZIaef1pGaDLQsJByBdJG/t6MmbgDMLgHnAwtn
 Ffya0f36KQ3vL67ejGaVsfFMM4Qhl0QcdrsTSFsQhBxeQwBj03CNBKP3gd6wz1iBndHa
 K76v6+JD0zruoUaLDO6IaBxJ1r9+yaVO6zJ0TeVipQrVsRbTdWxrpKescM74Fv/oON+q
 1k9w==
X-Gm-Message-State: AOAM5334pEiZeO67yuLqXwtPl9v+NglHxQ5JWtwuci/x1sBDOzKZrMlT
 AS7mZ8S4HYm+7jodSEyfSzw=
X-Google-Smtp-Source: ABdhPJz0PbsHJQqTs7QXhf3BH0KiecR5QtTyhYrhaH+fB4H0yE4v800v9Dl5Bavbr2n9HU8AvN7ceA==
X-Received: by 2002:a5d:534e:: with SMTP id t14mr5494698wrv.202.1615908622424; 
 Tue, 16 Mar 2021 08:30:22 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id v2sm333394wmj.1.2021.03.16.08.30.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:30:22 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:30:19 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_CMCC_TEST
Message-ID: <c5f84efa3c593a897f0498568a41d8638f7f0f8a.1615907632.git.fabioaiuto83@gmail.com>
References: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615907632.git.fabioaiuto83@gmail.com>
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
CONFIG_CMCC_TEST

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 6f08af686f9d..5904b7f9f134 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2115,16 +2115,6 @@ static void UpdateHalRAMask8723B(struct adapter *padapter, u32 mac_id, u8 rssi_l
 	rate_bitmap = hal_btcoex_GetRaMask(padapter);
 	mask &= ~rate_bitmap;
 
-#ifdef CONFIG_CMCC_TEST
-	if (pmlmeext->cur_wireless_mode & WIRELESS_11G) {
-		if (mac_id == 0) {
-			DBG_871X("CMCC_BT update raid entry, mask = 0x%x\n", mask);
-			mask &= 0xffffff00; /* disable CCK & <24M OFDM rate for 11G mode for CMCC */
-			DBG_871X("CMCC_BT update raid entry, mask = 0x%x\n", mask);
-		}
-	}
-#endif
-
 	if (pHalData->fw_ractrl) {
 		rtl8723b_set_FwMacIdConfig_cmd(padapter, mac_id, psta->raid, psta->bw_mode, shortGIrate, mask);
 	}
@@ -3082,10 +3072,6 @@ static void rtl8723b_fill_default_txdesc(
 				ptxdesc->data_ldpc = 1;
 			if (pattrib->stbc)
 				ptxdesc->data_stbc = 1;
-
-#ifdef CONFIG_CMCC_TEST
-			ptxdesc->data_short = 1; /* use cck short premble */
-#endif
 		} else {
 			/*  EAP data packet and ARP packet. */
 			/*  Use the 1M data rate to send the EAP/ARP packet. */
@@ -3767,11 +3753,6 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 		BrateCfg &= rrsr_2g_allow_mask;
 		masked = BrateCfg;
 
-		#ifdef CONFIG_CMCC_TEST
-		BrateCfg |= (RRSR_11M|RRSR_5_5M|RRSR_1M); /* use 11M to send ACK */
-		BrateCfg |= (RRSR_24M|RRSR_18M|RRSR_12M); /* CMCC_OFDM_ACK 12/18/24M */
-		#endif
-
 		/* IOT consideration */
 		if (mlmext_info->assoc_AP_vendor == HT_IOT_PEER_CISCO) {
 			/* if peer is cisco and didn't use ofdm rate, we enable 6M ack */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
