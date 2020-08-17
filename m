Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 950952462EE
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D1418538A;
	Mon, 17 Aug 2020 09:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JUY4pcUmeTR9; Mon, 17 Aug 2020 09:19:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2AAA853FF;
	Mon, 17 Aug 2020 09:19:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6FFE1BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 947EA204C1
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IkcSfh6UR5Ye for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:19:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 85578204B2
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:19:45 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k13so7181238plk.13
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rg9O+UuIrcRklqdLDyvqN900SVFxVyljAa/s7srCNnQ=;
 b=WvuNpwFGNWbf3ugG14n+zwKOY/otFa6nSLps1Uk3WhYO9QhlgfX29+70gj4yecSVqe
 YmEaWyKwvwZLdqCS1f4rjFzeI/WYV2mrJXFqK7u1fv3j1mD6vv7ArpSQ8eB9kebxavUo
 v4gjm/SQe2dmKaNUs5jSYqEpMcOQLTy1XStSEI/HRZPc81UrOC06O4IvkZlb9P+d+J9+
 6iZP3dRMy48wvQtGHCCdONIoXtX+tgg7bwCEGbZzuseWjZ9rC+VhjkH7FoBRe7RFBqof
 Eu7g0wB9F52zpe5wgpjT7872Gbi0ZB7cwZGvpBfTBYz4nR6UMl9C43xvhapmPwtLTJTg
 rU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rg9O+UuIrcRklqdLDyvqN900SVFxVyljAa/s7srCNnQ=;
 b=FkiMWsxWk5PBJ5t1hcXRgW9QnGte2rIOAIvfmZd17zcjQIIS/TJ6Xxc3qHU9VHaolV
 OsvXM7x6AgGwE+EvbJoF6LmE8fyVAGVEpboV2Vcrqb2cfpHl39FqqZ6fCLr6tzdUw++8
 3Mo8tG6ZYGov1YE70F18msmZCXamPpe4CkZdG3ZShMxy5Cw0OvMiJuetMaOzGbfBvb/4
 4Xh1MK2uxQrWPRNqypr7uoBeFo3gDOhjSuNDqmpCHfAfxGpkurjTs8jBkdkiuoqys9SO
 sk9VUUWk6lDr65JZeom7fkPDpq4FIvxl3uKPQjMrxNDuTMjev9JKfd+WN3wB8AxHGmX+
 MonQ==
X-Gm-Message-State: AOAM531dKLpTggYPQPMt/dCABFSdodXA8BkEUrkBag+2bNrKtnt1dvSX
 uKsxF/pZ+oEVgrJQUY0c1Sk=
X-Google-Smtp-Source: ABdhPJxVPsBMIEeexKvgRfN8Y85NhtB5FsOgXp8HBPraiCyANuba28QRU7wOPQwsX7fudbCrO/coPA==
X-Received: by 2002:a17:902:6b05:: with SMTP id
 o5mr10459515plk.173.1597655985094; 
 Mon, 17 Aug 2020 02:19:45 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:44 -0700 (PDT)
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
Subject: [PATCH 1/2] memstick: jmb38x: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:09 +0530
Message-Id: <20200817091617.28119-15-allen.cryptic@gmail.com>
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
 drivers/memstick/host/jmb38x_ms.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/memstick/host/jmb38x_ms.c b/drivers/memstick/host/jmb38x_ms.c
index 4a6b866b0291..2bcf5ce113bd 100644
--- a/drivers/memstick/host/jmb38x_ms.c
+++ b/drivers/memstick/host/jmb38x_ms.c
@@ -603,10 +603,10 @@ static void jmb38x_ms_abort(struct timer_list *t)
 	spin_unlock_irqrestore(&host->lock, flags);
 }
 
-static void jmb38x_ms_req_tasklet(unsigned long data)
+static void jmb38x_ms_req_tasklet(struct tasklet_struct *t)
 {
-	struct memstick_host *msh = (struct memstick_host *)data;
-	struct jmb38x_ms_host *host = memstick_priv(msh);
+	struct jmb38x_ms_host *host = from_tasklet(host, t, notify);
+	struct memstick_host *msh = host->msh;
 	unsigned long flags;
 	int rc;
 
@@ -868,7 +868,7 @@ static struct memstick_host *jmb38x_ms_alloc_host(struct jmb38x_ms *jm, int cnt)
 	host->irq = jm->pdev->irq;
 	host->timeout_jiffies = msecs_to_jiffies(1000);
 
-	tasklet_init(&host->notify, jmb38x_ms_req_tasklet, (unsigned long)msh);
+	tasklet_setup(&host->notify, jmb38x_ms_req_tasklet);
 	msh->request = jmb38x_ms_submit_req;
 	msh->set_param = jmb38x_ms_set_param;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
