Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E75354E4
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 03:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2EED220108;
	Wed,  5 Jun 2019 01:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gsnLJ-BrmCAg; Wed,  5 Jun 2019 01:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4F241203CE;
	Wed,  5 Jun 2019 01:10:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0FB91BF366
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB73D86C0E
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v3V7IUt9X1HB for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 01:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4AE8D86092
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 01:10:11 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id m29so10934977qtu.1
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 18:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VlHxMBMSfeEvLUylf2B3zOxUXUQHYZ4p3EWUpLSdpOU=;
 b=ST94zn4fENWmSqKcu/gQgcIVE9zAdBriCQX2zGUJSwk0C7O+5PbAsWtzJCLX7xKdBL
 jrPAGArOVsdsrgTV7odUJ0kbosYG/UUaYTrGW3oMstkM9jLO524ZBYjq5Zy06sq4R8h4
 yT+B+8iL3Glz8ktqMAM8Q2vq1ke5XeC3nwDEDHsAS3lNqszkxVeOabFm8RvJdwXbyvuI
 ImiDA9uy3cYHmVKtXJH1OKVeOgZNsoQVOp1qCN6meDeVxwH79K4qYnY5c0VXXlzEVdgR
 zuzE7TXlgCe/WvIbo2cHZ7DL4t242LHkioV666WPo7jY3DHs6wJ+FWjj7gxYyZNhsckz
 pqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VlHxMBMSfeEvLUylf2B3zOxUXUQHYZ4p3EWUpLSdpOU=;
 b=M8CV335uWUhNUSNJStV0IbSla4hA9nbEQw7gVX6fu2hfoNk09amH+AhprTpkKXQNH4
 YqkOS1JbfYVJQih9Ibx2mR5evCHsDKjAt/U5Fg4ve/3rLQFfW6NFzcNfRtTv8Zs+c0WZ
 YT+98vXH/SHMBt/+fhdY2FKuigHrTOCKWR+SJE2qutoLrybnjw/TabJ3jedrXMKRNqHm
 UneO0PhX4gdd0h7z2MXiZxuuGVWoQPg7/zF78rMhUFNwsq5nNc3ZdD9mZrIDsSFFALul
 IL+a4SVFH/8lJedY/ccsOxaa5fIUEp6DUgGWiNZ2hcRpxPZlKodsk2PgqXnDyDcDIVO8
 igVw==
X-Gm-Message-State: APjAAAUme8+SDgLrQ1/tp2NZyVHjtYvG5dEEupogGwHFD45/+2jaB7y1
 4U4Ottha1ISUSL2SIlC6gC8=
X-Google-Smtp-Source: APXvYqzplwYfbrveGGdc41Cn+cXNTkIaqn8/G6QpmVKJvO/KV1g/L9F+8xljTJs4ZA749Pnt0Cs3PQ==
X-Received: by 2002:a0c:fde5:: with SMTP id m5mr10497044qvu.192.1559697010532; 
 Tue, 04 Jun 2019 18:10:10 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id v41sm7169401qta.78.2019.06.04.18.10.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 18:10:10 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 6/6] staging: kpc2000: kpc_spi: remove unnecessary cast in
 [read|write]_reg()
Date: Wed,  5 Jun 2019 01:09:13 +0000
Message-Id: <243b8c78084e46606e78bed26a575181648099fd.1559696611.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559696611.git.gneukum1@gmail.com>
References: <cover.1559696611.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 Mao Wenan <maowenan@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc_spi driver unnecessarily casts from a (u64 __iomem *) to a (void
*) when invoking readq and writeq which both take a (void __iomem *) arg.
There is no need for this cast, and it actually harms us by discarding
the sparse cookie, __iomem. Make the driver stop performing this casting
operation.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 4f517afc6239..28132e9e260d 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -167,7 +167,7 @@ kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
 	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0)){
 		return cs->conf_cache;
 	}
-	val = readq((void*)addr);
+	val = readq(addr);
 	return val;
 }
 
@@ -176,7 +176,7 @@ kp_spi_write_reg(struct kp_spi_controller_state *cs, int idx, u64 val)
 {
 	u64 __iomem *addr = cs->base;
 	addr += idx;
-	writeq(val, (void*)addr);
+	writeq(val, addr);
 	if (idx == KP_SPI_REG_CONFIG)
 		cs->conf_cache = val;
 }
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
