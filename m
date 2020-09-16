Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0B326BC99
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 681BD271F5;
	Wed, 16 Sep 2020 06:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 86thgZ34LpWz; Wed, 16 Sep 2020 06:19:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF0C923730;
	Wed, 16 Sep 2020 06:19:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6201BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 86F958630A
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pL5hjTAfTgOX for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:19:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BAD2586018
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:19:49 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id q4so1024879pjh.5
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8A/CE219YrxtF0Ttixypil82sDKwj/DFlGx4NJANIr4=;
 b=S2GciSZGLv8fa0rpCsdhuxbtpwyLWpRLWdFujcbkD2tU1xyaoXQce91bIRqZtDX176
 plsR2/gv215adjoToGJwPHlX2IIJUomB1RWy3HVNdUhwZ/ILHLDfh8eX9cFpBuftUPba
 GX5jKjRSWEKhT5b9CyndE14NwNUXUDWNe5uN9hTVYjNl+NkODi3tA3lxFxhtp149hp9B
 3S12wnLJUS5c0ZljXCB2GGRgr9l0S3QOLfVfT509NgtS7QUalq2UMeUiS7J95m22RsKX
 lJHs/jGCUrn6MVdWeDSxbUc8JPZIOS9qmZwtICCDyd/I2thttrdCq8bQOaKgByiuoY2M
 7KNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8A/CE219YrxtF0Ttixypil82sDKwj/DFlGx4NJANIr4=;
 b=t+41xsjjCJfuaXw/B53fNLuHLkEz2/M1Npls9uLAylKIZ5QC/d/SuomfGBq8ZhxwV2
 vA3WNlFSU05CT1E+71W7tGd+p9izSSMDwYTCi9aiTtjsXMZqDgEz5Di/DE7lrNR5vTFS
 AMcO+tgvxzwPvHhduSBpM6grddgUxd4umstodUlV9WZ/50lO/iKctPdZbLbckzaIL4Es
 Qeg+pDD2cp4gZso4Z6KGoMDBitcAE2G/GY56xy9ltWuw2ncDyUuPMmo7wXzUJ8Q74+zO
 hvbJ3Wi763ZqJ9RcEbqR3V3FSGUiTVMASJWgzXJIjFcs8shIwTcXPLA9bSW21ll1d8BE
 FVDw==
X-Gm-Message-State: AOAM532oXBC525pkGwfc6CYjuuv3IdZr3C07Tb3y1jQzHNl0+T1Uc5QT
 pCBeXLrFyUHClGSjzU9he/I=
X-Google-Smtp-Source: ABdhPJwCMKuICztjbWNNc91pbuHCjWVfW9LPilMAIdDo36WBoNDiKAc7xRjs7N/zEGjVb1PGJzI4pg==
X-Received: by 2002:a17:902:be11:b029:d1:bb21:4c9c with SMTP id
 r17-20020a170902be11b02900d1bb214c9cmr19068503pls.8.1600237189411; 
 Tue, 15 Sep 2020 23:19:49 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id w203sm15401717pfc.97.2020.09.15.23.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:19:48 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192: convert tasklets to use new tasklet_setup()
 API
Date: Wed, 16 Sep 2020 11:49:39 +0530
Message-Id: <20200916061939.57976-1-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>,
 Allen Pais <apais@linux.microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Allen Pais <apais@linux.microsoft.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <apais@linux.microsoft.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 6 +++---
 drivers/staging/rtl8192u/r8192U_core.c                 | 9 ++++-----
 2 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index d8eb907ff301..690b664df8fa 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1687,9 +1687,9 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
 	return 1;
 }
 
-static inline void ieee80211_sta_ps(unsigned long data)
+static inline void ieee80211_sta_ps(struct tasklet_struct *t)
 {
-	struct ieee80211_device *ieee = (struct ieee80211_device *)data;
+	struct ieee80211_device *ieee = from_tasklet(ieee, t, ps_task);
 	u32 th, tl;
 	short sleep;
 
@@ -2598,7 +2598,7 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
 	spin_lock_init(&ieee->mgmt_tx_lock);
 	spin_lock_init(&ieee->beacon_lock);
 
-	tasklet_init(&ieee->ps_task, ieee80211_sta_ps, (unsigned long)ieee);
+	tasklet_setup(&ieee->ps_task, ieee80211_sta_ps);
 }
 
 void ieee80211_softmac_free(struct ieee80211_device *ieee)
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 6ec65187bef9..27dc181c4c9b 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2193,7 +2193,7 @@ static void rtl8192_init_priv_lock(struct r8192_priv *priv)
 
 static void rtl819x_watchdog_wqcallback(struct work_struct *work);
 
-static void rtl8192_irq_rx_tasklet(unsigned long data);
+static void rtl8192_irq_rx_tasklet(struct tasklet_struct *t);
 /* init tasklet and wait_queue here. only 2.6 above kernel is considered */
 #define DRV_NAME "wlan0"
 static void rtl8192_init_priv_task(struct net_device *dev)
@@ -2214,8 +2214,7 @@ static void rtl8192_init_priv_task(struct net_device *dev)
 			  InitialGainOperateWorkItemCallBack);
 	INIT_WORK(&priv->qos_activate, rtl8192_qos_activate);
 
-	tasklet_init(&priv->irq_rx_tasklet, rtl8192_irq_rx_tasklet,
-		     (unsigned long)priv);
+	tasklet_setup(&priv->irq_rx_tasklet, rtl8192_irq_rx_tasklet);
 }
 
 static void rtl8192_get_eeprom_size(struct net_device *dev)
@@ -4647,9 +4646,9 @@ static void rtl8192_rx_cmd(struct sk_buff *skb)
 	}
 }
 
-static void rtl8192_irq_rx_tasklet(unsigned long data)
+static void rtl8192_irq_rx_tasklet(struct tasklet_struct *t)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)data;
+	struct r8192_priv *priv = from_tasklet(priv, t, irq_rx_tasklet);
 	struct sk_buff *skb;
 	struct rtl8192_rx_info *info;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
