Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B50E24624B
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:16:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B4B787698;
	Mon, 17 Aug 2020 09:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lCGZUVs+ve6Q; Mon, 17 Aug 2020 09:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2266C87666;
	Mon, 17 Aug 2020 09:16:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0644A1BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED4B0204C9
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cGMfhibDP1D1 for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:16:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 30D31204B2
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:16:41 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id e4so7524704pjd.0
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nYi1qCRVXukm3Vys4Ax0zzpvhrxgpQ9/OWRIEzi7jMM=;
 b=mxWi/elPlQYhLXMLOAt36tJYQ+Hp1VAtd/uz+Kc8cIdiewSdg8n95X+KYxSdWGZJ1y
 /1rHnM4HvYeEmKOOLXL2wTqM2vSxMsb9VJZkfdrjZ8c8pWQ4rrQImtoKQ977EHgQ+THx
 Aa919IaWGz3+LC2CnAhGPcCnKZKjEcT2ftL3tbor1l7DdNN51bTmd6wf3G7Uglbn9gd3
 IvO4ciTbor+qNIHbn5ZnArhfiWQHMjs284hcUdKxz9v7/11dHOTVFY1ki+iFopZAQ166
 233J/wFqybY2SkuhDb0GHf7Xk3e7tw+qSNZabUjFckMBu8dhIwFr7uUw3BLLKtx0v0Fq
 3HVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nYi1qCRVXukm3Vys4Ax0zzpvhrxgpQ9/OWRIEzi7jMM=;
 b=ZrYECahdwF7CuWyu21g8jGdpGjik9OtBfS3nAMde2GxzKxNpNN00igsQxYI2lq7hM+
 V8ZpyG35xNJCyeeNj+YLOScXVQJ0TldnZjH9fE0+b7TKoDjWXe3/LTH6R4x16LB4pCiO
 znoZAEDC8NoHu9woOpd0Prrp0Alk+EXK4tIikeN74n1OfYpvwKx+SBXYovrcAm81ZEH1
 2CJ1NYcrrKjkK0AHs6mxjgsrgsEIly39/BrO9oTeMC4EZGHrISpU09vRlY1Y5tX7t1N+
 GgX7X+G9jqmlaC745I1nhjTIL1cKxpVR06S326zs5VTQEcJOF5cGAavGcoXw0r12Vi9h
 s/7Q==
X-Gm-Message-State: AOAM531Zz/0pdC5dc+iLU5Gt1LBJEnDBYV3yfjqjP60rwl7dsjKJEtHe
 k8Zum93MT1H1+qA48MfbC6k=
X-Google-Smtp-Source: ABdhPJx+wEvCOSvKZxezpdY6lLs7UvfZeX3QH5NUsgJeM5vKZGxtJnJRJpZ8+dEdqnJdMBLPa9KLfg==
X-Received: by 2002:a17:902:8495:: with SMTP id
 c21mr10840498plo.82.1597655800670; 
 Mon, 17 Aug 2020 02:16:40 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:16:39 -0700 (PDT)
From: Allen Pais <allen.cryptic@gmail.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
 3chas3@gmail.com, axboe@kernel.dk, stefanr@s5r6.in-berlin.de,
 airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org,
 James.Bottomley@HansenPartnership.com, kys@microsoft.com, deller@gmx.de,
 dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com,
 ulf.hansson@linaro.org, mporter@kernel.crashing.org, alex.bou9@gmail.com,
 broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
 mitch@sfgoth.com, davem@davemloft.net, kuba@kernel.org
Subject: [PATCH] arch: um: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:45:55 +0530
Message-Id: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, Romain Perier <romain.perier@gmail.com>,
 keescook@chromium.org, linux-parisc@vger.kernel.org,
 linux-ntb@googlegroups.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-atm-general@lists.sourceforge.net,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Allen Pais <allen.lkml@gmail.com>,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Allen Pais <allen.lkml@gmail.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 arch/um/drivers/vector_kern.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 8735c468230a..06980870ae23 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1196,9 +1196,9 @@ static int vector_net_close(struct net_device *dev)
 
 /* TX tasklet */
 
-static void vector_tx_poll(unsigned long data)
+static void vector_tx_poll(struct tasklet_struct *t)
 {
-	struct vector_private *vp = (struct vector_private *)data;
+	struct vector_private *vp = from_tasklet(vp, t, tx_poll);
 
 	vp->estats.tx_kicks++;
 	vector_send(vp->tx_queue);
@@ -1629,7 +1629,7 @@ static void vector_eth_configure(
 	});
 
 	dev->features = dev->hw_features = (NETIF_F_SG | NETIF_F_FRAGLIST);
-	tasklet_init(&vp->tx_poll, vector_tx_poll, (unsigned long)vp);
+	tasklet_setup(&vp->tx_poll, vector_tx_poll);
 	INIT_WORK(&vp->reset_tx, vector_reset_tx);
 
 	timer_setup(&vp->tl, vector_timer_expire, 0);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
