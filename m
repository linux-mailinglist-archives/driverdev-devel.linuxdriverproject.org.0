Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E92BE331174
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:56:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8957E4838E;
	Mon,  8 Mar 2021 14:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5XW-dFWJhELZ; Mon,  8 Mar 2021 14:56:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06C0747A21;
	Mon,  8 Mar 2021 14:56:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13FC81BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03679400D0
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iO1wCQ1pP3zA for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24D67400C1
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:37 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id hs11so20961386ejc.1
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dk38R2BEd68k0sRStLee7izJxfsp+PQHJm3HaMXnM6A=;
 b=ahfVV+tRIbM8ON7yRS/IM1epTuYYGywi+Koj8gByhh6/R1lwaQ5Pw36i8kwDwuLGiH
 Zhe3ULECmQI4x2Sv26GgkMNikMu0NKpw9wH/+bEzk9cOyPTDEJKDaQl48hmfleXFxiY/
 HqKi1fbZREQRxRXLrf4wLVdw9j2H0zT4YyInNGcWX1HheMd0lgaCLgW2a2l5Drgv8cGg
 DwQ+8QSmU8dYKHDNmufkE+jrJQhYzVnFrjZ3CjYxEDkivdQcf1O2c0NidPpdwQ+5kded
 1c8KcAXjYGVsyacm6BcVE9r1A0mYP6ZegtHntXkWZgsJCilpA7j0s0D/ER+03VaYFGxt
 aIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dk38R2BEd68k0sRStLee7izJxfsp+PQHJm3HaMXnM6A=;
 b=dsKrNknPCcv2Xffpt5H8zccJoSotEmBuMj96xkMHXvJVNwUoZneq3dw8eIzJiNZfNG
 biukKfsPC09reB7Egr2AZGIz7LmGstdB2Onk+Y/0Wm85kN6YR4fexueeWsGBQY4IIBDN
 CdUjk2FiwLkloLfmJmjuKcYzxdnVKIBg0PQJtlE9EonuJtj5s2IKl6JWL5/bdX7cw8Y1
 3/cbAtt07GuTozCyeoWnRohUY0O8CLz3Jx3VdkmyEqb0uHqYjeQ5n6Imj7mI2N+cLp/P
 djdLGrhaSaA5tzmceZlVqMd/5eoHWdU+LAvWxLCsDL8TfZOlJczynwCJiR8KNq5ciyiy
 v8uQ==
X-Gm-Message-State: AOAM532O2OkbAIQC0lI7Lt0xf+x31kngTcfQymNE4E/jC8w5MD7t6Vpc
 T/FtvVjPWw4wd0h0pSdeE3v7FQ==
X-Google-Smtp-Source: ABdhPJz1X+Yvv3Gf60Ux6dslZLHmcGo2s75ffNy+pTDMIK2LHvMuhKrswzHu65RuNVsJWclcjcnmIQ==
X-Received: by 2002:a17:906:7150:: with SMTP id
 z16mr15048608ejj.103.1615215335290; 
 Mon, 08 Mar 2021 06:55:35 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:34 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 07/10] spi: spi-falcon: remove check for 'delay_usecs'
Date: Mon,  8 Mar 2021 16:54:59 +0200
Message-Id: <20210308145502.1075689-8-aardelean@deviqon.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210308145502.1075689-1-aardelean@deviqon.com>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
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
Cc: thierry.reding@gmail.com, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, jonathanh@nvidia.com, broonie@kernel.org,
 ldewangan@nvidia.com, Alexandru Ardelean <aardelean@deviqon.com>,
 vireshk@kernel.org, f.fainelli@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The 'delay_usecs' field is being removed from the spi_transfer struct.
This change removes it from the SPI Falcon driver.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/spi/spi-falcon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-falcon.c b/drivers/spi/spi-falcon.c
index d3336a63f462..a7d4dffac66b 100644
--- a/drivers/spi/spi-falcon.c
+++ b/drivers/spi/spi-falcon.c
@@ -377,7 +377,7 @@ static int falcon_sflash_xfer_one(struct spi_master *master,
 
 		m->actual_length += t->len;
 
-		WARN_ON(t->delay_usecs || t->delay.value || t->cs_change);
+		WARN_ON(t->delay.value || t->cs_change);
 		spi_flags = 0;
 	}
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
