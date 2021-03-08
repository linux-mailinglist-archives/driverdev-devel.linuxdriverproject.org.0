Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 407E933114C
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:56:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B064B45D94;
	Mon,  8 Mar 2021 14:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vnv3tk6N1k35; Mon,  8 Mar 2021 14:55:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E08646493;
	Mon,  8 Mar 2021 14:55:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3BD821BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A32C44C77
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PFaoTOFoQuRB for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38378447DA
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:30 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id bd6so15097818edb.10
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K1kerxlBQXsnkBW66DYRSLvt3f+bVaEYRPTXorPAb2o=;
 b=rFtmC2lX9bx1OJQsukKFxbVFYmys8q4JZilYPWNowCRpc+e/TA9cZqZuTTmo16QaR3
 Zts0P3qeGkvIV/+kY5d/R0/Gw7urqV7JEVAcqMz4uNzUhyurQ0hxY1RtoW1q0pXyENR2
 w2LLt4h6lI238BNd0PG6+9Q0us3AzZyEyTMu6vptP6nzK+wfcPqaXSegsOW7yGGHWTs4
 vqBks9FDZgZ3wwSatAgxdylkY+t4TBwvAV4tOIZ6nmLIL5Gc8pNQrKR+rl0KStooCfyt
 28nw+vmJGXOmQBlF/aBAwnrusLCaNg8aOw8HMdOocFZq4TxTqx7MmHm2sHqz19j4+89R
 kvbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K1kerxlBQXsnkBW66DYRSLvt3f+bVaEYRPTXorPAb2o=;
 b=M3E3UuOXSv1qRm0z/pmyeZ6bZ353WEG3U7DUvgTe5UvzgZGvzmGBf3sr1cC24b7dfw
 G/bNYofnAfdgbEpeNtMos47Nm5D6JdDATqrSqNLcIP+cMpg0ynqb9OkBEV1C95Lwx3Lp
 hJRESjPkcXWe6s97PgRMZjmmS/vWGiKMDuFONqZ7y8V1k+Ia3ZtkKKM0zuzWiguz5ybH
 CYHLmDK41Y5W5rCbaiS3szy/ouEY44+DGqwxHUHnz8PqcNmlhH13DUm8woYyDDFrN/F7
 kNaD0qGIAkIS2NO1Cvqa8imOtaz+mmI6ue9yndh7YCElR9w7e700AzeGfiTQGlylR2+L
 clOw==
X-Gm-Message-State: AOAM531p8STu5eXpXXJUzQET9urIAgJnm2kxwq3sHOQ9dst3SOBkGxa6
 PE2VrQBlnIBTU4dVyT7FybvF8w==
X-Google-Smtp-Source: ABdhPJxEzekHbaS2S5/KEJAyRUXUwCnOcpb8YwShTRdZxuCkPKC3qM7GvCvE1zMb6YSlbV7UXjYPrg==
X-Received: by 2002:a50:e0c3:: with SMTP id j3mr23091988edl.32.1615215328449; 
 Mon, 08 Mar 2021 06:55:28 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:28 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 02/10] spi: bcm63xx-spi: don't check 'delay_usecs' field
Date: Mon,  8 Mar 2021 16:54:54 +0200
Message-Id: <20210308145502.1075689-3-aardelean@deviqon.com>
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
 drivers/spi/spi-bcm63xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm63xx.c b/drivers/spi/spi-bcm63xx.c
index d08bb7600150..80fa0ef8909c 100644
--- a/drivers/spi/spi-bcm63xx.c
+++ b/drivers/spi/spi-bcm63xx.c
@@ -369,7 +369,7 @@ static int bcm63xx_spi_transfer_one(struct spi_master *master,
 		}
 
 		/* CS will be deasserted directly after transfer */
-		if (t->delay_usecs || t->delay.value) {
+		if (t->delay.value) {
 			dev_err(&spi->dev, "unable to keep CS asserted after transfer\n");
 			status = -EINVAL;
 			goto exit;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
