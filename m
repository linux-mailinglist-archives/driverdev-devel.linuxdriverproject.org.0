Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 315D8B6015
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 11:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 593348646F;
	Wed, 18 Sep 2019 09:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TMix0X8lXS1k; Wed, 18 Sep 2019 09:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34A8084B37;
	Wed, 18 Sep 2019 09:26:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3F3D1BF41E
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E0F9D203CF
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JiFPl9JejoWp for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 09:26:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 743A0203C9
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 09:26:16 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t10so2843157plr.8
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 02:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TP5u6Ukr8naGDCwUgGDGagSd1luSKaVAHPd6/hA2Lxc=;
 b=BQyCXC4uNCAIjoc6ev5sISLgargq7BoavxCTsf+ZXZA/3MRVJm6DE8cNuUu1er+7LE
 g/uRuoy5CYC0InQssHzLPQdsPpqdDOFBC2ETNyaiJgR5JIbtEzXrer/bfNK3fgtO74WY
 TWCHxcgI63IHQFZKGU5l3NNMYrBlSSndSIyO0hbjBMDFtrxbVBfNTD7F2Dfyu+CH6zN/
 uDEZC0HHw+uSO0meiDOucKi5DYimCHKvbUWFE/Ju886VeMe4GEXm1duuQ35P1cAvvs8F
 hbyvqDGWtmXdvz9KdsUQmA6EpSxpspLfxkObA8Ev5bFTbMN7Whp/NmFRDWXfvZDfArRq
 pXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TP5u6Ukr8naGDCwUgGDGagSd1luSKaVAHPd6/hA2Lxc=;
 b=dmWXBZ/GYh46+j4+GsBotHl257j+h9baNsUE4F3iyLptAI8r3UWP3AHqAfyMR7sVk1
 gC2YEIx+a2M3hbqrRzshgs8YuM++mc90rQidN++2/NvaYLEJgA9rhmWX/wfjR+4BYVK0
 lyvKokGYUB824VXF2ypNUSIdtju0TcvKBdj5OFA5TqHZsgaXXozEvmhiES1hruJHashy
 fikMLgEApb1gypr7FBsqFmCoAgFiv2jePM1I3p8cf7JfmqWnSdyUEEVpRmvxIOSE9RYS
 /f3SGbHzCNXDPOcXzqfDj8E/A2qHqDh74rNkkBxiPOqzd/TVjk2BqiIdLKrEEznelzZ2
 jURQ==
X-Gm-Message-State: APjAAAWYU1O/VLRDiv2D/em84AhMqtZrI4qXuTNx78pPol7OgL6uVXQr
 Zhmw7aSxKXrKrKZicGeinwA=
X-Google-Smtp-Source: APXvYqxxS5VPHg7voF/W/ZYyqfHN3XOErQ3eBbbKzxzjP8Q+m9zU5TQ5ykTgwHCm2au4U5JqDnIBsg==
X-Received: by 2002:a17:902:9698:: with SMTP id
 n24mr3268424plp.238.1568798775771; 
 Wed, 18 Sep 2019 02:26:15 -0700 (PDT)
Received: from localhost.localdomain
 ([2401:4900:1951:77d6:5858:909b:a968:2d14])
 by smtp.gmail.com with ESMTPSA id m12sm9270654pff.66.2019.09.18.02.26.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Sep 2019 02:26:14 -0700 (PDT)
From: Aliasgar Surti <aliasgar.surti500@gmail.com>
X-Google-Original-From: Aliasgar Surti
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] drivers:staging:rtl8723bs: Removed unneeded variables
Date: Wed, 18 Sep 2019 14:55:49 +0530
Message-Id: <1568798749-9855-1-git-send-email-aliasgar.surti500@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Aliasgar Surti <aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Aliasgar Surti <aliasgar.surti500@gmail.com>

coccicheck reported warning for unneeded variable used.

This patch removes the unneeded variables.

Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
---
v2: removed unneeded functions and replaced them with NULL in function array.
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 54 +++-----------------------
 1 file changed, 5 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index d1b199e..55c6e45 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2425,13 +2425,6 @@ static  int rtw_drvext_hdl(struct net_device *dev, struct iw_request_info *info,
 	return 0;
 }
 
-static int rtw_mp_ioctl_hdl(struct net_device *dev, struct iw_request_info *info,
-						union iwreq_data *wrqu, char *extra)
-{
-	int ret = 0;
-	return ret;
-}
-
 static int rtw_get_ap_info(struct net_device *dev,
                                struct iw_request_info *info,
                                union iwreq_data *wrqu, char *extra)
@@ -4458,43 +4451,6 @@ static int rtw_pm_set(struct net_device *dev,
 	return ret;
 }
 
-static int rtw_mp_efuse_get(struct net_device *dev,
-			struct iw_request_info *info,
-			union iwreq_data *wdata, char *extra)
-{
-	int err = 0;
-	return err;
-}
-
-static int rtw_mp_efuse_set(struct net_device *dev,
-			struct iw_request_info *info,
-			union iwreq_data *wdata, char *extra)
-{
-	int err = 0;
-	return err;
-}
-
-static int rtw_tdls(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
-{
-	int ret = 0;
-	return ret;
-}
-
-
-static int rtw_tdls_get(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
-{
-	int ret = 0;
-	return ret;
-}
-
-
-
-
-
 static int rtw_test(
 	struct net_device *dev,
 	struct iw_request_info *info,
@@ -4744,7 +4700,7 @@ static iw_handler rtw_private_handler[] = {
 	rtw_wx_write32,					/* 0x00 */
 	rtw_wx_read32,					/* 0x01 */
 	rtw_drvext_hdl,					/* 0x02 */
-	rtw_mp_ioctl_hdl,				/* 0x03 */
+	NULL,						/* 0x03 */
 
 /*  for MM DTV platform */
 	rtw_get_ap_info,					/* 0x04 */
@@ -4771,15 +4727,15 @@ static iw_handler rtw_private_handler[] = {
 	NULL,							/* 0x12 */
 	rtw_p2p_get2,					/* 0x13 */
 
-	rtw_tdls,						/* 0x14 */
-	rtw_tdls_get,					/* 0x15 */
+	NULL,						/* 0x14 */
+	NULL,						/* 0x15 */
 
 	rtw_pm_set,						/* 0x16 */
 	rtw_wx_priv_null,				/* 0x17 */
 	rtw_rereg_nd_name,				/* 0x18 */
 	rtw_wx_priv_null,				/* 0x19 */
-	rtw_mp_efuse_set,				/* 0x1A */
-	rtw_mp_efuse_get,				/* 0x1B */
+	NULL,						/* 0x1A */
+	NULL,						/* 0x1B */
 	NULL,							/*  0x1C is reserved for hostapd */
 	rtw_test,						/*  0x1D */
 };
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
