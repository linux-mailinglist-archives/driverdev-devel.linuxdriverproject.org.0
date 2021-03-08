Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C52331169
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:56:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAE1083689;
	Mon,  8 Mar 2021 14:56:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id asA2av4qpyn8; Mon,  8 Mar 2021 14:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC6D483578;
	Mon,  8 Mar 2021 14:56:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A8C11BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 199F444C77
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZarK31XONdPg for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37A4F447DA
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:34 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id b13so15177571edx.1
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XWoEzbGml88OxuqmQAcHOjUJ4xDFJxJMYhsbSvaYG8g=;
 b=CoZuzgDrGpFtj904f5wOt4pdQ3n8fg5dy/GPRYq1rjTInXfpz2xhI8+8Vv5wPkV1Wo
 wFX3oGQAjFIvlBNmhZJ6fvY9t8B76uKfz9sUj97rgWhDoIbGS6iSPrjfUOlCwHUfbIq2
 K2xcYmyB0aJUZyDJKKQ7UH544n9eeotYnTRliWp+P5UoX8W6F0lJnEflhgMhQNkWhd/s
 jHmpOQSIJXngWEOS0/6cemKhknyqXFEoxIrmGi11LpEyqZFY4UFQrV6uMwKSNbTfyNYK
 y71Ayez3+y21aI3oCrN+NZrk0zuVw2hZTTO0N+2evfe6jGpnUg8nBLo9mqvI+E7W5rOb
 npUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XWoEzbGml88OxuqmQAcHOjUJ4xDFJxJMYhsbSvaYG8g=;
 b=Tpvn5axibrnDOblJPc/CJ5wJa6OZqGxAw7cT0IGIpyFAyUytPz2d4CY9OiC7f70Jj7
 14qg1DM0cSvjeqr2Bb1XH8mVJwYD8OZSmYjlNualaRyMLdHhW8Zc2s6Gj+QWvm1xgOCc
 XPrCPIlAJmuRlUC553w3egXjvgkpgIlZYd5nVAsCY3NSVySuqOQjIkPOxxHzYKyN+qsz
 ncCHKOh3+GFcoA+CuQEs414Dzq2v2HWyHLkPhwHyWWo1Ma+NpQzaqKtd/v9P7OXxgMxg
 /EvtIH7FcBBnYtWDRxNrz33p4rZxL4aBxDH6Ij0m3nTii6J98PS5bVYH8/mY/s+DSu4u
 xGbg==
X-Gm-Message-State: AOAM531QH5yXMMgoQf4iWuKOSzSmkoE6zE6Y9/Wp56VVJbSB6gVM7CfW
 RECZ+lPZLb+tAQh8G2HcuCHDjw==
X-Google-Smtp-Source: ABdhPJwUcJ3SUmtLrEEaeqoD1Jfg434VvxyQqtPpgiiJeOCIL6JkqcZQQAQ8evRVIMOkpgIhXEKA1w==
X-Received: by 2002:aa7:c1d5:: with SMTP id d21mr21943395edp.167.1615215332510; 
 Mon, 08 Mar 2021 06:55:32 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:32 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 05/10] spi: spi-tegra20-flash: don't check 'delay_usecs' field
 for spi transfer
Date: Mon,  8 Mar 2021 16:54:57 +0200
Message-Id: <20210308145502.1075689-6-aardelean@deviqon.com>
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

They should all be removed by now. So we can remove the 'delay_usecs'
handling in this driver.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/spi/spi-tegra20-sflash.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/spi/spi-tegra20-sflash.c b/drivers/spi/spi-tegra20-sflash.c
index cfb7de737937..2888d8a8dc6d 100644
--- a/drivers/spi/spi-tegra20-sflash.c
+++ b/drivers/spi/spi-tegra20-sflash.c
@@ -341,8 +341,7 @@ static int tegra_sflash_transfer_one_message(struct spi_master *master,
 			goto exit;
 		}
 		msg->actual_length += xfer->len;
-		if (xfer->cs_change &&
-		    (xfer->delay_usecs || xfer->delay.value)) {
+		if (xfer->cs_change && xfer->delay.value) {
 			tegra_sflash_writel(tsd, tsd->def_command_reg,
 					SPI_COMMAND);
 			spi_transfer_delay_exec(xfer);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
