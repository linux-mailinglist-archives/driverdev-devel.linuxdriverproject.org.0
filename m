Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D659433AFC8
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:17:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6524C6F503;
	Mon, 15 Mar 2021 10:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MmCvTNFEDrFp; Mon, 15 Mar 2021 10:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86EC460707;
	Mon, 15 Mar 2021 10:17:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FC581BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E74283486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-jE6fnREH8u for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:17:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E12C83478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:17:02 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id o16so5378099wrn.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LHhMN1YGR0iqaipxc7BR00dcApJPdqJZdaOY7Fx6YMo=;
 b=DwILB34mOdPJkDR9my/JHGbgkxCyB4VBDIaWNewFFPLM7Y27y4PsQJaK7GXcHXZorx
 eQvCv22dOHDFWj3cQuS97ECY1fa3cGG+UDBbbe4p9Phlnq5w9DJGYrUsS+k3BSQ02hzP
 FXYBp50YBk87poF2768RYddQ7cLga8ncmuH9u/7FCjpWNlkbogcug/Lihk5HZkzQqDrX
 MY0Sd+gXd6uKH/tW0IkWyxdMYcesJfVy5yxORWKp+o6zbkRlTPoEReKLbPL+m6ZvoTxC
 +pLUr3Y9w557GYxbDSrfEb2qcModYfiopOrBFajQ0rI2vOy31BR8fON9q65MqrlulJgy
 rL7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LHhMN1YGR0iqaipxc7BR00dcApJPdqJZdaOY7Fx6YMo=;
 b=ovZRm9l4JUJSQAR7C0CuIAxOQekXplKKPY9gsqNNllNLIhw0taw5V498wSL3TFBoAO
 iwuDA+HHOcoKqbg2f+PbmXRH7RnAAT6njf1pr58z+qX4eh/N3ryiScMR0W5zD4ID/Z1s
 m1nBu77jw1o+fFwxg0bG4178QI3z2BpEkv25qeVDAW3Y10CiCoAqVgg2ju+sAiQoJvVd
 GaogRcQZcAuxYPhxkwblMfoluuPy7mBnk56JLeeWOGUHmwZwl7YFIwO0UZLehdEchP8g
 AbptKB3oql/LXS1B1LV6PK3kAFkwFursOeZLqdBDHbfJPQZPuhHN1oPQ1mKC17F+MFt8
 RSCg==
X-Gm-Message-State: AOAM532digyd2HDcyMRhaURIeiUMxNLl1dlhNHtXEOtMC9jmWA+qPbU5
 NGnzjsrbpqaeO2qM1ZDXqET3pBUWM0E=
X-Google-Smtp-Source: ABdhPJzOx00IiAPNbP5/QQf12m390irZGnb0eUfmGCx/3aJF9OAdiPeAP7SGu+/Mh1rlVw0SZyO4dA==
X-Received: by 2002:a5d:4286:: with SMTP id k6mr25954449wrq.278.1615803420922; 
 Mon, 15 Mar 2021 03:17:00 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id t8sm17799380wrr.10.2021.03.15.03.17.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:17:00 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:16:58 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_SDIO_TX_TASKLET
Message-ID: <e7f5f364d9f1f6ab271841b203c4de6c82ecfc9f.1615801722.git.fabioaiuto83@gmail.com>
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
CONFIG_SDIO_TX_TASKLET

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 4 ----
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c    | 8 --------
 drivers/staging/rtl8723bs/include/rtw_xmit.h      | 4 ----
 3 files changed, 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 5854590e5811..eddf01c71e24 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4398,19 +4398,16 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, v
 
 void rtl8723b_start_thread(struct adapter *padapter)
 {
-#ifndef CONFIG_SDIO_TX_TASKLET
 	struct xmit_priv *xmitpriv = &padapter->xmitpriv;
 
 	xmitpriv->SdioXmitThread = kthread_run(rtl8723bs_xmit_thread, padapter, "RTWHALXT");
 	if (IS_ERR(xmitpriv->SdioXmitThread)) {
 		RT_TRACE(_module_hal_xmit_c_, _drv_err_, ("%s: start rtl8723bs_xmit_thread FAIL!!\n", __func__));
 	}
-#endif
 }
 
 void rtl8723b_stop_thread(struct adapter *padapter)
 {
-#ifndef CONFIG_SDIO_TX_TASKLET
 	struct xmit_priv *xmitpriv = &padapter->xmitpriv;
 
 	/*  stop xmit_buf_thread */
@@ -4419,5 +4416,4 @@ void rtl8723b_stop_thread(struct adapter *padapter)
 		wait_for_completion(&xmitpriv->SdioXmitTerminate);
 		xmitpriv->SdioXmitThread = NULL;
 	}
-#endif
 }
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index a3bd9c2002c9..597cf3a88c51 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -124,10 +124,6 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
 	/* pxmitbuf->priv_data = NULL; */
 	rtw_free_xmitbuf(pxmitpriv, pxmitbuf);
 
-#ifdef CONFIG_SDIO_TX_TASKLET
-	tasklet_hi_schedule(&pxmitpriv->xmit_tasklet);
-#endif
-
 	return _FAIL;
 }
 
@@ -601,11 +597,7 @@ s32	rtl8723bs_hal_xmitframe_enqueue(
 
 		pxmitpriv->tx_drop++;
 	} else {
-#ifdef CONFIG_SDIO_TX_TASKLET
-		tasklet_hi_schedule(&pxmitpriv->xmit_tasklet);
-#else
 		complete(&pxmitpriv->SdioXmitStart);
-#endif
 	}
 
 	return err;
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index a6fb8be8c63a..b482821c9af8 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -412,13 +412,9 @@ struct	xmit_priv {
 
 	u8 wmm_para_seq[4];/* sequence for wmm ac parameter strength from large to small. it's value is 0->vo, 1->vi, 2->be, 3->bk. */
 
-#ifdef CONFIG_SDIO_TX_TASKLET
-	struct tasklet_struct xmit_tasklet;
-#else
 	void *SdioXmitThread;
 	struct completion SdioXmitStart;
 	struct completion SdioXmitTerminate;
-#endif /* CONFIG_SDIO_TX_TASKLET */
 
 	struct __queue free_xmitbuf_queue;
 	struct __queue pending_xmitbuf_queue;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
