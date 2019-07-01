Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6733C5B4F7
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 08:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76E7286460;
	Mon,  1 Jul 2019 06:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eeu0mzY6c2zU; Mon,  1 Jul 2019 06:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 286CC856ED;
	Mon,  1 Jul 2019 06:23:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9575F1BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 92D1F875D8
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LUrDL1FsAl+h for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 695C0875BE
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:16 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g15so3601699pgi.4
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NtK2WtqWWYeL0N0XUfpbNVgNdh2CJNSuXy+9pj9jFT0=;
 b=kxzdtzr8TTjcxcDMFN7p8na08EFHfdPmpUPK3sSwwms1gOktsXn25g0szo1SrRB+WR
 0m2H5fw9DbAzfDsBJpfLg/4QWmbSaZSwjD+E4SX4PIFJhSqxMTeUDIsbucvrgIbxGvPd
 JE9MJeMCjirXBR8YzaMbfDJL+Ztl1Rj+p6e/+l/bLYtCq0AuAXh81lNg8Mb91n0crcl/
 eyKJVg8UOYHyTRp+rx4/hAmtBBMNxAdl0vVM1kGA5xrZku3CzJqEf3EOH4boOtZEsgXP
 RGq1UmCGzQteYlA+Oqcenanno5LU35U2X5jECuwDtKTJCPKqwTE7XpuYIFbM9iLc5z3H
 1EeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NtK2WtqWWYeL0N0XUfpbNVgNdh2CJNSuXy+9pj9jFT0=;
 b=Lf+bgrav70Ok/0b1xJq7+XJO0Ni55D6KT7YV517FTgZIcp9UHAEFSm7Kr/AixHAaAy
 aVBLi6fyKHy8Ww9rQNW+oEO1YNbrjvUHGyXS6f1H6mfahrNx6FuehLjAnAG9/to2Z1GB
 oRJAwG4MDbDIQrUm1Y81/MSRkvWTDIDAgmDj+0s+fEQH6Qt/+FChNgtEBGXtLnSopm1B
 UM3hzxb6+kB8b0FXywCv0MqxQItp4imUNOTBCntpSQGQ4nLJvUHT+Ow/JfruW/Q7HZtd
 tzSvTyRJJi7qE2f44NCKF5FU5I9I/W/fuPY8OZAzUc9oPnN0kMrX7MU/fE9h9tJ4y3Ir
 +fHQ==
X-Gm-Message-State: APjAAAWzioa4eWZ3uCF+eiQ71B35AVX0ULamlQcFlv40ELmeC5r2JX9w
 7rtMmEf+1yRow6nvVPOsO4g=
X-Google-Smtp-Source: APXvYqyd981oHiXZedti8lXQgX+8ykP17+dGVrcTjHKu1WcBiRQZ07dEClECT6wjoAGp4jDdo77VTg==
X-Received: by 2002:a17:90a:8c06:: with SMTP id
 a6mr29814978pjo.45.1561962196612; 
 Sun, 30 Jun 2019 23:23:16 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:16 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 01/10] staging: rtl8723bs: Remove function rtw_modular64()
Date: Mon,  1 Jul 2019 11:52:55 +0530
Message-Id: <20190701062304.2440-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function rtw_modular64 as all it does is call do_div.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c    | 2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 2 +-
 drivers/staging/rtl8723bs/include/osdep_service.h | 2 --
 drivers/staging/rtl8723bs/os_dep/osdep_service.c  | 5 -----
 4 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 93f4ea0ac433..76c50377f0fe 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1932,7 +1932,7 @@ void adaptive_early_32k(struct mlme_ext_priv *pmlmeext, u8 *pframe, uint len)
 
 	/* delay = (timestamp mod 1024*100)/1000 (unit: ms) */
 	/* delay_ms = do_div(tsf, (pmlmeinfo->bcn_interval*1024))/1000; */
-	delay_ms = rtw_modular64(tsf, (pmlmeinfo->bcn_interval*1024));
+	delay_ms = do_div(tsf, (pmlmeinfo->bcn_interval*1024));
 	delay_ms = delay_ms/1000;
 
 	if (delay_ms >= 8)
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 6cfd240318f3..a1fc3bdd3d4f 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3463,7 +3463,7 @@ static void hw_var_set_correct_tsf(struct adapter *padapter, u8 variable, u8 *va
 	pmlmeext = &padapter->mlmeextpriv;
 	pmlmeinfo = &pmlmeext->mlmext_info;
 
-	tsf = pmlmeext->TSFValue-rtw_modular64(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024))-1024; /* us */
+	tsf = pmlmeext->TSFValue-do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024))-1024; /* us */
 
 	if (
 		((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) ||
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index 76d619585046..d2616af95ffa 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -178,8 +178,6 @@ extern int rtw_retrive_from_file(char *path, u8 *buf, u32 sz);
 extern void rtw_free_netdev(struct net_device * netdev);
 
 
-extern u64 rtw_modular64(u64 x, u64 y);
-
 /* Macros for handling unaligned memory accesses */
 
 #define RTW_GET_BE16(a) ((u16) (((a)[0] << 8) | (a)[1]))
diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index 1d2c581327b2..62fdd24ba427 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -316,11 +316,6 @@ int rtw_change_ifname(struct adapter *padapter, const char *ifname)
 
 }
 
-u64 rtw_modular64(u64 x, u64 y)
-{
-	return do_div(x, y);
-}
-
 void rtw_buf_free(u8 **buf, u32 *buf_len)
 {
 	u32 ori_len;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
