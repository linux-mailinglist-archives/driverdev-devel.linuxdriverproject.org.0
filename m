Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1864FE9466
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 02:05:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99BA585C5E;
	Wed, 30 Oct 2019 01:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62aVds79PvdT; Wed, 30 Oct 2019 01:05:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FCD085A9E;
	Wed, 30 Oct 2019 01:05:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CB971BF578
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:05:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 94C0F87AF4
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IgWhMAYUTtfY for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 01:05:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB9E8879F5
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 01:05:01 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 6so3161749wmf.0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 18:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fwKPYWxS6N7QQs8KHn31UhBaWlHrSb9chBUeYy6x7Uk=;
 b=IE+WGJ65rTS6ju3EWrohy9bqdrBkENHzz9f5O6saojD+N7g3h9zF5bFcB4j4bYQEPY
 j1HfttuBlcxc9Btwhls/5XmfWugAvMoHo+WoB9xddRFJ5WnAG4O2Y7ypcEPEKG/sAxxL
 UDZ2J3fjvjBMKrio3QN3h8vF1Ihv/tvHjA4asmzOE3ivWKavZWVszkG4mL0Jsdo2Klwl
 wlSfV4yq0vEoOmQoAL/MDCKjMM6UeEjsZe8Ur2dEABV9gppcSKTSffGXs4tJT6T9f2QS
 ReG5Z+JPkHtq2H7Xj8iruNUwRkag1xX2v2ykPYeqDD6V3VDrAO1VY8e31hBDm5IomxW4
 mpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fwKPYWxS6N7QQs8KHn31UhBaWlHrSb9chBUeYy6x7Uk=;
 b=Rh66Eaz5QxgjA27G2MX24T8Fa0X0axLfKwa/FhVBgh8J4YFhkYAEFDNiUKEZyo5hoE
 H2nBnN9a6h9ROak4apxW0+ffDuJWG5cqM+zNwfvpQ3GV2yV07epaIwTLRBquhQ7YLMQj
 7eSQEjevtOgg9Ec9U/QJA1Tu0jBHpRxuj46oiIDK2aZeIEvPdumwXU6iHjqSY7UqLfPe
 dbZDpSWx4vignrzA4yUVr7dnshpijSRnt77TZtFn6qPf78irAhVb+D/mcp0VCWWV26Pq
 4x8teOqHksZoP2gxCcSXu09y9Q8ZFKZAKTYAp4SyAOJ8KRxuiNj3Cm9NKYz5GruIm4e9
 91Kw==
X-Gm-Message-State: APjAAAUPGIiI4RHa7LKfliF9DREyL84t+MxecHZ91Ue0rozvTim9Erss
 I2E8htNwV04hPJtq9VJ5KxM=
X-Google-Smtp-Source: APXvYqwXDb27TdvZrFYc10PL5AKDWvitgT+FV88q6l91ekeTmqop9q9xnkH6Y557MAy6iGlNMAUuQg==
X-Received: by 2002:a1c:49d5:: with SMTP id w204mr6840822wma.111.1572397500249; 
 Tue, 29 Oct 2019 18:05:00 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id d11sm672744wrf.80.2019.10.29.18.04.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 18:04:59 -0700 (PDT)
From: Roi Martin <jroi.martin@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 4/6] staging: exfat: replace printk(KERN_INFO ...) with
 pr_info()
Date: Wed, 30 Oct 2019 02:03:26 +0100
Message-Id: <20191030010328.10203-5-jroi.martin@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191030010328.10203-1-jroi.martin@gmail.com>
References: <20191030010328.10203-1-jroi.martin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Roi Martin <jroi.martin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl warning:

	WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ...
	then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

Signed-off-by: Roi Martin <jroi.martin@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index aa0d492fc673..401f057fe924 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -396,7 +396,7 @@ static int ffsMountVol(struct super_block *sb)
 	if (i < 53) {
 #ifdef CONFIG_EXFAT_DONT_MOUNT_VFAT
 		ret = -EINVAL;
-		printk(KERN_INFO "EXFAT: Attempted to mount VFAT filesystem\n");
+		pr_info("EXFAT: Attempted to mount VFAT filesystem\n");
 		goto out;
 #else
 		if (GET16(p_pbr->bpb + 11)) /* num_fat_sectors */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
