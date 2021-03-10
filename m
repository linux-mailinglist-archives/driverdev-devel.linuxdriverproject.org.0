Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9683338EC
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 10:37:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C50FB6F732;
	Wed, 10 Mar 2021 09:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nEmjH1uEN0Uj; Wed, 10 Mar 2021 09:37:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C0C76F502;
	Wed, 10 Mar 2021 09:37:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 582E51BF97C
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 09:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53BA26F502
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 09:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCDY4nuUvxeH for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 09:37:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DFE160596
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 09:37:27 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id m9so27019997edd.5
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 01:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=e4STYJiOH6CI0B72d1jKJ9obYyNKz4PxFkj1uusbYyg=;
 b=bFQXbj7IiMuBjnpXbA5kjh5fixd5waIP/ex78MO902Y4GJWJVOBBC0e26pT0Br3pd3
 8DXn1b8ELue2rG0KvL9EKIiKNVYVeKIGv1T8Y242N/hVVllfD3YxGUc17D8mC9kjGG8P
 yHINgnUrYJ4t8Bnsu+tdqo3dZWwhHAR7aaLITXeMwREXg6yRIu0/sEiXKr3u4ZQ1OdBY
 YNjJ3+N8y73jbvxscfh/TG9o+FKl76ntA0AV4tOoL1lfYwIK6ip+gztreK5qeRvlFKxt
 q18HalBBsCOy+aTT2CrwVAsa66z7EXYthpxa5uVkaem/0cDtCn8CrGq2cnXJJQ9dlJIv
 /DkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=e4STYJiOH6CI0B72d1jKJ9obYyNKz4PxFkj1uusbYyg=;
 b=QvOScrwJiGyImIPdAW8ru/uUF+jiteCPtkSJuGVYssQzUXihVt6Hx8rYeGmIjlRkue
 SLj/iArgiIm2UXnN3enZjMi8LN8BqZgEMCRV/d+jFDpByoqWjSUhw7wBo0HRSXXk7r0A
 NKae2nQaw0h7g0CftzB/McTxizWDu4YZULv4ndvI+GLSB5cSacIjlZPuxlbahyB56aDp
 PnWYRZpKPUQr8hLQJg2nfb6OfwDGuxMm31hlTTzSz1Bnz41d0xs7I9YxygYZPjlyL94U
 gpAO4tj0qmzSIlljRgs7XTfZu+C14HY3gvwvI8seffRv01x4146k7WcS3jblCfW6rbHp
 Li5g==
X-Gm-Message-State: AOAM5304qZm0ZoY0oOJg4hOJ8y04tTh1knSJbjgPECK1GslsBauvVyJF
 laQHsBtP6NPDP80ISxFXXSo=
X-Google-Smtp-Source: ABdhPJw/p5085/+4VBj1rvRc1/3KOZnrNrQCAJweAtktcs47nMKvQKy5qEtuu81nnKUHR7qp8tT+Lg==
X-Received: by 2002:a05:6402:447:: with SMTP id
 p7mr2243972edw.89.1615369046056; 
 Wed, 10 Mar 2021 01:37:26 -0800 (PST)
Received: from agape.jhs ([5.171.81.73])
 by smtp.gmail.com with ESMTPSA id p3sm9588735ejd.7.2021.03.10.01.37.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 01:37:25 -0800 (PST)
Date: Wed, 10 Mar 2021 10:37:23 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8723bs: remove unused code block
Message-ID: <20210310093719.GA8646@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
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

Remove conditional code block checked by unused CONFIG_GPIO_WAKEUP

Cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  8 ---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  | 69 -------------------
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |  4 --
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  | 57 ---------------
 4 files changed, 138 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 86f31d98349a..0480e32701f0 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1183,11 +1183,6 @@ static void rtl8723b_set_FwWoWlanCtrl_Cmd(struct adapter *padapter, u8 bFuncEn)
 	u8 gpio_high_active = 0; /* 0: low active, 1: high active */
 	u8 magic_pkt = 0;
 
-#ifdef CONFIG_GPIO_WAKEUP
-	gpionum = WAKEUP_GPIO_IDX;
-	sdio_wakeup_enable = 0;
-#endif
-
 #ifdef CONFIG_PNO_SUPPORT
 	if (!ppwrpriv->wowlan_pno_enable)
 		magic_pkt = 1;
@@ -1358,9 +1353,6 @@ static void rtl8723b_set_FwAPWoWlanCtrl_Cmd(struct adapter *padapter, u8 bFuncEn
 	u8 gpionum = 0, gpio_dur = 0;
 	u8 gpio_high_active = 1; /* 0: low active, 1: high active */
 	u8 gpio_pulse = bFuncEn;
-#ifdef CONFIG_GPIO_WAKEUP
-	gpionum = WAKEUP_GPIO_IDX;
-#endif
 
 	DBG_871X("%s(): bFuncEn =%d\n", __func__, bFuncEn);
 
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 718ee9eee87c..9dd3f3249e01 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -42,63 +42,6 @@ static u8 CardEnable(struct adapter *padapter)
 	return ret;
 }
 
-#ifdef CONFIG_GPIO_WAKEUP
-/* we set it high under init and fw will */
-/* give us Low Pulse when host wake up */
-void HostWakeUpGpioClear(struct adapter *Adapter)
-{
-	u32 value32;
-
-	value32 = rtw_read32(Adapter, REG_GPIO_PIN_CTRL_2);
-
-	/* set GPIO 12 1 */
-	value32 |= BIT(12);/* 4+8 */
-	/* GPIO 12 out put */
-	value32 |= BIT(20);/* 4+16 */
-
-	rtw_write32(Adapter, REG_GPIO_PIN_CTRL_2, value32);
-} /* HostWakeUpGpioClear */
-
-void HalSetOutPutGPIO(struct adapter *padapter, u8 index, u8 OutPutValue)
-{
-	if (index <= 7) {
-		/* config GPIO mode */
-		rtw_write8(padapter, REG_GPIO_PIN_CTRL + 3, rtw_read8(padapter, REG_GPIO_PIN_CTRL + 3) & ~BIT(index));
-
-		/* config GPIO Sel */
-		/* 0: input */
-		/* 1: output */
-		rtw_write8(padapter, REG_GPIO_PIN_CTRL + 2, rtw_read8(padapter, REG_GPIO_PIN_CTRL + 2) | BIT(index));
-
-		/* set output value */
-		if (OutPutValue)
-			rtw_write8(padapter, REG_GPIO_PIN_CTRL + 1, rtw_read8(padapter, REG_GPIO_PIN_CTRL + 1) | BIT(index));
-		else
-			rtw_write8(padapter, REG_GPIO_PIN_CTRL + 1, rtw_read8(padapter, REG_GPIO_PIN_CTRL + 1) & ~BIT(index));
-	} else {
-		/* 88C Series: */
-		/* index: 11~8 transform to 3~0 */
-		/* 8723 Series: */
-		/* index: 12~8 transform to 4~0 */
-		index -= 8;
-
-		/* config GPIO mode */
-		rtw_write8(padapter, REG_GPIO_PIN_CTRL_2 + 3, rtw_read8(padapter, REG_GPIO_PIN_CTRL_2 + 3) & ~BIT(index));
-
-		/* config GPIO Sel */
-		/* 0: input */
-		/* 1: output */
-		rtw_write8(padapter, REG_GPIO_PIN_CTRL_2 + 2, rtw_read8(padapter, REG_GPIO_PIN_CTRL_2 + 2) | BIT(index));
-
-		/* set output value */
-		if (OutPutValue)
-			rtw_write8(padapter, REG_GPIO_PIN_CTRL_2 + 1, rtw_read8(padapter, REG_GPIO_PIN_CTRL_2 + 1) | BIT(index));
-		else
-			rtw_write8(padapter, REG_GPIO_PIN_CTRL_2 + 1, rtw_read8(padapter, REG_GPIO_PIN_CTRL_2 + 1) & ~BIT(index));
-	}
-}
-#endif
-
 static
 u8 _InitPowerOn_8723BS(struct adapter *padapter)
 {
@@ -190,10 +133,6 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 	rtw_write8(padapter, REG_PAD_CTRL1_8723B, value8);
 /* 	DBG_8192C("%s: REG_PAD_CTRL1(0x%x) = 0x%02X\n", __func__, REG_PAD_CTRL1_8723B, rtw_read8(padapter, REG_PAD_CTRL1_8723B)); */
 
-#ifdef CONFIG_GPIO_WAKEUP
-	HostWakeUpGpioClear(padapter);
-#endif
-
 	return _SUCCESS;
 }
 
@@ -1609,10 +1548,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 				DBG_871X_LEVEL(_drv_always_, "Re-download Normal FW!\n");
 				SetFwRelatedForWoWLAN8723b(padapter, false);
 			}
-#ifdef CONFIG_GPIO_WAKEUP
-			DBG_871X_LEVEL(_drv_always_, "Set Wake GPIO to high for default.\n");
-			HalSetOutPutGPIO(padapter, WAKEUP_GPIO_IDX, 1);
-#endif
 
 			/*  5. Download reserved pages and report media status if needed. */
 			if (
@@ -1727,10 +1662,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 
 			SetFwRelatedForWoWLAN8723b(padapter, false);
 
-#ifdef CONFIG_GPIO_WAKEUP
-		DBG_871X_LEVEL(_drv_always_, "Set Wake GPIO to high for default.\n");
-		HalSetOutPutGPIO(padapter, WAKEUP_GPIO_IDX, 1);
-#endif /* CONFIG_GPIO_WAKEUP */
 		rtl8723b_set_FwJoinBssRpt_cmd(padapter, RT_MEDIA_CONNECT);
 		issue_beacon(padapter, 0);
 		break;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index 8e6e972dd843..6f964f5c6578 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -268,10 +268,6 @@ void rtl8723bs_cancle_checkbthang_workqueue(struct adapter *adapter);
 void rtl8723bs_hal_check_bt_hang(struct adapter *adapter);
 #endif
 
-#ifdef CONFIG_GPIO_WAKEUP
-void HalSetOutPutGPIO(struct adapter *padapter, u8 index, u8 OutPutValue);
-#endif
-
 int FirmwareDownloadBT(struct adapter *adapter, struct rt_firmware *firmware);
 
 void CCX_FwC2HTxRpt_8723b(struct adapter *padapter, u8 *pdata, u8 len);
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 301ffff12e82..079e75164f1e 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -117,55 +117,6 @@ static void sdio_free_irq(struct dvobj_priv *dvobj)
 	}
 }
 
-#ifdef CONFIG_GPIO_WAKEUP
-extern unsigned int oob_irq;
-static irqreturn_t gpio_hostwakeup_irq_thread(int irq, void *data)
-{
-	struct adapter *padapter = data;
-	DBG_871X_LEVEL(_drv_always_, "gpio_hostwakeup_irq_thread\n");
-	/* Disable interrupt before calling handler */
-	/* disable_irq_nosync(oob_irq); */
-	rtw_lock_suspend_timeout(HZ/2);
-	return IRQ_HANDLED;
-}
-
-static u8 gpio_hostwakeup_alloc_irq(struct adapter *padapter)
-{
-	int err;
-
-	if (oob_irq == 0) {
-		DBG_871X("oob_irq ZERO!\n");
-		return _FAIL;
-	}
-	/* dont set it IRQF_TRIGGER_LOW, or wowlan */
-	/* power is high after suspend */
-	/* and failing can prevent can not sleep issue if */
-	/* wifi gpio12 pin is not linked with CPU */
-	err = request_threaded_irq(oob_irq, gpio_hostwakeup_irq_thread, NULL,
-		/* IRQF_TRIGGER_LOW | IRQF_ONESHOT, */
-		IRQF_TRIGGER_FALLING,
-		"rtw_wifi_gpio_wakeup", padapter);
-	if (err < 0) {
-		DBG_871X("Oops: can't allocate gpio irq %d err:%d\n", oob_irq, err);
-		return false;
-	} else {
-		DBG_871X("allocate gpio irq %d ok\n", oob_irq);
-	}
-
-	enable_irq_wake(oob_irq);
-	return _SUCCESS;
-}
-
-static void gpio_hostwakeup_free_irq(struct adapter *padapter)
-{
-	if (oob_irq == 0)
-		return;
-
-	disable_irq_wake(oob_irq);
-	free_irq(oob_irq, padapter);
-}
-#endif
-
 static u32 sdio_init(struct dvobj_priv *dvobj)
 {
 	struct sdio_data *psdio_data;
@@ -424,10 +375,6 @@ static void rtw_sdio_if1_deinit(struct adapter *if1)
 
 	free_mlme_ap_info(if1);
 
-#ifdef CONFIG_GPIO_WAKEUP
-	gpio_hostwakeup_free_irq(if1);
-#endif
-
 	rtw_cancel_all_timer(if1);
 
 #ifdef CONFIG_WOWLAN
@@ -482,10 +429,6 @@ static int rtw_drv_init(
 	if (sdio_alloc_irq(dvobj) != _SUCCESS)
 		goto free_if2;
 
-#ifdef	CONFIG_GPIO_WAKEUP
-	gpio_hostwakeup_alloc_irq(if1);
-#endif
-
 	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-871x_drv - drv_init, success!\n"));
 
 	rtw_ndev_notifier_register();
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
