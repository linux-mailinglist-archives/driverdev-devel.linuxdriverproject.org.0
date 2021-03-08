Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E21433114D
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:56:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DF6183759;
	Mon,  8 Mar 2021 14:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9f3BF_ltl7t; Mon,  8 Mar 2021 14:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C3D282E94;
	Mon,  8 Mar 2021 14:56:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8768E1BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76C0C60710
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VivCY2HESJi4 for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92E9B606A0
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:31 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id dx17so20958927ejb.2
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mBNx3+l+qHDe6EkshwxnUvUhVuyIuR48vB6z54Joki8=;
 b=nTF2zXvbxcoUnMTJKJRh5lxphx5JfP3FHvUk0L/VCv3nENNwU6DC1sJEgloDXOxZzR
 z9IijKI0al0C46RH4OsSkFLgSvK/ye8p2SA9rzL5ixNbTTIAkFEFxEZV5WZxPiI5TIZx
 mSDXSPQMKsd4wJ5h2YlaSivmWjWh9u0lFAx0yRoY69NTm4XZ2RysV2VyecXjRkYn0jIL
 3MbtP2sywizYzOWLDex0+U0aOiwaz2xMwM6F1fhyTfi12JIGuYGCYWm/1pvckKJAKi9z
 EzUqPXhpOXaaa1jIaWXzRXaNYIzDrUWq7U9bgEHLBG8PZUdB2dkKaUPX17QBHHlVR4Be
 u+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mBNx3+l+qHDe6EkshwxnUvUhVuyIuR48vB6z54Joki8=;
 b=f3X+fEntqfnuVgdGwj2JXvafu/LCUxVR7rMeDdM6jw5WZf/QVEol0d/hjL9pW68FuD
 Ae5vC5r9ACB9/sN9XgBearFvqKpKpJtIBAuWV8YbjooOczdVQ4J80rhvj/HcvdAx46o9
 rBs2UIdDN7LOdjZ7CUA84LIqwpSN9tWpFZ2Rt2c+AnIZ0O5h/ECLA6dyFqi7twPFe8fb
 yVZhTuv0ezfaQCdwFM3zGA3HGwZF2X9heTVPQBx/v97aJbAuFSlT4dQXWVbeUx2rfcUZ
 sqpNpRWlgdz4s4MRrdCBcm6us0vW2qIH0mIeOvSPf/wRso/xvuGE8XP//zm6lEUWy/MO
 YGhQ==
X-Gm-Message-State: AOAM531I9oOFM8wRqgYb4j2zXRz9c3YNHYPdvadC5TuwKTH2PFCrKAMg
 fyaxKNwRzc/R1jV2yRYzfjg5eA==
X-Google-Smtp-Source: ABdhPJy3dzNItArKPc94hDqlK8aS8fNX1eICojTsHibEp0xBvophfesscwVwUCVlgWvMxvrYa/+PPw==
X-Received: by 2002:a17:906:7102:: with SMTP id
 x2mr15619326ejj.355.1615215329786; 
 Mon, 08 Mar 2021 06:55:29 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:29 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 03/10] spi: spi-bcm-qspi: replace 'delay_usecs' with
 'delay.value' check
Date: Mon,  8 Mar 2021 16:54:55 +0200
Message-Id: <20210308145502.1075689-4-aardelean@deviqon.com>
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

The 'delay_usecs' field is going away. The replacement for it is the
'delay' field. So, we should check for 'delay.value' being non-zero.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/spi/spi-bcm-qspi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm-qspi.c b/drivers/spi/spi-bcm-qspi.c
index 707fe3a5d8ef..a78e56f566dd 100644
--- a/drivers/spi/spi-bcm-qspi.c
+++ b/drivers/spi/spi-bcm-qspi.c
@@ -671,7 +671,7 @@ static int update_qspi_trans_byte_count(struct bcm_qspi *qspi,
 	if (qt->byte >= qt->trans->len) {
 		/* we're at the end of the spi_transfer */
 		/* in TX mode, need to pause for a delay or CS change */
-		if (qt->trans->delay_usecs &&
+		if (qt->trans->delay.value &&
 		    (flags & TRANS_STATUS_BREAK_DELAY))
 			ret |= TRANS_STATUS_BREAK_DELAY;
 		if (qt->trans->cs_change &&
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
