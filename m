Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FDD33116F
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:56:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F163C491FC;
	Mon,  8 Mar 2021 14:56:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQkNOKIel3SA; Mon,  8 Mar 2021 14:56:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAC6F44C77;
	Mon,  8 Mar 2021 14:56:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E8011BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AC0E60710
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JTor7gq36orv for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 827F3606A0
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:35 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id p1so15157340edy.2
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Io9v2GBIlHI+Tmp+Muo2ozOuxnB5JlN/m/peVkSOoQk=;
 b=KN8oqTz03n4iXKtuJ5qi9J7eiFCSjzNROABDY6Gb/MplICzu3i5V03YptgmpTTumx9
 qzHGrgq8fs8JGet9Odv3isiqA2BAEwaSruGVQmS9a+mZpNXFpeE4VcGYKpq2SjITIXEr
 iZu8cMKqFXc0GNaf9S/tP3IfDJqMyEWVlwbxUYbisZoe8tFawpRpLzcdVzwhbtNF+qfh
 oh5qVIsYJBFymQreVC72K8pfrXlBDUp9vpAjjD5DhQNe9vKsYc0LarvZp9YPPAvTNQ6k
 bUkDxp4231M2aHh4lz1mTKmik9470JWb/d4AGTx8NT+lMZyzE4h4Q/QHCx3Q8heZ+6Wu
 Pn4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Io9v2GBIlHI+Tmp+Muo2ozOuxnB5JlN/m/peVkSOoQk=;
 b=ukPWliPeG0g6/NaWMIbYy9BHBhv+JUqH1nb0/2+3ZfeDCt8lu2s8Iw1NXkqTv2CeeS
 gDhhgfLqOD025KfbCT0vd81/1Dn7F0uSoTjmrMk4GR3SIn/TumcNdEQJusBS6TRk4Ojq
 rZsLOXLi+wWYxzCfPWkI8AJB2DoycZKswVUVqT/bUBPLTRMof86KDYKH2TZoe/J5sNpq
 LH05gBs22Xnup9a9IKOhgdkkc78r2JP+ThF9iA6OFvON8D9AYsAZus1wod+XRGidhxT8
 18yIKTr8FTgcK+F+05uNZTYeLkDSaJ/0O0G2nrVWiJX5NtRRLvYnxlYVC9Gq7k8f1Agb
 mGTQ==
X-Gm-Message-State: AOAM531jtSmPn8hXh/DNDdAbYDm3pm6IRaam4LwW/E3dZ98Baj1jBNRY
 HE+wMS6RPensdQIb/jen2IssAA==
X-Google-Smtp-Source: ABdhPJzOxDsiKTJZFzssNH71mhV3dmH3qpwIBVJVNeEVFcuravA0h+m9Fy72NPjkwyy5NAtefvkZcw==
X-Received: by 2002:a05:6402:2076:: with SMTP id
 bd22mr22161922edb.378.1615215333831; 
 Mon, 08 Mar 2021 06:55:33 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:33 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 06/10] staging: greybus: spilib: use 'spi_delay_to_ns' for
 getting xfer delay
Date: Mon,  8 Mar 2021 16:54:58 +0200
Message-Id: <20210308145502.1075689-7-aardelean@deviqon.com>
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

The intent is the removal of the 'delay_usecs' field from the
spi_transfer struct, as there is a 'delay' field that does the same
thing.

The spi_delay_to_ns() can be used to get the transfer delay. It works by
using the 'delay_usecs' field first (if it is non-zero), and finally
uses the 'delay' field.

Since the 'delay_usecs' field is going away, this change makes use of the
spi_delay_to_ns() function. This also means dividing the return value of
the function by 1000, to convert it to microseconds.
To prevent any potential faults when converting to microseconds and since
the result of spi_delay_to_ns() is int, the delay is being computed in 32
bits and then clamped between 0 & U16_MAX.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/staging/greybus/spilib.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
index 672d540d3365..30655153df6a 100644
--- a/drivers/staging/greybus/spilib.c
+++ b/drivers/staging/greybus/spilib.c
@@ -245,6 +245,7 @@ static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
 	/* Fill in the transfers array */
 	xfer = spi->first_xfer;
 	while (msg->state != GB_SPI_STATE_OP_DONE) {
+		int xfer_delay;
 		if (xfer == spi->last_xfer)
 			xfer_len = spi->last_xfer_size;
 		else
@@ -259,7 +260,9 @@ static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
 
 		gb_xfer->speed_hz = cpu_to_le32(xfer->speed_hz);
 		gb_xfer->len = cpu_to_le32(xfer_len);
-		gb_xfer->delay_usecs = cpu_to_le16(xfer->delay_usecs);
+		xfer_delay = spi_delay_to_ns(&xfer->delay, xfer) / 1000;
+		xfer_delay = clamp_t(u16, xfer_delay, 0, U16_MAX);
+		gb_xfer->delay_usecs = cpu_to_le16(xfer_delay);
 		gb_xfer->cs_change = xfer->cs_change;
 		gb_xfer->bits_per_word = xfer->bits_per_word;
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
