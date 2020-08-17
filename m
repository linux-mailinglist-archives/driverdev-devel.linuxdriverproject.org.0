Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A99246300
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:20:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0092C21515;
	Mon, 17 Aug 2020 09:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ax+3HZfU7lHd; Mon, 17 Aug 2020 09:20:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 57903204C1;
	Mon, 17 Aug 2020 09:20:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E1141BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47E7486E88
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tT9rOQr+-6VL for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:20:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5CC286CC5
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:20:00 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id x6so7813195pgx.12
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lUWUV2v5oTJVUGMm6xf12JUfYyiWzcefGfdAtQk2jwM=;
 b=mbKVOHJMzNpskDzHydVD5JZdcRfrw+xd2+Uv78XbvKMc+387psZ2V2hk4qrHnsS81T
 /zH73TElq4axoclHQIy0bA2CbV9hfC8GYC+eakgtOktC3A5XsD2xiPjCrklKsR3XFyFd
 fsIOloQVGdK6RU/6EWDMjEAfDxSohJd//jLLtalmI0rGbeu1xwfLvpwSymywSxSBVX3G
 uhosJxEfiUcPuUNVJvS0yzIPELIzVumGhuE5Qx9Ojw3cmc6kmaA4ZQewhXRClGiu+tq2
 Aj/I10puZjlvAygrQvpRDOADkQfmJxn+4bXKvfXCvf9sZS7FhECvv/YiYSa/EN75dMVj
 0suw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lUWUV2v5oTJVUGMm6xf12JUfYyiWzcefGfdAtQk2jwM=;
 b=c5xcycXw3VyPRj9sg70i3Ni+sVcYdz6Sc/Z5gIgV0wnwudWPz0eLevfi0AdUN72qCH
 UKKjKqwMtgs1WA6Wvr2XDasZILw5Z5gqPTbYEXO78lgQhAm2Kr53lGbb5eqs+/LJp5/7
 PApOWAzEn+XIIpqD4VI6j4+lESFNxBbdZn1DUlNCqoBliG4iIiXAjV2gcdbgkluFOjcp
 0D4BeT+BatCTipY1cnz71zQFvZzFsGH1de++k/7VI/FrAwgTuQNzy8uxXMYcwR/4GPOF
 AZueywBcbqSPck2kMnjL1VXrvnUoaXpEFqVLRuXmQAWnpQlAIJLN7ye+PI4XaGTRS1iP
 4m5w==
X-Gm-Message-State: AOAM531e3LzXq8lLWHgG0oHC7dnZx5Q0R+FGqAzQqB4dJr+EYpGBqJL7
 ry7UqFh0wQRf0f6P87CH488=
X-Google-Smtp-Source: ABdhPJxQcfdrrCrfZXVUBP2XgAqTEjdFaPRIHC7BcYbo0cXrAVQPSPy8pM2ZDmwAm4cu8q6kfjMCtw==
X-Received: by 2002:a62:7785:: with SMTP id
 s127mr10452297pfc.196.1597656000455; 
 Mon, 17 Aug 2020 02:20:00 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:59 -0700 (PDT)
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
Subject: [PATCH 1/2] misc: ibmvmc: convert tasklets to use new tasklet_setup()
 API
Date: Mon, 17 Aug 2020 14:46:10 +0530
Message-Id: <20200817091617.28119-16-allen.cryptic@gmail.com>
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
 drivers/misc/ibmvmc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/ibmvmc.c b/drivers/misc/ibmvmc.c
index 2d778d0f011e..347278c1a5e4 100644
--- a/drivers/misc/ibmvmc.c
+++ b/drivers/misc/ibmvmc.c
@@ -2064,10 +2064,10 @@ static void ibmvmc_handle_crq(struct ibmvmc_crq_msg *crq,
 	}
 }
 
-static void ibmvmc_task(unsigned long data)
+static void ibmvmc_task(struct tasklet_struct *t)
 {
-	struct crq_server_adapter *adapter =
-		(struct crq_server_adapter *)data;
+	struct crq_server_adapter *adapter = from_tasklet(adapter, t,
+							  work_task);
 	struct vio_dev *vdev = to_vio_dev(adapter->dev);
 	struct ibmvmc_crq_msg *crq;
 	int done = 0;
@@ -2150,7 +2150,7 @@ static int ibmvmc_init_crq_queue(struct crq_server_adapter *adapter)
 	queue->cur = 0;
 	spin_lock_init(&queue->lock);
 
-	tasklet_init(&adapter->work_task, ibmvmc_task, (unsigned long)adapter);
+	tasklet_setup(&adapter->work_task, ibmvmc_task);
 
 	if (request_irq(vdev->irq,
 			ibmvmc_handle_event,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
