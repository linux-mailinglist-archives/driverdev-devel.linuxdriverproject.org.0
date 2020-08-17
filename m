Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AED024627E
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:17:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F351921515;
	Mon, 17 Aug 2020 09:17:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2sPAeZdv-4r2; Mon, 17 Aug 2020 09:17:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9EB94204E0;
	Mon, 17 Aug 2020 09:17:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D6911BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 19B7D87647
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5d5fI+75CzQ for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:17:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91C5887619
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:17:45 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id ep8so7403323pjb.3
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Mo6iICj1w8TKwOisUCBNzTZG5p5dM66mXRaY4cwKyZk=;
 b=TzbwEFTqX0QCsBFflLiO6trddpNRzDxFXlyalb8p8shAuNzSqnVRPY8vMtBs1W5gGO
 YUc9r1hZWkAsv9H25E5N7kwqFWChbTSHzlTwFhWkQtf63DEW68snGk4kLIJ5B50DmJxW
 MWiO1udraHvmpV1CUmZxnsCDK3iuigHsru9yj+Oquzzzyly4+EM9iRLcN2KRuZWEdlkQ
 fk0Czl4+kqYHd4k4r0smEt/HwPMvVApbc9poEuzVer5sNiD49xlJWmv3Z+GjWTQ1m5b+
 aFLAe1vugsFxn+AMoHEAGT8072rZH7m2jZyN/wKgUUmGiQtrTmT5nZIW44CYFt5Ph9RF
 ifXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Mo6iICj1w8TKwOisUCBNzTZG5p5dM66mXRaY4cwKyZk=;
 b=STeZ3JqsXz9rA8m0U19tboABXvLmpvqVrU7Elx/P+nlEt2gQC+DdFgUJp2ye+Ly4o1
 dGP92yY5EWipECDTBXzKZckxR9CjhXaCsiOOWGqAE7gb+SlFJTG01vRUc8v6sAD2rwJG
 s2Q/5NOKjd0Td0Ki+5VYYC9NB23JxG2JYfReU74t3lUVF8yW6KkxSx0sedX9uqSeCDes
 oDTYqzEmnoCm3SjLQwSiWFD0NAmsvi5dEVABOdghAljYCbH8Bxz/YdEtxMMQOh45qb5M
 BpDnRpFFh0dINQWQXErS+q40+UglHi6BN60Y6G5PBW1BXJFyzIXTOMfiqA1IzEH0iWxq
 663g==
X-Gm-Message-State: AOAM5319uTcxHEal3qU4imVlXb6AfLY2kmoRlVCOsQ9Mq4SsRyhihyO4
 rFwrymI2qUg0zJZhaXUtOpE=
X-Google-Smtp-Source: ABdhPJwq6UEku9ZvxUlcSd9v3lLdDcS44qfn7fyf+CsiORE4iW8DsxOdwJSiRT3OcMi8Q3GfQoOtrg==
X-Received: by 2002:a17:90a:2210:: with SMTP id
 c16mr12286360pje.65.1597655865119; 
 Mon, 17 Aug 2020 02:17:45 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.17.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:17:44 -0700 (PDT)
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
Subject: [PATCH] drivers: ntb: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:00 +0530
Message-Id: <20200817091617.28119-6-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
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
 drivers/ntb/ntb_transport.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
index e6d1f5b298f3..ab3bee2fc803 100644
--- a/drivers/ntb/ntb_transport.c
+++ b/drivers/ntb/ntb_transport.c
@@ -273,7 +273,7 @@ enum {
 #define NTB_QP_DEF_NUM_ENTRIES	100
 #define NTB_LINK_DOWN_TIMEOUT	10
 
-static void ntb_transport_rxc_db(unsigned long data);
+static void ntb_transport_rxc_db(struct tasklet_struct *t);
 static const struct ntb_ctx_ops ntb_transport_ops;
 static struct ntb_client ntb_transport_client;
 static int ntb_async_tx_submit(struct ntb_transport_qp *qp,
@@ -1234,8 +1234,7 @@ static int ntb_transport_init_queue(struct ntb_transport_ctx *nt,
 	INIT_LIST_HEAD(&qp->rx_free_q);
 	INIT_LIST_HEAD(&qp->tx_free_q);
 
-	tasklet_init(&qp->rxc_db_work, ntb_transport_rxc_db,
-		     (unsigned long)qp);
+	tasklet_setup(&qp->rxc_db_work, ntb_transport_rxc_db);
 
 	return 0;
 }
@@ -1685,9 +1684,9 @@ static int ntb_process_rxc(struct ntb_transport_qp *qp)
 	return 0;
 }
 
-static void ntb_transport_rxc_db(unsigned long data)
+static void ntb_transport_rxc_db(struct tasklet_struct *t)
 {
-	struct ntb_transport_qp *qp = (void *)data;
+	struct ntb_transport_qp *qp = from_tasklet(qp, t, rxc_db_work);
 	int rc, i;
 
 	dev_dbg(&qp->ndev->pdev->dev, "%s: doorbell %d received\n",
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
