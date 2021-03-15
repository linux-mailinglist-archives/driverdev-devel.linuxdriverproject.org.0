Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2088B33AFC2
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:16:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C9466F4E9;
	Mon, 15 Mar 2021 10:16:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kql3_K6TCyVL; Mon, 15 Mar 2021 10:16:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CAC860707;
	Mon, 15 Mar 2021 10:16:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7881BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 074A94018A
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0KFMOKqedn5 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:16:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4102340139
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:16:18 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id 7so8368018wrz.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3eaNaTK6Th4830dCzQo7q4M75cidkXX5c41HUO03T6Y=;
 b=MomdXlwfI3HGnIJbHCfL19lep5ZvC9saCqhiFvG60qsHWI9ldNN7W5zT2Zgwa/BLuN
 VIJPEu4e/dDxphod0bwseNhy53+8HOQyHJckbWEVGgABlCNw1ebtj8GjZgAz9/DionOl
 FxIup5BchNRsz7bJcoZCwE0shxD0Ouz5dcuJVcQYyc68NvdmNR1CcEKFViTrqQcDS6Qs
 ao510gdbC0OH/KWm6+Yu8igcPMBq8cbCQEMM7agMCY3/W9CPcsqd6Z4noHS/Wffx/Fcc
 if0E+BjQw+u8K5Io0r/b9b1xh5lONPG2Fe/2p2AAk/+lTW9/s9BvNVrTBcq12G+Yam0G
 Vd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3eaNaTK6Th4830dCzQo7q4M75cidkXX5c41HUO03T6Y=;
 b=lZ511d/JG++Vz87Zql5AvTXx9c306kmMUsvAte0gUlBfGl38n0goZGZqwj61MJ51y6
 E5yzZ65LwEkCkErP3ixWxB2pWMfOb+TR1qP2M0NQM1hx8Vd+5mCY7otj9wrjYGlF2QxC
 kqJ0HrD+/LZ6e5uo5VMnsAcJKqxw24Bf3s8/ep2KsZuFdcfsl6mCRmVnWJlpBX6J6t34
 fosRtaaDtZZRnV7ZKGlcJahDzDF3iSz94r8tTZCOz89B3NlpqbVyFJzCjVs9HH2ZKqyl
 DQdDzxa81Un+uyOg+YIxzU5rO0AhC41q+CsoAeRJZ5To0hZAL2Eeb8hfovPYpP55OHhS
 pNng==
X-Gm-Message-State: AOAM531PYcyonfL8ZQmYi88QG77C4e4qpIt6HOvbcVYT+vLbQ3xd/Csj
 E9XU8iJOcQ4pCoiaoQVdQ2Q=
X-Google-Smtp-Source: ABdhPJx/zQaDHu96FMtYCQdtDD4zz1uifrXgfLpcC2xyekjzZ48lERhHgWU4DVSSA4w2V5D9e8++ug==
X-Received: by 2002:a5d:4485:: with SMTP id j5mr25993443wrq.339.1615803376591; 
 Mon, 15 Mar 2021 03:16:16 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id v18sm19407085wrf.41.2021.03.15.03.16.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:16:16 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:16:13 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_GPIO_API
Message-ID: <ecec99d0c2f8484c97906d9bc5fd24c685ef3c3b.1615801722.git.fabioaiuto83@gmail.com>
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
CONFIG_GPIO_API

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 95 -------------------
 drivers/staging/rtl8723bs/include/drv_types.h |  6 --
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 40 --------
 3 files changed, 141 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index d04514d36b49..3e211780cde4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -2014,98 +2014,3 @@ struct adapter *dvobj_get_port0_adapter(struct dvobj_priv *dvobj)
 
 	return dvobj->padapters;
 }
-
-#ifdef CONFIG_GPIO_API
-int rtw_get_gpio(struct net_device *netdev, int gpio_num)
-{
-	u8 value;
-	u8 direction;
-	struct adapter *adapter = rtw_netdev_priv(netdev);
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(adapter);
-
-	rtw_ps_deny(adapter, PS_DENY_IOCTL);
-
-	DBG_871X("rf_pwrstate = 0x%02x\n", pwrpriv->rf_pwrstate);
-	LeaveAllPowerSaveModeDirect(adapter);
-
-	/* Read GPIO Direction */
-	direction = (rtw_read8(adapter, REG_GPIO_PIN_CTRL + 2) & BIT(gpio_num)) >> gpio_num;
-
-	/* According the direction to read register value */
-	if (direction)
-		value = (rtw_read8(adapter, REG_GPIO_PIN_CTRL + 1) & BIT(gpio_num)) >> gpio_num;
-	else
-		value = (rtw_read8(adapter, REG_GPIO_PIN_CTRL) & BIT(gpio_num)) >> gpio_num;
-
-	rtw_ps_deny_cancel(adapter, PS_DENY_IOCTL);
-	DBG_871X("%s direction =%d value =%d\n", __func__, direction, value);
-
-	return value;
-}
-EXPORT_SYMBOL(rtw_get_gpio);
-
-int  rtw_set_gpio_output_value(struct net_device *netdev, int gpio_num, bool isHigh)
-{
-	u8 direction = 0;
-	u8 res = -1;
-	struct adapter *adapter = rtw_netdev_priv(netdev);
-
-	/* Check GPIO is 4~7 */
-	if (gpio_num > 7 || gpio_num < 4) {
-		DBG_871X("%s The gpio number does not included 4~7.\n", __func__);
-		return -1;
-	}
-
-	rtw_ps_deny(adapter, PS_DENY_IOCTL);
-
-	LeaveAllPowerSaveModeDirect(adapter);
-
-	/* Read GPIO direction */
-	direction = (rtw_read8(adapter, REG_GPIO_PIN_CTRL + 2) & BIT(gpio_num)) >> gpio_num;
-
-	/* If GPIO is output direction, setting value. */
-	if (direction) {
-		if (isHigh)
-			rtw_write8(adapter, REG_GPIO_PIN_CTRL + 1, rtw_read8(adapter, REG_GPIO_PIN_CTRL + 1) | BIT(gpio_num));
-		else
-			rtw_write8(adapter, REG_GPIO_PIN_CTRL + 1, rtw_read8(adapter, REG_GPIO_PIN_CTRL + 1) & ~BIT(gpio_num));
-
-		DBG_871X("%s Set gpio %x[%d]=%d\n", __func__, REG_GPIO_PIN_CTRL+1, gpio_num, isHigh);
-		res = 0;
-	} else {
-		DBG_871X("%s The gpio is input, not be set!\n", __func__);
-		res = -1;
-	}
-
-	rtw_ps_deny_cancel(adapter, PS_DENY_IOCTL);
-	return res;
-}
-EXPORT_SYMBOL(rtw_set_gpio_output_value);
-
-int rtw_config_gpio(struct net_device *netdev, int gpio_num, bool isOutput)
-{
-	struct adapter *adapter = rtw_netdev_priv(netdev);
-
-	if (gpio_num > 7 || gpio_num < 4) {
-		DBG_871X("%s The gpio number does not included 4~7.\n", __func__);
-		return -1;
-	}
-
-	DBG_871X("%s gpio_num =%d direction =%d\n", __func__, gpio_num, isOutput);
-
-	rtw_ps_deny(adapter, PS_DENY_IOCTL);
-
-	LeaveAllPowerSaveModeDirect(adapter);
-
-	if (isOutput)
-		rtw_write8(adapter, REG_GPIO_PIN_CTRL + 2, rtw_read8(adapter, REG_GPIO_PIN_CTRL + 2) | BIT(gpio_num));
-	else
-		rtw_write8(adapter, REG_GPIO_PIN_CTRL + 2, rtw_read8(adapter, REG_GPIO_PIN_CTRL + 2) & ~BIT(gpio_num));
-
-	rtw_ps_deny_cancel(adapter, PS_DENY_IOCTL);
-
-	return 0;
-}
-EXPORT_SYMBOL(rtw_config_gpio);
-#endif
-
diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 56ebf18a4c05..a7d30bab744c 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -528,12 +528,6 @@ static inline void RTW_ENABLE_FUNC(struct adapter *padapter, int func_bit)
 			 (padapter)->bSurpriseRemoved || \
 			 RTW_IS_FUNC_DISABLED((padapter), DF_TX_BIT))
 
-#ifdef CONFIG_GPIO_API
-int rtw_get_gpio(struct net_device *netdev, int gpio_num);
-int rtw_set_gpio_output_value(struct net_device *netdev, int gpio_num, bool isHigh);
-int rtw_config_gpio(struct net_device *netdev, int gpio_num, bool isOutput);
-#endif
-
 static inline u8 *myid(struct eeprom_priv *peepriv)
 {
 	return peepriv->mac_addr;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index d0e77465ad9a..f5cd3639f571 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -3063,46 +3063,6 @@ static int rtw_dbg_port(struct net_device *dev,
 					{
 						break;
 					}
-#ifdef CONFIG_GPIO_API
-		            case 0x25: /* Get GPIO register */
-		                    {
-			                    /*
-			                    * dbg 0x7f250000 [gpio_num], Get gpio value, gpio_num:0~7
-			                    */
-
-			                    int value;
-			                    DBG_871X("Read GPIO Value  extra_arg = %d\n", extra_arg);
-			                    value = rtw_get_gpio(dev, extra_arg);
-			                    DBG_871X("Read GPIO Value = %d\n", value);
-			                    break;
-		                    }
-		            case 0x26: /* Set GPIO direction */
-		                    {
-
-			                    /* dbg 0x7f26000x [y], Set gpio direction,
-			                    * x: gpio_num, 4~7  y: indicate direction, 0~1
-			                    */
-
-			                    int value;
-			                    DBG_871X("Set GPIO Direction! arg = %d , extra_arg =%d\n", arg, extra_arg);
-			                    value = rtw_config_gpio(dev, arg, extra_arg);
-			                    DBG_871X("Set GPIO Direction %s\n", (value == -1) ? "Fail!!!" : "Success");
-			                    break;
-					}
-				case 0x27: /* Set GPIO output direction value */
-					{
-						/*
-						* dbg 0x7f27000x [y], Set gpio output direction value,
-						* x: gpio_num, 4~7  y: indicate direction, 0~1
-						*/
-
-						int value;
-						DBG_871X("Set GPIO Value! arg = %d , extra_arg =%d\n", arg, extra_arg);
-						value = rtw_set_gpio_output_value(dev, arg, extra_arg);
-						DBG_871X("Set GPIO Value %s\n", (value == -1) ? "Fail!!!" : "Success");
-						break;
-					}
-#endif
 				case 0xaa:
 					{
 						if ((extra_arg & 0x7F) > 0x3F)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
