Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2223626BCEE
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:26:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5237787361;
	Wed, 16 Sep 2020 06:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOZGbSYcjYHy; Wed, 16 Sep 2020 06:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B549E87330;
	Wed, 16 Sep 2020 06:26:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B685E1BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89FAC2043F
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AglBZ4GR1Y4b for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:26:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 2912D258A5
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:26:03 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s65so3345941pgb.0
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jjy+QJ3h651Fp4xX7YDm7hndulBnH95OcaoR+nq32zI=;
 b=gAwwAS+sGiJjBlt2zTxiVZPTc3B3TUF7BvC/Tiq6rw+l9hnE6g0SeoKxyLUznyWejB
 yuuxgwm2tzJL8l/Ezbh+Fh5KBexgVnQGEaB62CUIIrgOK1nwHYmw970dEtvoHFooOyWP
 R+VUC3qhhqbGImkDbxLdlOLJZWUSNwG/Uxc7xCQoDxpSkCYFjp/jnYbs1uUN8QHjED3H
 w8VMU+OmiF4cNorJvetPsqavGicS7QLwZ2EcKMep8+vYElVmam3kyXFmuVFqhvZ1cgxk
 b4MTueJQScqmoEj6bb+qXmKCpW64FZtLjlx/B8kP62sVpEeKhJ9TxTGaJ1Jiaz9xasSY
 SHEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jjy+QJ3h651Fp4xX7YDm7hndulBnH95OcaoR+nq32zI=;
 b=P35Pywm46XBbmr+/MP7/+Zbot8tvIQU2R3K5iDaEPpqr5IZ8Dj+XGJyjg5L8JGu2iJ
 4NeZqaS2m7M7H1479NtPfanZDjlkQliaXyKcY+fYC8dcAOUMtaPiqAfV9zFv5a2T2KXX
 PUwSpmlkURlcLZDZjFaYpjQZhwBKqhUTVE3w+aYOppEueAq0uE3Q0iDOFHRyU7YiXZzw
 quYfSjEDvzMKvidVFaAFZfV3SpBXSEbsfOP6IQWLvZ0PXrJok/J6Crfej1nMkj2oZcfk
 57hnVcT41SNksfz5KDm7N5JAHSoP1s3kxKSRyFtmqEyknCS20xqhOWIDHEdTxEGjJmUg
 b16w==
X-Gm-Message-State: AOAM533RXLrf0NU/pRgMaSJkMYivDHgObHZI1QNwI+OxmbqUpiKdfxBE
 CMBgHvjfhyTvnC4WrEdc3XE=
X-Google-Smtp-Source: ABdhPJx1FSF/yd3z00cebca/eNV+MrJz8ryAVHpFSWX1NLzi35zlXlnFugd9oRfyhf9zm3LxxkQNZw==
X-Received: by 2002:a62:d44e:0:b029:13c:1611:652f with SMTP id
 u14-20020a62d44e0000b029013c1611652fmr21113300pfl.15.1600237562732; 
 Tue, 15 Sep 2020 23:26:02 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id u22sm13250363pgi.85.2020.09.15.23.26.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:26:02 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: convert tasklets to use new tasklet_setup()
 API
Date: Wed, 16 Sep 2020 11:55:53 +0530
Message-Id: <20200916062553.58532-1-allen.lkml@gmail.com>
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
 drivers/staging/ks7010/ks7010_sdio.c | 6 +++---
 drivers/staging/ks7010/ks_hostif.c   | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 6b2660c94f4e..78dc8beeae98 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -405,9 +405,9 @@ int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p, unsigned long size,
 	return result;
 }
 
-static void rx_event_task(unsigned long dev)
+static void rx_event_task(struct tasklet_struct *t)
 {
-	struct ks_wlan_private *priv = (struct ks_wlan_private *)dev;
+	struct ks_wlan_private *priv = from_tasklet(priv, t, rx_bh_task);
 	struct rx_device_buffer *rp;
 
 	if (rxq_has_space(priv) && priv->dev_state >= DEVICE_STATE_BOOT) {
@@ -618,7 +618,7 @@ static int trx_device_init(struct ks_wlan_private *priv)
 	spin_lock_init(&priv->tx_dev.tx_dev_lock);
 	spin_lock_init(&priv->rx_dev.rx_dev_lock);
 
-	tasklet_init(&priv->rx_bh_task, rx_event_task, (unsigned long)priv);
+	tasklet_setup(&priv->rx_bh_task, rx_event_task);
 
 	return 0;
 }
diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index eaaf6a5440a9..8bc3b7d8d3d5 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -2205,9 +2205,9 @@ static void hostif_sme_execute(struct ks_wlan_private *priv, int event)
 }
 
 static
-void hostif_sme_task(unsigned long dev)
+void hostif_sme_task(struct tasklet_struct *t)
 {
-	struct ks_wlan_private *priv = (struct ks_wlan_private *)dev;
+	struct ks_wlan_private *priv = from_tasklet(priv, t, sme_task);
 
 	if (priv->dev_state < DEVICE_STATE_BOOT)
 		return;
@@ -2258,7 +2258,7 @@ static inline void hostif_sme_init(struct ks_wlan_private *priv)
 	priv->sme_i.qtail = 0;
 	spin_lock_init(&priv->sme_i.sme_spin);
 	priv->sme_i.sme_flag = 0;
-	tasklet_init(&priv->sme_task, hostif_sme_task, (unsigned long)priv);
+	tasklet_setup(&priv->sme_task, hostif_sme_task);
 }
 
 static inline void hostif_wpa_init(struct ks_wlan_private *priv)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
