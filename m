Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3685229E54
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 19:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE850882F1;
	Wed, 22 Jul 2020 17:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w2r-ELmfb-L3; Wed, 22 Jul 2020 17:20:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93D9488161;
	Wed, 22 Jul 2020 17:19:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 729AE1BF591
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 17:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C88E20477
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 17:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WgcYM8WuinVa for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 17:19:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 81DF520425
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 17:19:56 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 184so2738786wmb.0
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 10:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=U9D+0Ct1EtIB5tMzgMoQL7ukxnL4Apd61YzkKS86VhM=;
 b=DJxTsMo9lMr3Kx1STp3oPnKHS4WatHi1vqKHjfXy0eJid1QxPl78X1Og4P97cYb6yS
 MzuB0zji7KW4nucHZo2iilJMfS6nMNdvwocoA69xIhtVWWjYejtkTtxLeUAIvT757+Nf
 HMb0AwX4k8F9m3HEQE1arOxAhtTGX4a6L/ZXAdpcjDQHclSF7yBbOesJMyL3md8OY9my
 w/lFX/dkk/6hb4chP1quW4Tc2RP5AlIqwQqds8zfOT1Lgq/r3W9U6btzxEUNnBdL+u8v
 5EBMcBv4gG5GIgsmguayN5ZhTKW0el+vM0pxOMsfQLSVmYY4eDoLRwCG2fZBw4RHCXC2
 EQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=U9D+0Ct1EtIB5tMzgMoQL7ukxnL4Apd61YzkKS86VhM=;
 b=mAPF43zoJeNJjtpC7JbEGgGNpuD+1ILx1Bc7eg5qTA2ySInG3n71WPjKaMawMKNTte
 zXwrBswEQhREVbnv3P37l4wsToiTtYP9XDA+DDh9KRZFKz6rb6hieo1IzNYNp3qzzJFW
 /YpHrpup+VS2fK40EYaSgY/V1Been2/ET0EmrY5UODkFyXIbiPcYtFCZC0Tm0nSNrgHN
 87HME3dQpjvxxkXUwsveekXokNf5dGulHLMq+L0+aI6BnYMryIMRnZLaPZsXmrLOAubH
 GrAdAgq8wEfMje41iJj3kr/43NfQ1RKnmbTlu3b2oCC4ka5HKLNKVbGOdxpzpKq3RZ4A
 b0Sw==
X-Gm-Message-State: AOAM531E8MORzZ2pbGQlDBNW2W+KHSTYI3iRdL0ahvVyMqUeXf8n2vEy
 vfXDLOqNmVssteZwZ2Wb0eE=
X-Google-Smtp-Source: ABdhPJyLmldvk3KZr3KWQewC+IuIqH/xcyEwEqpjjw81ai9FHwrzinO3m7Z03bdk0T6SMxkpogj+TA==
X-Received: by 2002:a7b:c408:: with SMTP id k8mr643545wmi.152.1595438394879;
 Wed, 22 Jul 2020 10:19:54 -0700 (PDT)
Received: from PKL-UANJUM-LT.pkl.mentorg.com ([103.150.154.211])
 by smtp.gmail.com with ESMTPSA id c10sm632640wro.84.2020.07.22.10.19.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 Jul 2020 10:19:54 -0700 (PDT)
Date: Wed, 22 Jul 2020 22:19:50 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: Indent with tabs instead of spaces
Message-ID: <20200722171950.GA6176@PKL-UANJUM-LT.pkl.mentorg.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove a coding style error. It makes code more readable.

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
 drivers/staging/octeon/ethernet-defines.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
index ef9e767b0e2e..40f91c78e462 100644
--- a/drivers/staging/octeon/ethernet-defines.h
+++ b/drivers/staging/octeon/ethernet-defines.h
@@ -27,14 +27,14 @@
 #define REUSE_SKBUFFS_WITHOUT_FREE  1
 #endif
 
-#define USE_ASYNC_IOBDMA            (CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE > 0)
+#define USE_ASYNC_IOBDMA		(CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE > 0)
 
 /* Maximum number of SKBs to try to free per xmit packet. */
-#define MAX_OUT_QUEUE_DEPTH 1000
+#define MAX_OUT_QUEUE_DEPTH		1000
 
 #define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(u32))
 #define FAU_NUM_PACKET_BUFFERS_TO_FREE (FAU_TOTAL_TX_TO_CLEAN - sizeof(u32))
 
-#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS + 1)
+#define TOTAL_NUMBER_OF_PORTS		(CVMX_PIP_NUM_INPUT_PORTS + 1)
 
 #endif /* __ETHERNET_DEFINES_H__ */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
