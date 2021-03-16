Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D8933D5B3
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 15:27:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50D7D43191;
	Tue, 16 Mar 2021 14:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LWMcUG-hNaGQ; Tue, 16 Mar 2021 14:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87F9143033;
	Tue, 16 Mar 2021 14:27:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A17AF1BF40D
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 14:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B2246F620
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 14:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 37Q8tukIkmTC for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 14:27:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 958B36F529
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 14:27:28 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id t9so7535494wrn.11
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 07:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Z3y9Zt05eK/x4XAYQw9778IfbN4rttihbJa5pQKUfZI=;
 b=JBZIpUDC9/kFh5/1HRjgB889/7vKTDhSvIKCclKU5oCICW69+zvL1PT2xKU93fKoSa
 HDKHiY1UPz+mNG+r0MmH56e/4f7oO7OtxrrpxgELE2TMrxV4rx9jjAA9/OgjKK0EdiZ3
 VwUexPeDo0o0jJ0J5gOYUYCaZBAHannVvHEs0JkayCjGU+IGu8xiIG1wP8AweDdepC+m
 M3txz113EypgWxVPCjs9N0kqqKDZqZBcUW2c3rsoioU+k5Xpyh/PPNESRMhdhY0KCAiY
 CJxHfE/5tum7Lzu9GVRXJ9CKVb0IN9i7HtCj8z/6uSxKMxT1/65mAzH1lHb8359xta3F
 lgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Z3y9Zt05eK/x4XAYQw9778IfbN4rttihbJa5pQKUfZI=;
 b=k/38XWgZQ2lU3Zwl6es/4HIb09THHlLD7JgWyNP6qGS+5Pi2hfAT1CKq+bv0FbGaYJ
 /GT4DWt6zdEHFPXHs1U0xMv3KDo+KXy8q6GQu/23yltGec9xC9OCw8jLjs9h5DNfwFWJ
 r7AF5gqO0MhSyGmYk3lcx8TvuxvrWkD1umDnC85zQ69BiUihAlhQ2BqKoYHfaOC9lGVU
 iSoUDLc+wrDLOAfxGhGixNgv5XPGFEEhrvickVopmZ91N+h0kFL//Q1FpJAkvWWF1nQi
 27/tlpJp7lnYgSZb+PsaGiPQn94WNLzR8y9dXe67iHChoic+hKe66MQl+BEZG7dYyvFT
 G0gw==
X-Gm-Message-State: AOAM5323+2a1cy5xR6ZNiRgfT4ugcmZ9U/eROKrLOj27sakNgddiKiy+
 EgF9m8l5Hg5pfSZFYvKY1Ok=
X-Google-Smtp-Source: ABdhPJwHBIO7CEuDjFLjWSCgnqNMLfgEgBrnOGyZx6f2iVhdMifs08VIip1HwV/KxvFhajo0P4YjRg==
X-Received: by 2002:a5d:4688:: with SMTP id u8mr5229343wrq.39.1615904846803;
 Tue, 16 Mar 2021 07:27:26 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id b17sm22396143wrt.17.2021.03.16.07.27.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 07:27:26 -0700 (PDT)
Date: Tue, 16 Mar 2021 15:27:21 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8723bs: remove unused code blocks conditioned
 by never set CONFIG_GPIO_API
Message-ID: <20210316142714.GA3368@agape.jhs>
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

remove conditional code blocks checked by unused
CONFIG_GPIO_API

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Changes in v2:
	rebase of conflicting code in public staging-testing

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
index 9d482a6115ab..9c0e7b6946f8 100644
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
