Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB0333AFC7
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:17:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A61194019A;
	Mon, 15 Mar 2021 10:17:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VMnDafFTdsS; Mon, 15 Mar 2021 10:17:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A1A640139;
	Mon, 15 Mar 2021 10:17:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B4A31BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 788BC4016B
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dPB_pAKtVXih for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:16:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBBF640172
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:16:51 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 j4-20020a05600c4104b029010c62bc1e20so19106155wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=58hGSBX7H8nGOBRskBWyk16Oz7UBORL1R+Y5nIDeG8I=;
 b=l+16VG6p0qdrMsxf2YNawvIlC9jdxD2LN3IKbdk2wdjI71Hhpc5ek30tdiao0bsfF3
 6m8Lc4MYyy6P4m5pn2exxc6ZzkRk2sEpSVUVTaMJM12CsYU34DamkegIskhw87xR1Xhr
 oqiwJdEUm9hNqqZdrVEv5HoL7KXZwih6jQPixKP3xco4Bp89lSoHtS+O/U34vexZaQvJ
 2X35wz5STY9JmDvf4GpABg+AOmVVgWZx4xkVYp3+iFxFL6/EWSOycOSn0l3oSEqXLthc
 0HjwwUPmm7qvIxM9ULzLdJG9q+lGhwxfTxFmKJy1D+9XFkUxK+1m7QwfZg3sAvl3At+u
 5ocg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=58hGSBX7H8nGOBRskBWyk16Oz7UBORL1R+Y5nIDeG8I=;
 b=DPXk6F6psW3jfE9/MBMS8j+r24yIeKJ3+N6TpsrV3CgQ1VrIac/7jGfb+S5pb5mDhM
 xz1UBcZJj/gFLWwqlQUeiqt4rv6LF7HbWo+mNE58/nDQoUBbOLbYT7Ncj9UQfq5VKX55
 NRYNlOLujtRUxKgkuLpGcL30ohbSXLgSNQawoXryxtsTaZCybvDfN5FMlXvgHcz0uM7z
 YBSHgc6W+AmWF2kZZ5n+DPlBCOGki0Ca0TIxzStAsnq8/4b/SSe2NSpqHjEvikFbzPf9
 eefzk8cGgmM3bZvZbQoa2ne3fn5HFxg7VEvSJeeggcV9GtMQuZACgEtt1gr7C/c7Dpf+
 nioA==
X-Gm-Message-State: AOAM533Oe5ahVBbLMIt1NARQhzQIrQuJBJu1G/c674lQHnbqeJDskd8f
 Sp7WInEQeybWrDuFoPHm+MeHvgYVrLs=
X-Google-Smtp-Source: ABdhPJyhDkqMcV8NQB0wZZj0PhdLbGGZJhKGoi7aO8kEJyA6JWBgoMPxyQxxahZ9pSkj6v2Y9wAVgA==
X-Received: by 2002:a1c:2288:: with SMTP id i130mr25239574wmi.62.1615803410083; 
 Mon, 15 Mar 2021 03:16:50 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id z2sm17815581wrv.47.2021.03.15.03.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:16:49 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:16:47 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_CHECK_BT_HANG
Message-ID: <e132af0723b34e1ae8a0c4fd6570e45c7bb1402c.1615801722.git.fabioaiuto83@gmail.com>
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
CONFIG_CHECK_BT_HANG

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 31 -------------------
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  |  7 -----
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |  7 -----
 3 files changed, 45 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 9f059fb78c7d..5854590e5811 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4421,34 +4421,3 @@ void rtl8723b_stop_thread(struct adapter *padapter)
 	}
 #endif
 }
-
-#if defined(CONFIG_CHECK_BT_HANG)
-extern void check_bt_status_work(void *data);
-void rtl8723bs_init_checkbthang_workqueue(struct adapter *adapter)
-{
-	adapter->priv_checkbt_wq = alloc_workqueue("sdio_wq", 0, 0);
-	INIT_DELAYED_WORK(&adapter->checkbt_work, (void *)check_bt_status_work);
-}
-
-void rtl8723bs_free_checkbthang_workqueue(struct adapter *adapter)
-{
-	if (adapter->priv_checkbt_wq) {
-		cancel_delayed_work_sync(&adapter->checkbt_work);
-		flush_workqueue(adapter->priv_checkbt_wq);
-		destroy_workqueue(adapter->priv_checkbt_wq);
-		adapter->priv_checkbt_wq = NULL;
-	}
-}
-
-void rtl8723bs_cancle_checkbthang_workqueue(struct adapter *adapter)
-{
-	if (adapter->priv_checkbt_wq)
-		cancel_delayed_work_sync(&adapter->checkbt_work);
-}
-
-void rtl8723bs_hal_check_bt_hang(struct adapter *adapter)
-{
-	if (adapter->priv_checkbt_wq)
-		queue_delayed_work(adapter->priv_checkbt_wq, &(adapter->checkbt_work), 0);
-}
-#endif
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index d0e5b482f382..82b54131c9ec 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1420,11 +1420,4 @@ void rtl8723bs_set_hal_ops(struct adapter *padapter)
 	pHalFunc->hal_xmit = &rtl8723bs_hal_xmit;
 	pHalFunc->mgnt_xmit = &rtl8723bs_mgnt_xmit;
 	pHalFunc->hal_xmitframe_enqueue = &rtl8723bs_hal_xmitframe_enqueue;
-
-#if defined(CONFIG_CHECK_BT_HANG)
-	pHalFunc->hal_init_checkbthang_workqueue = &rtl8723bs_init_checkbthang_workqueue;
-	pHalFunc->hal_free_checkbthang_workqueue = &rtl8723bs_free_checkbthang_workqueue;
-	pHalFunc->hal_cancle_checkbthang_workqueue = &rtl8723bs_cancle_checkbthang_workqueue;
-	pHalFunc->hal_checke_bt_hang = &rtl8723bs_hal_check_bt_hang;
-#endif
 }
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index 0f787ec44b5b..6449238fb2a5 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -240,13 +240,6 @@ void _8051Reset8723(struct adapter *padapter);
 void rtl8723b_start_thread(struct adapter *padapter);
 void rtl8723b_stop_thread(struct adapter *padapter);
 
-#if defined(CONFIG_CHECK_BT_HANG)
-void rtl8723bs_init_checkbthang_workqueue(struct adapter *adapter);
-void rtl8723bs_free_checkbthang_workqueue(struct adapter *adapter);
-void rtl8723bs_cancle_checkbthang_workqueue(struct adapter *adapter);
-void rtl8723bs_hal_check_bt_hang(struct adapter *adapter);
-#endif
-
 int FirmwareDownloadBT(struct adapter *adapter, struct rt_firmware *firmware);
 
 void CCX_FwC2HTxRpt_8723b(struct adapter *padapter, u8 *pdata, u8 len);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
