Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F412DDF37
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Dec 2020 08:48:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9746B87A67;
	Fri, 18 Dec 2020 07:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K9AHrFXDAujS; Fri, 18 Dec 2020 07:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50AD0879E4;
	Fri, 18 Dec 2020 07:48:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99ED91BF396
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 07:48:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 829B82E119
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 07:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yT150AxBUaEw for <devel@linuxdriverproject.org>;
 Fri, 18 Dec 2020 07:48:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by silver.osuosl.org (Postfix) with ESMTPS id CD1202E10E
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 07:48:08 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id x18so968814pln.6
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 23:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=oUHJKaEjQz6SHPD5G/0+4SyVkB0IuZj3vdw75htBcd4=;
 b=NGYqkkYoKGyA22LiY2LbS80hRK4pgC9ZvkoxmFJn8KIqLlwQFCVFWvVsY0RVST3mzx
 XmSfwN1skdmR2QtF1JV+zksX0u565GOUo1r2NCvuOru5wwrrq5C7nI3XSLr4YQMOrOzk
 yTDr9gReX1EWjQTMduuTWAZ6U1uK6zJMu3Zf0zQ7YY4L3EW1nen1kVRWtfFa+tPhvsbl
 S7LrvLMPja9zqsc5Vw9joSvXZ6OxfpUGlZUkskvwhPBLnehAV+vJjdG7xNDRpY9RCeVf
 NtFLbarvdqhfsXqgHm83Dlcr7nWGytHgbj3YseqozICqd0aZtdSokA1twTuL68guHHGy
 YEuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=oUHJKaEjQz6SHPD5G/0+4SyVkB0IuZj3vdw75htBcd4=;
 b=j6z3ZPvk47QUwU0zSoTNKng553VWqMbD+cCxRHVNT5gZXQt8Q6zSYy3ybkwrPliukC
 EUK5tz6hXrEeUYHED6mxDsvATg4muRkNEk+ENJGzYVTAvWIZwPhr0QhxFpGj/DEXDb2E
 0kRIIxtimI6m6DKDNRbbbsl1YGQuJVof7smfP/4V/LdtDD8ghLu1n+ZU3Kak2WBh6scQ
 EtwjOiJXT4dy3BJHCSH9SEQ1LNgp0X99HInVkV9/Hl2IJrGcTkMT3hl3O2UYPwtvJF+S
 IlUSWXUUv+x+FEJdXTS6e93oRTxG0GGgDezneh9t6njTmK0L3YJQO5IcVenO99RRN6lF
 KHvg==
X-Gm-Message-State: AOAM532A15tFxhLvB2aKj/4+3y1KWcwEw9KMQm7WEo6n1mXtq/fIyUiH
 iNWcp35alY7sebopk8X1NCk=
X-Google-Smtp-Source: ABdhPJy7FsnGD6grCPgNwroicN2eY9oMa91vWAxOd3Zw5MRs/dhHuweuX6X2ggVggPews1bQ8SFi9w==
X-Received: by 2002:a17:90a:c301:: with SMTP id
 g1mr3145138pjt.150.1608277688423; 
 Thu, 17 Dec 2020 23:48:08 -0800 (PST)
Received: from bj03382pcu.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id d10sm7678114pfn.218.2020.12.17.23.48.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Dec 2020 23:48:07 -0800 (PST)
From: Huangzhaoyang <huangzhaoyang@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, devel@driverdev.osuosl.org,
 Zhaoyang Huang <zhaoyang.huang@unisoc.com>, linux-kernel@vger.kernel.org
Subject: [PATCH] driver: staging: count ashmem_range into SLAB_RECLAIMBLE
Date: Fri, 18 Dec 2020 15:47:48 +0800
Message-Id: <1608277668-3740-1-git-send-email-huangzhaoyang@gmail.com>
X-Mailer: git-send-email 1.7.9.5
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Zhaoyang Huang <zhaoyang.huang@unisoc.com>

Add SLAB_RECLAIM_ACCOUNT to ashmem_range cache since it has registered
shrinker, which make memAvailable more presiced.

Signed-off-by: Zhaoyang Huang <zhaoyang.huang@unisoc.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 74d497d..b79301f 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -893,7 +893,7 @@ static int __init ashmem_init(void)
 
 	ashmem_range_cachep = kmem_cache_create("ashmem_range_cache",
 						sizeof(struct ashmem_range),
-						0, 0, NULL);
+						0, SLAB_RECLAIM_ACCOUNT, NULL);
 	if (!ashmem_range_cachep) {
 		pr_err("failed to create slab cache\n");
 		goto out_free1;
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
