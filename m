Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5026B591A7
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 04:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A66283C00;
	Fri, 28 Jun 2019 02:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TFvS5NMZhGEf; Fri, 28 Jun 2019 02:49:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43879814A3;
	Fri, 28 Jun 2019 02:49:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C81D1BF418
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 02:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36FDE86132
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 02:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2YRWAojEeUFh for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 02:49:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 041168610E
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 02:49:46 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id k13so1892813pgq.9
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BjZs4QmT9Rq6xJfvVoRrPidd5HcnRoBaVWi/hg75COg=;
 b=XUmdL4kUPfZgTYfBdqlqn0WkAet+SkaoA+caF+woKXYmNDKQ9vsgqvdsOThS+Va4J9
 84qyPrmEHSvP0yh8znX08527pWn/XH1bntADASOLRGw8DOqzGjwK+cJQk5wpuGKjv9GG
 AJHFf3fjm2bLMrLnOgBtPw9bnZ13jflSB1h388xemN3Ad59kR5Q6MmSCQWM3Urk5WaOT
 EnDTeFN5/A5rtqNkwsGOLP7XWtnLPK01XW0Fx+L/kx7/7QGbYGNzr8vA+Huqln5QbatT
 Hns6EW28DT5Vzva24YZH5PEMvq7RfKe7IYMc/T4jzwIQ5xRbWn0qm9H1fbcA9yzQeFu+
 yJHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BjZs4QmT9Rq6xJfvVoRrPidd5HcnRoBaVWi/hg75COg=;
 b=s7p0OhICoIDn7CJGPOjaP/xCUzJ5B8Y2RJZFj1625xjmbNyy9vuY58Um3kS5RT3tBV
 9J7A2pEZSHOwiYMAG+W4TnCPyAKihuHX6O8kW+BIInBQA7dN4iMEPCboRiKzXdaDi2PI
 QhLw351gSnMuRWhnLxiiPbBmkgcknHSSrPEXocQUpERR0nCu3Clh+XVwAumA9td4Q1RQ
 2lj5DF+wQFHiX3DtG+9D/wEE/NqT7evs+59dZFsJwwqeWKv6s5Ve57WIdFcqwEmJIVcb
 LMUT/WPHJ6YNiySSvzCFyLvVYxoFWpznJHyjDuEI6wF/NvP8dtsXbyZqw2/x4oZJmYZM
 KeUg==
X-Gm-Message-State: APjAAAVtfuXPDJr9QJs9In476Z4Edgvn0Y9XGJERvaKpThkVANJlapGJ
 UEfQckn+eq30wG6s/PAf/to=
X-Google-Smtp-Source: APXvYqz9mlzjLxYpAkSvC41BFQNvhTAPafuvUKQKdp9gxiY2E2Kb/qDNS3oWbbgVTV/qawHxw911pw==
X-Received: by 2002:a17:90a:cd04:: with SMTP id
 d4mr10368889pju.128.1561690185607; 
 Thu, 27 Jun 2019 19:49:45 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id w1sm562908pjt.30.2019.06.27.19.49.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 19:49:45 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v2 19/27] staging: rtl8*: use zeroing allocator rather than
 allocator followed with memset 0
Date: Fri, 28 Jun 2019 10:49:29 +0800
Message-Id: <20190628024935.15806-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, linux-kernel@vger.kernel.org,
 Omer Efrat <omer.efrat@tandemg.com>, Julia Lawall <julia.lawall@lip6.fr>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, Mamta Shukla <mamtashukla555@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Fuqian Huang <huangfq.daxian@gmail.com>, Quytelda Kahja <quytelda@tamalin.org>,
 Wen Yang <wen.yang99@zte.com.cn>, Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use zeroing allocator rather than allocator followed with memset 0.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c     |  3 +--
 drivers/staging/rtl8712/rtl871x_io.c              |  4 +---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  8 ++------
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 12 +++---------
 4 files changed, 7 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index 9db11b16cb93..250acb01d1a9 100644
--- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
@@ -98,10 +98,9 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	if (authmode == _WPA_IE_ID_) {
 		RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
 			 ("rtw_report_sec_ie, authmode=%d\n", authmode));
-		buff = rtw_malloc(IW_CUSTOM_MAX);
+		buff = rtw_zmalloc(IW_CUSTOM_MAX);
 		if (!buff)
 			return;
-		memset(buff, 0, IW_CUSTOM_MAX);
 		p = buff;
 		p += sprintf(p, "ASSOCINFO(ReqIEs =");
 		len = sec_ie[1] + 2;
diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index 17dafeffd6f4..87024d6a465e 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -107,13 +107,11 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
 	INIT_LIST_HEAD(&pio_queue->processing);
 	INIT_LIST_HEAD(&pio_queue->pending);
 	spin_lock_init(&pio_queue->lock);
-	pio_queue->pallocated_free_ioreqs_buf = kmalloc(NUM_IOREQ *
+	pio_queue->pallocated_free_ioreqs_buf = kzalloc(NUM_IOREQ *
 						(sizeof(struct io_req)) + 4,
 						GFP_ATOMIC);
 	if ((pio_queue->pallocated_free_ioreqs_buf) == NULL)
 		goto alloc_io_queue_fail;
-	memset(pio_queue->pallocated_free_ioreqs_buf, 0,
-			(NUM_IOREQ * (sizeof(struct io_req)) + 4));
 	pio_queue->free_ioreqs_buf = pio_queue->pallocated_free_ioreqs_buf + 4
 			- ((addr_t)(pio_queue->pallocated_free_ioreqs_buf)
 			& 3);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index db553f2e4c0b..f8e0723f5d1f 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1078,12 +1078,10 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
 	DBG_871X("pairwise =%d\n", pairwise);
 
 	param_len = sizeof(struct ieee_param) + params->key_len;
-	param = rtw_malloc(param_len);
+	param = rtw_zmalloc(param_len);
 	if (param == NULL)
 		return -1;
 
-	memset(param, 0, param_len);
-
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	memset(param->sta_addr, 0xff, ETH_ALEN);
 
@@ -2167,15 +2165,13 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 		{
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = rtw_zmalloc(wep_total_len);
 			if (pwep == NULL) {
 				DBG_871X(" wpa_set_encryption: pwep allocate fail !!!\n");
 				ret = -ENOMEM;
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e3d356952875..1491d420929c 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -478,14 +478,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = rtw_zmalloc(wep_total_len);
 			if (pwep == NULL) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
@@ -2144,12 +2142,10 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 	int ret = 0;
 
 	param_len = sizeof(struct ieee_param) + pext->key_len;
-	param = rtw_malloc(param_len);
+	param = rtw_zmalloc(param_len);
 	if (param == NULL)
 		return -1;
 
-	memset(param, 0, param_len);
-
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	memset(param->sta_addr, 0xff, ETH_ALEN);
 
@@ -3522,14 +3518,12 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = rtw_zmalloc(wep_total_len);
 			if (pwep == NULL) {
 				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
