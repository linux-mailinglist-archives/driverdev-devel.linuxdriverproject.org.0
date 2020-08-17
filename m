Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB4D2462B1
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8F2987E36;
	Mon, 17 Aug 2020 09:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EcyKmi0LdUs; Mon, 17 Aug 2020 09:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BEA0787D54;
	Mon, 17 Aug 2020 09:18:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 640511BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5EC0287647
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VUqc82S2Olhr for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:18:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC48D87619
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:18:25 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id f193so7917639pfa.12
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FQvu3zIKHcfDVUfKtSNhAC6ZzQDedEm/LuwK8bWrPeg=;
 b=D7eDa0sTjwHCA8r6MCWSFMRxFQkDRfX7e4fguBwE+NqCdLaBdvT8ONpLvgzAjxtVQT
 0ppL357zpK2cqmejsnz5VEqE9kmyIvsp/43Twv5a9NzWcoSYF0wGizjZ9zjUOZUarpa6
 Rc3XCG4Wm/C+XLOLCzBVfdIXQ90RWb8AEOKqZXhdPJ/NfRn3hfLtGberOYeprAHUwSJQ
 ulOOErg41MiOj1g2LNgno+3QMivuYXqc4mkuyqq2LhWdKpn3CpDymg1ZrwPxHiavkADA
 aWCo+QxkF5OeKgNSC4ix5Pl06VUDNeICDFdGAyaW4Q4qIj4LQJvAqaJseGgPjYZCbCYI
 stcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FQvu3zIKHcfDVUfKtSNhAC6ZzQDedEm/LuwK8bWrPeg=;
 b=Tb786Z4wCIynHd07w9iY+hpsREXnpcd/ENbqrHF5ydMkpaTqt3HABqYFVcfpZo1yr8
 +eeBhlc4LWIXHpqzfm0wXIdFtSEFM+h/Y78jLdCb8Htc0P8H+2vErIC+PsuFlFWFbfmh
 BaxLS10bSopNDeMVmtgiByRqaE8A81iepGiXdNSMuLUAjuoxs8eyTm8uCEFZtwO0KV4S
 +6F9Xh0CCE+sSTQnsyVbaPJ4oAfunWxLYs+cB90SQUywdJ6CYqSK9PmkdcXI6exX0OFo
 ExBHmGO19fkWPlF2N1E1HAPbdM17g9duRK/AIAHw9/shmp03SodgAhxKCyn5D4yRaLIR
 xbOA==
X-Gm-Message-State: AOAM532/66+sz6jufypzGElQe+xA2N/C87uV/diibpCdK5Y5H9uvLJ0K
 gbE3bATHRxV9FiMl8rpgfLc=
X-Google-Smtp-Source: ABdhPJwtRhOmhjCwN7IXEf1tWrXGn9elZdq5DEvcUP+b4kgMpyQCKqzdT+NRfaecTuV91gmR9bNLEw==
X-Received: by 2002:aa7:8c42:: with SMTP id e2mr10326531pfd.181.1597655905521; 
 Mon, 17 Aug 2020 02:18:25 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:18:24 -0700 (PDT)
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
Subject: [PATCH] drivers: vme: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:03 +0530
Message-Id: <20200817091617.28119-9-allen.cryptic@gmail.com>
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
 drivers/vme/bridges/vme_fake.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/vme/bridges/vme_fake.c b/drivers/vme/bridges/vme_fake.c
index 6a1bc284f297..38dd5f949cd0 100644
--- a/drivers/vme/bridges/vme_fake.c
+++ b/drivers/vme/bridges/vme_fake.c
@@ -90,13 +90,13 @@ static struct device *vme_root;
 /*
  * Calling VME bus interrupt callback if provided.
  */
-static void fake_VIRQ_tasklet(unsigned long data)
+static void fake_VIRQ_tasklet(struct tasklet_struct *t)
 {
 	struct vme_bridge *fake_bridge;
 	struct fake_driver *bridge;
 
-	fake_bridge = (struct vme_bridge *) data;
-	bridge = fake_bridge->driver_priv;
+	bridge = from_tasklet(bridge, t, int_tasklet);
+	fake_bridge = bridge->parent;
 
 	vme_irq_handler(fake_bridge, bridge->int_level, bridge->int_statid);
 }
@@ -1098,8 +1098,7 @@ static int __init fake_init(void)
 	/* Initialize wait queues & mutual exclusion flags */
 	mutex_init(&fake_device->vme_int);
 	mutex_init(&fake_bridge->irq_mtx);
-	tasklet_init(&fake_device->int_tasklet, fake_VIRQ_tasklet,
-			(unsigned long) fake_bridge);
+	tasklet_setup(&fake_device->int_tasklet, fake_VIRQ_tasklet);
 
 	strcpy(fake_bridge->name, driver_name);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
