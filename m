Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A162331177
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:57:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D2F36E5F7;
	Mon,  8 Mar 2021 14:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mj0l7kKQlLOl; Mon,  8 Mar 2021 14:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F74460758;
	Mon,  8 Mar 2021 14:57:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E25321BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D112345BC3
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1MXrM2mMxR_9 for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC1BB44C77
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:39 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id bm21so20929903ejb.4
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eGIsP86uecOdbNP3RzEXdRJwjYXQN4lavob9ylpQnlo=;
 b=ioTX0u8DVjv5rQ6PRejkBUyjoya3UCwI32URVKD5M10y+hrFGA8Q5r0DXSuHIEEDmo
 oPPBRTnH9wDsEupl3mGZoRJ2vh718Y1GnDNeZfqyAZjEo8kIjGm2UzE1wcRvcbJyEbGy
 7O3sc0gtRdzgOq7T8KV4H0JX8OfC3obDIE0OppS9Sl62QfCirdgYHiBLAMyX5jOeEtYW
 Gmq3N54+nU/K5a4nMbWOxxP2e2ZVLsVOpz5qjJ4feOM/L7AOFg1WOQ9qH3rsKdyXkBEz
 BXtkaWNtaGd0j4FAEpjUqe/rkHZpU3GheAopKvl1/Wk2au60O+NFUxs2j2gqjTQc8LH6
 bXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eGIsP86uecOdbNP3RzEXdRJwjYXQN4lavob9ylpQnlo=;
 b=EaNEZgTGMVoCycaiA65+aXPbaZ6lazQdsWMD5ycwjXtsurEvxwo3rqrU/fQniaSOew
 DS3MIU+n8HfkGLJwvOdqdnw8MU1p0uujbvozuVDCabKI/RgEjcIpSdSnMH3mBk7zUB2Q
 PZESMbfpm/JaLituhpUjZcJnP1A0T5ZQSB8AmCyitZ4371TpjsxlkX8UCP8sHWex/iEl
 SeLjR0yjm2tLkeIBvQ4PAz1TYKvXD+JWsHdAO6PnOt20JmOIYVGxUeQ4JjVE0ldLqnmJ
 zQdSVXFp2v6DD1CVsmoUwQnnmcZNatnxtKk0+arEN6bWIfg9OD5ZbILMbxCtopB8OIhV
 SoWA==
X-Gm-Message-State: AOAM530W2WVTglmjyYAMaMQd5XSTDtanEzBN8gnqOhFiygwGhK95tqLR
 bcWIAbVMjEzDFzb0NnQ6HkH7jg==
X-Google-Smtp-Source: ABdhPJztNbtWidlTaFpyoGea7LJcNkwK+Ksb+1J38vdVQrHaHxFzKw412LMQTMbUTaZZaFEz5HcZtA==
X-Received: by 2002:a17:906:6558:: with SMTP id
 u24mr15604493ejn.185.1615215337950; 
 Mon, 08 Mar 2021 06:55:37 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:37 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 09/10] spi: core: remove 'delay_usecs' field from spi_transfer
Date: Mon,  8 Mar 2021 16:55:01 +0200
Message-Id: <20210308145502.1075689-10-aardelean@deviqon.com>
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

The 'delay' field in the spi_transfer struct is meant to replace the
'delay_usecs' field. However some cleanup was required to remove the
uses of 'delay_usecs'. Now that it's been cleaned up, we can remove it
from the kernel tree.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/spi/spi.c       |  1 -
 include/linux/spi/spi.h | 12 ------------
 2 files changed, 13 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index b08efe88ccd6..481427780162 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -3178,7 +3178,6 @@ struct spi_replaced_transfers *spi_replace_transfers(
 		/* clear cs_change and delay for all but the last */
 		if (i) {
 			xfer->cs_change = false;
-			xfer->delay_usecs = 0;
 			xfer->delay.value = 0;
 		}
 	}
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 592897fa4f03..ea1784a43267 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -832,9 +832,6 @@ extern void spi_res_release(struct spi_controller *ctlr,
  * @delay: delay to be introduced after this transfer before
  *	(optionally) changing the chipselect status, then starting
  *	the next transfer or completing this @spi_message.
- * @delay_usecs: microseconds to delay after this transfer before
- *	(optionally) changing the chipselect status, then starting
- *	the next transfer or completing this @spi_message.
  * @word_delay: inter word delay to be introduced after each word size
  *	(set by bits_per_word) transmission.
  * @effective_speed_hz: the effective SCK-speed that was used to
@@ -946,7 +943,6 @@ struct spi_transfer {
 #define	SPI_NBITS_DUAL		0x02 /* 2bits transfer */
 #define	SPI_NBITS_QUAD		0x04 /* 4bits transfer */
 	u8		bits_per_word;
-	u16		delay_usecs;
 	struct spi_delay	delay;
 	struct spi_delay	cs_change_delay;
 	struct spi_delay	word_delay;
@@ -1060,14 +1056,6 @@ spi_transfer_del(struct spi_transfer *t)
 static inline int
 spi_transfer_delay_exec(struct spi_transfer *t)
 {
-	struct spi_delay d;
-
-	if (t->delay_usecs) {
-		d.value = t->delay_usecs;
-		d.unit = SPI_DELAY_UNIT_USECS;
-		return spi_delay_exec(&d, NULL);
-	}
-
 	return spi_delay_exec(&t->delay, t);
 }
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
