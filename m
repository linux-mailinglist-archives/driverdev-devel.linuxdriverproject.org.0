Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D4433114B
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:55:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B547400DE;
	Mon,  8 Mar 2021 14:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l9g5NgZo8c7K; Mon,  8 Mar 2021 14:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89EDB400D0;
	Mon,  8 Mar 2021 14:55:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DC921BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8CAD560710
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7ZasrOGLTEH for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF509606A0
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:28 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id w9so15125227edc.11
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WJxdRpdzofsaI6pJC87KN8qfD7oiIuHmhf+Ws3rK5bo=;
 b=MTQFoIjgyIhVpuBWjNoJU3fO+5NyJAQOscZ0AdWbRLqL1HdjvnrdB3/XxCfdMJJn56
 bDPG9W0kPMVeyC58dnlnVBca784ue4kWFPXvaXSEfFdn9Tj3qTtg4RotQD5idpaVH7SL
 URqCkfltpUY/xyaBJlhc8SRDGn02/O7WZJvHB/VXkbTHqtEV8vEwxZIxINl3ftaK207d
 LSHGATqqKJlme/7/BqKSKs8KGoyGOGtbkCXXwN+E/OPGxumgQNBVj1H4TPnKMLvtg6fD
 9FYM+6AKbruxKNEfadoYb/EudkSTyPH1m/pS5dxVx+CpKfXemde9q2WnUZZItwajJHhZ
 Gr1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WJxdRpdzofsaI6pJC87KN8qfD7oiIuHmhf+Ws3rK5bo=;
 b=o4vyr0fui+N/sc/Lh0B3dd0EhrffGzYEjqgVD3yUuYgdxMzEbcFo9iFIVYHu7ULykO
 9Pfpi5tISlQ4k1iAwQliAVD5RKgU5u9s3f/QoCXuch13Vy6WeVoCr0sehXWZ1sYHfqTF
 an40SoohJMNQee1O9MueEq3kA3wonKgfxpdCux95Ryh/BUa4ak7XCOsPgcLwkXoAfLGg
 HTvgiUytIXhZ4dTlKk+CENqfeaIE3FSNfZVzfVATGSgmGObA3ii2c/z7zo7ECCIN1d3g
 rhl74SwCIkYVEF9vDQVzJb1Pzam7SWP5vYbDGrfC7b+7RZZcJFku+NX4V92kpdzO9ldm
 a+yQ==
X-Gm-Message-State: AOAM5325l+SMNtwClXvzrYzc2M1aCbSqd6jRRXCdBSJPE6Mgyl97xAYK
 +3/50pWgty9gFgCeWgYuDR8RFg==
X-Google-Smtp-Source: ABdhPJwlgot4NbjzzuYuRheze893HpYfgoXITowLPS3t6zG7Qok0RqmnNpkbz3PPbWWOQb7cwfKxaw==
X-Received: by 2002:a05:6402:10c6:: with SMTP id
 p6mr15045774edu.241.1615215327135; 
 Mon, 08 Mar 2021 06:55:27 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:26 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 01/10] spi: spi-axi-spi-engine: remove usage of delay_usecs
Date: Mon,  8 Mar 2021 16:54:53 +0200
Message-Id: <20210308145502.1075689-2-aardelean@deviqon.com>
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

The 'delay_usecs' field was handled for backwards compatibility in case
there were some users that still configured SPI delay transfers with
this field.

They should all be removed by now.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/spi/spi-axi-spi-engine.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index af86e6d6e16b..80c3e38f5c1b 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -170,14 +170,10 @@ static void spi_engine_gen_sleep(struct spi_engine_program *p, bool dry,
 	unsigned int t;
 	int delay;
 
-	if (xfer->delay_usecs) {
-		delay = xfer->delay_usecs;
-	} else {
-		delay = spi_delay_to_ns(&xfer->delay, xfer);
-		if (delay < 0)
-			return;
-		delay /= 1000;
-	}
+	delay = spi_delay_to_ns(&xfer->delay, xfer);
+	if (delay < 0)
+		return;
+	delay /= 1000;
 
 	if (delay == 0)
 		return;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
