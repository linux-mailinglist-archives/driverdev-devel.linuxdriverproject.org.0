Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A087626BCA7
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:21:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F47886A37;
	Wed, 16 Sep 2020 06:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id th2FI2uPPwOd; Wed, 16 Sep 2020 06:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CD3786A27;
	Wed, 16 Sep 2020 06:21:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B94F1BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 277F486A0F
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BalUK4-a-1Hl for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:21:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7CFCA86A0E
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:21:04 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id n14so3358302pff.6
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pH8plMqCs4BKRun7PXE/GJgRTDLTG9OclBrOcJ14YFc=;
 b=Ed60iFLeTkILuRQX8iFcKWve3oMuEIw5WDcw6qCrl8JthN8eLdJS4yz7XX+3L9T8Gr
 n005yVFy3hSzad0SKfSpEkVdQ5AoUUE2eg5W8APqw64ucr+Dzdo3ia/wHmJ81T0u7g/u
 LwBw8KcPKNl72uRcK6fqyTNVxaJFw8gXKW1YtyhY7gdshWCN00PQqKcp1rnub3mEI9I9
 PwZAf+Es1fv/pYN9gCCjg1rAG8aBo4cMUk3aY0lmUVDzEEIOkUwJ2bvdnd9hUgYqA0tp
 /jJ9NfH2lMla4RmdB0cedNTljUSPMCnaqx7ZzrjsjHXzW+HSWzCytRDJ0ZCDO3RZZyEr
 6QWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pH8plMqCs4BKRun7PXE/GJgRTDLTG9OclBrOcJ14YFc=;
 b=k7/EqlAy7l7EnT61tScg7C0Sj1tZJCqr9nSJbKYTnO3B/y9Xe/5DItyT2JwFrcOwZU
 3USdS3j/ZnGEvyXRW3oe1Noop11gAzGlgyY32b9yXZ6cZlVro0aRk5H4VUMPeH7PC25b
 lgMmeliPlChyrGvSG/iW7ekOeDmRc678pANW1P97OQTTLuHCNYtrncHz7jPhJKcZVCjJ
 qsQuVOTjbyuFAf6dba85uvAwIIgNR9P/fc2OVdX5fLCrqENZjrFm1j+EyCc85JXOrKY1
 fqvlHim7xp7YsJdhvdlVvAEt2yxOhtaF+Wc/qD716VDxMfUaDHnQ24/YRQF2n2+KsCvA
 Frfg==
X-Gm-Message-State: AOAM533YB1NZ1RcHtxCz9wpx7HUFYzayXK6TW7BM8BbymqAzKCmIg50Z
 Lz+n4WyK3AlJkkI93HhZvgw=
X-Google-Smtp-Source: ABdhPJzHUDuzVneZ41G+6tlqunzr7GPucyL6AKCBU2uWP+a2ExucjVaqaBiXHjEcu9k3wNeADBB93w==
X-Received: by 2002:a63:580c:: with SMTP id m12mr16044140pgb.99.1600237264065; 
 Tue, 15 Sep 2020 23:21:04 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id e123sm15966374pfh.167.2020.09.15.23.21.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:21:03 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: convert tasklets to use new
 tasklet_setup() API
Date: Wed, 16 Sep 2020 11:50:54 +0530
Message-Id: <20200916062054.58084-1-allen.lkml@gmail.com>
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
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 27 ++++++++++----------
 drivers/staging/rtl8192e/rtllib_softmac.c    |  6 ++---
 2 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index fac58eebf263..663675efcfe4 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -82,8 +82,8 @@ static int _rtl92e_hard_start_xmit(struct sk_buff *skb, struct net_device *dev);
 static void _rtl92e_tx_cmd(struct net_device *dev, struct sk_buff *skb);
 static short _rtl92e_tx(struct net_device *dev, struct sk_buff *skb);
 static short _rtl92e_pci_initdescring(struct net_device *dev);
-static void _rtl92e_irq_tx_tasklet(unsigned long data);
-static void _rtl92e_irq_rx_tasklet(unsigned long data);
+static void _rtl92e_irq_tx_tasklet(struct tasklet_struct *t);
+static void _rtl92e_irq_rx_tasklet(struct tasklet_struct *t);
 static void _rtl92e_cancel_deferred_work(struct r8192_priv *priv);
 static int _rtl92e_up(struct net_device *dev, bool is_silent_reset);
 static int _rtl92e_try_up(struct net_device *dev);
@@ -517,9 +517,10 @@ static int _rtl92e_handle_assoc_response(struct net_device *dev,
 	return 0;
 }
 
-static void _rtl92e_prepare_beacon(unsigned long data)
+static void _rtl92e_prepare_beacon(struct tasklet_struct *t)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)data;
+	struct r8192_priv *priv = from_tasklet(priv, t,
+					       irq_prepare_beacon_tasklet);
 	struct net_device *dev = priv->rtllib->dev;
 	struct sk_buff *pskb = NULL, *pnewskb = NULL;
 	struct cb_desc *tcb_desc = NULL;
@@ -1009,12 +1010,10 @@ static void _rtl92e_init_priv_task(struct net_device *dev)
 			      (void *)rtl92e_hw_wakeup_wq, dev);
 	INIT_DELAYED_WORK_RSL(&priv->rtllib->hw_sleep_wq,
 			      (void *)rtl92e_hw_sleep_wq, dev);
-	tasklet_init(&priv->irq_rx_tasklet, _rtl92e_irq_rx_tasklet,
-		     (unsigned long)priv);
-	tasklet_init(&priv->irq_tx_tasklet, _rtl92e_irq_tx_tasklet,
-		     (unsigned long)priv);
-	tasklet_init(&priv->irq_prepare_beacon_tasklet, _rtl92e_prepare_beacon,
-		     (unsigned long)priv);
+	tasklet_setup(&priv->irq_rx_tasklet, _rtl92e_irq_rx_tasklet);
+	tasklet_setup(&priv->irq_tx_tasklet, _rtl92e_irq_tx_tasklet);
+	tasklet_setup(&priv->irq_prepare_beacon_tasklet,
+		      _rtl92e_prepare_beacon);
 }
 
 static short _rtl92e_get_channel_map(struct net_device *dev)
@@ -2109,16 +2108,16 @@ static void _rtl92e_tx_resume(struct net_device *dev)
 	}
 }
 
-static void _rtl92e_irq_tx_tasklet(unsigned long data)
+static void _rtl92e_irq_tx_tasklet(struct tasklet_struct *t)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)data;
+	struct r8192_priv *priv = from_tasklet(priv, t, irq_tx_tasklet);
 
 	_rtl92e_tx_resume(priv->rtllib->dev);
 }
 
-static void _rtl92e_irq_rx_tasklet(unsigned long data)
+static void _rtl92e_irq_rx_tasklet(struct tasklet_struct *t)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)data;
+	struct r8192_priv *priv = from_tasklet(priv, t, irq_rx_tasklet);
 
 	_rtl92e_rx_normal(priv->rtllib->dev);
 
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 6e2f620afd14..2c752ba5a802 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2044,9 +2044,9 @@ static short rtllib_sta_ps_sleep(struct rtllib_device *ieee, u64 *time)
 
 }
 
-static inline void rtllib_sta_ps(unsigned long data)
+static inline void rtllib_sta_ps(struct tasklet_struct *t)
 {
-	struct rtllib_device *ieee = (struct rtllib_device *)data;
+	struct rtllib_device *ieee = from_tasklet(ieee, t, ps_task);
 	u64 time;
 	short sleep;
 	unsigned long flags, flags2;
@@ -3028,7 +3028,7 @@ void rtllib_softmac_init(struct rtllib_device *ieee)
 	spin_lock_init(&ieee->mgmt_tx_lock);
 	spin_lock_init(&ieee->beacon_lock);
 
-	tasklet_init(&ieee->ps_task, rtllib_sta_ps, (unsigned long)ieee);
+	tasklet_setup(&ieee->ps_task, rtllib_sta_ps);
 
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
