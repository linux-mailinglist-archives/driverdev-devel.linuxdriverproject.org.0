Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14104D38DF
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 07:52:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B2018883D;
	Fri, 11 Oct 2019 05:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P-Ax5oSxWuwm; Fri, 11 Oct 2019 05:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BA9B887FC;
	Fri, 11 Oct 2019 05:52:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19E751BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA49086E96
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uAeqdnvawRWN for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 05:52:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 698AF86EA2
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 05:52:12 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q10so5412927pfl.0
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 22:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wIIpGdRKdT3hjAKKgnZBguQ5qXVsyW6bN9Y5XxQyxMc=;
 b=f+xUOeyOxacA45AwVn6sWUl+nSjKToduHdjQ+uhdJXgZ5vDxI1PRqSYX1lw+ZMCkU7
 wYjqHjc2YKujq2ge4STL0e5L0T7NQFwhWALEIreIitrVqC8wBD9JLVIrSCBokHtGpOPl
 MkeXRtNA9ax/jHKMw43w+TfeEW4rLUcVZDZRembiQC4kGyGmknyUR/ytxOGHBr09Yipq
 fhvyLQrXKPkfylVen9kET2YYqq+6Si2tuLoXkBY0wrPrcH5QZX1ZKz9DED84dllM/O5C
 VpXPubFh3YP+HCgV/pwY9U8UZE6EZyWcihWKQUu32pu5xQAQrQCN7O4pdR65wbUDEWGV
 QdpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wIIpGdRKdT3hjAKKgnZBguQ5qXVsyW6bN9Y5XxQyxMc=;
 b=rkXCkdDTdt07fUvUqhvmvmsJzpWfkmccm+xclsLVDZ7IDQl+K0A6uTsmVaH7oUDjjp
 sbtM3YzDHRNduGX2ulg0pswoV/EfUPZiQKZ2p7me3t7G6/y/YG0EiFSVE0yG2jIT7RIY
 f5Om8uQd8/YaVjeZU3n0XE1L3xZo/R70ABYOGfveMczZMYkEYNWI4o+lIPOjGAdKlut4
 WG5kLzRRiQNYOb1eLTisyHqytgGPlo7M53/iLmw/A0wFLFBy8zTjfyojUbe0xiLVAnc2
 yXQNqro6aZ62h+Mv7I65A+gSu7As13c9tA5F9/KNpmwmY2ohzo4gCM9A6mwLpKRDVv86
 F0fA==
X-Gm-Message-State: APjAAAW+cGY4qA9zt76A5PBc9Xp0RA00PiQCwFPJt3kggfS2BRuOXDok
 cEtaRzjt5ijulWPfzx9J7LU=
X-Google-Smtp-Source: APXvYqx5m5kGl2cgcGxoUukHl4f6QgvVCu68CUW1beVrc8BTbmcRRiJC01ouu48zZfiRd7z3Z994Hg==
X-Received: by 2002:a65:498a:: with SMTP id r10mr15531549pgs.131.1570773131968; 
 Thu, 10 Oct 2019 22:52:11 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id i184sm10257782pge.5.2019.10.10.22.52.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 22:52:11 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/5] KPC2000: kpc2000_spi.c: Fix style issues (alignment)
Date: Thu, 10 Oct 2019 22:51:54 -0700
Message-Id: <20191011055155.4985-4-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191011055155.4985-1-chandra627@gmail.com>
References: <20191011055155.4985-1-chandra627@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 michael.scheiderer@fau.de, fabian.krueger@fau.de, linux-kernel@vger.kernel.org,
 simon@nikanor.nu, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: "CHECK: Alignment should match open parenthesis" from checkpatch

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 66cfa5202690..26e1e8466fb2 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -315,19 +315,19 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 		if (transfer->speed_hz > KP_SPI_CLK ||
 		    (len && !(rx_buf || tx_buf))) {
 			dev_dbg(kpspi->dev, "  transfer: %d Hz, %d %s%s, %d bpw\n",
-					transfer->speed_hz,
-					len,
-					tx_buf ? "tx" : "",
-					rx_buf ? "rx" : "",
-					transfer->bits_per_word);
+				transfer->speed_hz,
+				len,
+				tx_buf ? "tx" : "",
+				rx_buf ? "rx" : "",
+				transfer->bits_per_word);
 			dev_dbg(kpspi->dev, "  transfer -EINVAL\n");
 			return -EINVAL;
 		}
 		if (transfer->speed_hz &&
 		    transfer->speed_hz < (KP_SPI_CLK >> 15)) {
 			dev_dbg(kpspi->dev, "speed_hz %d below minimum %d Hz\n",
-					transfer->speed_hz,
-					KP_SPI_CLK >> 15);
+				transfer->speed_hz,
+				KP_SPI_CLK >> 15);
 			dev_dbg(kpspi->dev, "  speed_hz -EINVAL\n");
 			return -EINVAL;
 		}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
