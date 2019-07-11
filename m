Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D215965F05
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 19:51:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 98BC7226B0;
	Thu, 11 Jul 2019 17:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OCs-tuZBsofY; Thu, 11 Jul 2019 17:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F194C204C3;
	Thu, 11 Jul 2019 17:51:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 652DB1BF271
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 17:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F04686DDC
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 17:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7IS1kycV7wt for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 17:51:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C9AAC86C24
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 17:51:08 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id 44so5185953qtg.11
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 10:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WTCsPEunogKzV2kwceBfPefzG4vpX82bq73Wlt3bmJo=;
 b=u1jW4w1cKMBrfRcTai3sUouwYbdIldXVywH50mU5qX75xOwSpd4OkMjCkdAdeOMXLO
 /4N0OZPut0MTuvdDKDpwdwd/DjPUjelg1dxc/GJZmH+UeU250aM+HJhNmfy46rlRyUFs
 rieToPJD45Nh/iu5bMdp2QMeyqUI9xm3Ys4om9tNSOEYnrW1G1+kzzHH90bsINRDrCLn
 17RUlgAMrjF6ZfyZ/HwjbWmUT0D9Cu9hVigKYBIN6pqZt9Wizwq/9kCom9IznQjANl9Y
 el9y4jX1GpxDwyHuzhi/SoQBd7cjB/Xr62nbYybSBO1CWNy4wWtR/Cek9+aXcpwKgTPu
 ah/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WTCsPEunogKzV2kwceBfPefzG4vpX82bq73Wlt3bmJo=;
 b=mxQf/vf087AQdP+IdSNZ4k4hvAX1a+VmFbH49YqGtnFEO0bbsS/j2CmZwlcfS8OH6K
 FoH7r59EcMxYuoTZT/lyLgorx/BxtYQRF44Aa361jAcsVhUJO97FJDle/pL3JIUmWAR7
 UYuorPWUyfJXZJNm1H4+Nas5Druzwr/OuVz5ANBcQz2aQWMwrjv5HDvz1YuR3rkQPr/k
 o3yj9r05uNqDIlyWx5lD5KNuhhi2ZVk6IW2ouxGPH+ElIhdZq6iWnlSkenRLHzZ+PGUY
 ACo+MQurQXbzs2vHCfugzRARMXcB57eu8RWl6sGPSM3bJsxtJhU109I4Mt4zLHN+0COs
 4wmA==
X-Gm-Message-State: APjAAAW4i6JbR/Gb+Opjx95W9VlF8tMzP5oeAYGPTOCxCbF8qsavhsqe
 3lEKQTCQ9aGrA0zSCya67w==
X-Google-Smtp-Source: APXvYqxfR3f/fCPWThOEXsziSCmvYCJ6lC/eIaJ6hDOt9KP+p4C67YjxDl6skpF6wSR1/KtoI+UEbw==
X-Received: by 2002:aed:3ed8:: with SMTP id o24mr2679693qtf.252.1562867467751; 
 Thu, 11 Jul 2019 10:51:07 -0700 (PDT)
Received: from localhost.localdomain (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.googlemail.com with ESMTPSA id g54sm2925494qtc.61.2019.07.11.10.51.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 10:51:07 -0700 (PDT)
From: Keyur Patel <iamkeyur96@gmail.com>
To: 
Subject: [PATCH v3] staging: most: remove redundant print statement when
 kfifo_alloc fails
Date: Thu, 11 Jul 2019 13:50:52 -0400
Message-Id: <20190711175055.25157-1-iamkeyur96@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190711173915.24200-1-iamkeyur96@gmail.com>
References: <20190711173915.24200-1-iamkeyur96@gmail.com>
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
 Colin Ian King <colin.king@canonical.com>, iamkeyur96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This print statement is redundant as kfifo_alloc just calls kmalloc_array
and without the __GFP_NOWARN flag, already does a dump_stack().

Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
Changes in v3:
- fix checkpatch warrning
---
 drivers/staging/most/cdev/cdev.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index d0cc0b746107..724d098aeef0 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -463,10 +463,8 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 	spin_lock_init(&c->unlink);
 	INIT_KFIFO(c->fifo);
 	retval = kfifo_alloc(&c->fifo, cfg->num_buffers, GFP_KERNEL);
-	if (retval) {
-		pr_info("failed to alloc channel kfifo");
+	if (retval)
 		goto err_del_cdev_and_free_channel;
-	}
 	init_waitqueue_head(&c->wq);
 	mutex_init(&c->io_mutex);
 	spin_lock_irqsave(&ch_list_lock, cl_flags);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
