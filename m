Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0943F197E36
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 16:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED33B87ECB;
	Mon, 30 Mar 2020 14:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6w1KFmvNugmw; Mon, 30 Mar 2020 14:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4089487CD4;
	Mon, 30 Mar 2020 14:17:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44AD51BF40A
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4206987CD4
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3sTfjze4fwgY for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 14:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C111787B84
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:17:15 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id u12so8704174pgb.10
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 07:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1BA/+EzZUprzyKG2z2k8xv+DKN8kyB5d20DyklGct+U=;
 b=hEQTy+L5QUjHFFy9HvIuA862khwr+dcNTcnqGoX9MYD23rZtSH2WE1dFMUAJomBuEX
 9NoRKlLDQ9qBTZy43S4zEJGy7oCyQDNYVe5HHTcqjLPZv8+qPog5vCpY59V69NxT/pa0
 QdssDNJ3PiOKf0ydCgslpMlDgxDa3mBAYqpKfMsR/Bpc94HdF21MVPoS4L+xd8vLmcHq
 lVpbwqorBl6WMuPsyIe9kA2Fq/4rgy8JSYVtTGE9x4HvkSwempVi06XtJK9M1KxJM1P6
 f22VN0PFOjlhaU5GVr4PIdbinuHfmXmQGAQuOUfbkYpuwv1TKvSXABFZKSVoUN2scUJB
 +ywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1BA/+EzZUprzyKG2z2k8xv+DKN8kyB5d20DyklGct+U=;
 b=ppYyCbD3dgKGd6Qp33MNUGQxfS6WUnsIWDkFFJeMw6ESXxMKZCGDnrhDMLThqegXfz
 A2hf4bKJdX5TsGBf2pSVoV5GtK8qyFjwtL7J7K8J+QGIuE4RVU8tAI4VjK82WhgmbSSW
 y0F5WMTwoWG5Hh1tx/t3YQCfCTGJH8B8YaLUwLu85dyjfWVWVY3g5e75QghOD9M/xyxS
 z9gzZLYXR39HnUkQf/WREcMGIOp1AWg07fJfHk+HUDQAm6KQYrLUdN7s2NG7yIVm2LZJ
 76MCac0NdSxdFkkRAK1S3zQzCOc0aHeQ2XSsZIEjuj2jLc+lED7HkJT9J3NpOA7rLc4K
 q8GA==
X-Gm-Message-State: ANhLgQ257egRNsNj16dlZI7Coba8agKiRwvW9XdLr8rdFAltmAnXUNs/
 i8i7UjtzQxI8c7Bp8WjeJZI=
X-Google-Smtp-Source: ADFU+vtCjTYKqekOM0YDuD1qdXteoTtLiDzhYoTFy6qUg9m6sh/BwIAh7OT6nOcgScsMrNlivQrPSQ==
X-Received: by 2002:a63:790e:: with SMTP id u14mr12317600pgc.361.1585577835411; 
 Mon, 30 Mar 2020 07:17:15 -0700 (PDT)
Received: from localhost.net ([131.107.159.147])
 by smtp.googlemail.com with ESMTPSA id o3sm848855pgk.21.2020.03.30.07.17.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:17:14 -0700 (PDT)
From: ltykernel@gmail.com
X-Google-Original-From: Tianyu.Lan@microsoft.com
To: kys@microsoft.com, haiyangz@microsoft.com, sthemmin@microsoft.com,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 x86@kernel.org, michael.h.kelley@microsoft.com, wei.liu@kernel.org
Subject: [Update PATCH] x86/Hyper-V: Initialize Syn timer clock when it's
Date: Mon, 30 Mar 2020 07:17:08 -0700
Message-Id: <20200330141708.12822-1-Tianyu.Lan@microsoft.com>
X-Mailer: git-send-email 2.14.5
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
Cc: devel@linuxdriverproject.org, vkuznets@redhat.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Tianyu Lan <Tianyu.Lan@microsoft.com>

Current code initializes clock event data structure for syn timer
even when it's not available. Fix it.

Signed-off-by: Tianyu Lan <Tianyu.Lan@microsoft.com>
---
- Fix the wrong title.
 
 drivers/hv/hv.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
index 632d25674e7f..2e893768fc76 100644
--- a/drivers/hv/hv.c
+++ b/drivers/hv/hv.c
@@ -212,13 +212,16 @@ int hv_synic_alloc(void)
 		tasklet_init(&hv_cpu->msg_dpc,
 			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
 
-		hv_cpu->clk_evt = kzalloc(sizeof(struct clock_event_device),
-					  GFP_KERNEL);
-		if (hv_cpu->clk_evt == NULL) {
-			pr_err("Unable to allocate clock event device\n");
-			goto err;
+		if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
+			hv_cpu->clk_evt =
+				kzalloc(sizeof(struct clock_event_device),
+						  GFP_KERNEL);
+			if (hv_cpu->clk_evt == NULL) {
+				pr_err("Unable to allocate clock event device\n");
+				goto err;
+			}
+			hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
 		}
-		hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
 
 		hv_cpu->synic_message_page =
 			(void *)get_zeroed_page(GFP_ATOMIC);
-- 
2.14.5

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
