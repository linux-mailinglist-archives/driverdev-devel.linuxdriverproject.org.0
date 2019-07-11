Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEF665EC6
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 19:39:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B88F22654;
	Thu, 11 Jul 2019 17:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9GzirksGxEZg; Thu, 11 Jul 2019 17:39:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1CA43204C3;
	Thu, 11 Jul 2019 17:39:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE1891BF271
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 17:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BB13288162
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 17:39:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x-gy3yleBXzJ for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 17:39:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0EBD68815D
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 17:39:41 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id d79so4250895qke.11
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 10:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wzqHLodjklfHBMQ2oXwe3rSiKOixJEtNc2HYoaPd72g=;
 b=KMt8nkUKKA3uNV7EXX0FRWWqjZoFiTLUSIlTfEtUCMpKw3a1tDgd75azHHO1rVn4cz
 9xRJWnkyXg+ABgLeUnfO9S03qDAIxen6nJiXSH8yFDBkhKaLcfV2bT2LG9MmmjvuCkt9
 AvZzz17tqWEvpMsVedJYNIdVKeRqKwmhcCD66UA7YAjVRKjGzK1pPEQ7TCpAZgKGRR47
 WtZ8RoOesLb/iuIlLx4c4wTeoIk11eZe2g8SaVuCZUJRhEpwezC2+aJblwwHvM/ponVG
 ZLT9wbQEaGSl55GF260PK21NXHXc0GMcfCB/KVMQC/J9tkWq9XHGSw+wl/3W/8Lb3WsU
 E0Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wzqHLodjklfHBMQ2oXwe3rSiKOixJEtNc2HYoaPd72g=;
 b=afxXnWd/H/5aH/rPWQTJrqels0n2wH2rFxGya+yK4q01aRjJiQsv8UJUCkzOVfk3Ss
 iXRLJf4GGuUuNEu6q4VPzOICdhiYkdnjQDPAB9F1Sep8DZKUwicFGXl1MGHKKHrmzRWG
 xMo9nc8IggwrS/fUx/FPqF91xAJbuSyDDe5GGBsXQOl186PxKnINS0ZEV/bbGLvVB97d
 +A5N40aL22z5FANCSOjffQgyuLg4Nc9YoZpOBMG6FLtu8XEZvQ/8IEPSQf/94Q9OW9KX
 e2l0Bk7TO5DMu6sRnywAmGepdBKz/R4xHJzCaRar1lCk0oEpWwqz+x2z6q3N1we4yCZp
 9RJw==
X-Gm-Message-State: APjAAAVFImwoaTdDI4iIfd1k3WcPvvEXxYI2LI4vIxDHmoNDGVxz16ia
 L2POyA+DEdJ0kRPYiZ/lWQ==
X-Google-Smtp-Source: APXvYqy/EP/CSPda0hTxfFy92POdFWAYBW2oeddiFyl8zyVPrCCXK2k0Mo8FTGCs+Hrkne/W6zE2Yw==
X-Received: by 2002:a37:624b:: with SMTP id w72mr3124272qkb.368.1562866780185; 
 Thu, 11 Jul 2019 10:39:40 -0700 (PDT)
Received: from localhost.localdomain (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.googlemail.com with ESMTPSA id i23sm2266094qtm.17.2019.07.11.10.39.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 10:39:39 -0700 (PDT)
From: Keyur Patel <iamkeyur96@gmail.com>
To: 
Subject: [PATCH v2] staging: most: remove redundant print statement when 
Date: Thu, 11 Jul 2019 13:39:12 -0400
Message-Id: <20190711173915.24200-1-iamkeyur96@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190711110809.17089-1-iamkeyur96@gmail.com>
References: <20190711110809.17089-1-iamkeyur96@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Suresh Udipi <sudipi@jp.adit-jv.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Colin Ian King <colin.king@canonical.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, iamkeyur96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This print statement is redundant as kfifo_alloc just calls kmalloc_array
and without the __GFP_NOWARN flag, already does a dump_stack().

Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
---
Changes in v2:
- Edit subject line.
---
 drivers/staging/most/cdev/cdev.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index d0cc0b746107..bc0219ceac50 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -463,10 +463,9 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 	spin_lock_init(&c->unlink);
 	INIT_KFIFO(c->fifo);
 	retval = kfifo_alloc(&c->fifo, cfg->num_buffers, GFP_KERNEL);
-	if (retval) {
-		pr_info("failed to alloc channel kfifo");
+	if (retval)
 		goto err_del_cdev_and_free_channel;
-	}
+
 	init_waitqueue_head(&c->wq);
 	mutex_init(&c->io_mutex);
 	spin_lock_irqsave(&ch_list_lock, cl_flags);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
