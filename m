Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF818354DD
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 03:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7A229203E4;
	Wed,  5 Jun 2019 01:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DdoLDIpmv6NR; Wed,  5 Jun 2019 01:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EA26320108;
	Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C82941BF366
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C0EDA85B3B
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ztY6kBKeBCv5 for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 01:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A44E84034
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 01:10:07 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id c70so4137775qkg.7
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 18:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hUAORMOMPQGdOfHz8+spizROCY8nNkClMWjc/Ifypm4=;
 b=EW8J92jGarCGX577jjHg1ZidvKNvysp4g04Q6fRzBe/P6iD2iaBfUN3Ts3UTHkiDtK
 ZSHxD8i8csvwBO9lj6crTuKbeRYjKZzyJ9kY784G46rpvaDK5AuOiaWyjKozatzvmQ1q
 WtrA+pVCuZpaTA59BzD2dybw5cYu7t8d7jhlqdDS4J/KWzeQB/WcTQgDv5jHYRMBXuOF
 dW/6QOMa1yFE9NEIhURXse2EWj3F/ADgRG9V4dpNhgYLC1v6WpRmdmDQXCi7CDcRPHJp
 OJWx1a7v2ZHwlwNcF+cwiq5hDAQOob4tqyHgRWwVRK0IsUjO0kLxExlYWl+UTMImMx87
 qElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hUAORMOMPQGdOfHz8+spizROCY8nNkClMWjc/Ifypm4=;
 b=pi3i2Rt7U+bYkrBwA2u4yL1gFlZx8SUMC2swshUhnfRwaGyJ8vJ5MICUIH+7B9fQnZ
 w4wz69rwMOm+YGAO2+W0W0UoAQq55soBpIohLQsCSozsN6TKaEHdjfCDmxrMG6/usXUQ
 1mhGD6NdDdlevK8OzfOS8DVwG/VkttOxYyPwa2RHOzshpf7S/wCClFkyyqeglrB5fDpV
 ENu4eM04faVtyQdsWzTuHlPyjVBCo1/wGSGgmyp6UL4fqrtibgO4vCKKP4Az2u0vLsvr
 n2l7Zjpk3qR75L9crD8tKEbtjF3q+//GYWB8Hv4WQHIIrAXNP5ZtTbXmPLIH2LR0Y6QS
 N7bA==
X-Gm-Message-State: APjAAAX993ASn08C+WwTSKQV2FC2RvrQjmb8FtxnTmx3R/FpLgaQbcHW
 l1E93Ns0O0qsE4xOUJinqOs=
X-Google-Smtp-Source: APXvYqyjEjn6Q7TMSa3v2zJc8CFZWsAQ1wflnszCtTP1sQVyz8SuBFFbv4nkH0dun/PTRKE5UUWPYg==
X-Received: by 2002:a37:6b87:: with SMTP id
 g129mr21736018qkc.305.1559697006664; 
 Tue, 04 Jun 2019 18:10:06 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id v41sm7169401qta.78.2019.06.04.18.10.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 18:10:06 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/6] staging: kpc2000: kpc_spi: remove unnecessary struct
 member pin_dir
Date: Wed,  5 Jun 2019 01:09:09 +0000
Message-Id: <d3f48293a099af312ecb5682cc367e0e9b98e9a1.1559696611.git.gneukum1@gmail.com>
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

The structure kpc_spi, defined in in the kpc2000_spi driver, contains
a member named pin_dir which is never used after initialization.
Therefore, it should be removed for simplicity's sake.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 20c396bcd904..1d89cb3b861f 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -105,7 +105,6 @@ struct kp_spi {
 	u64 __iomem        *base;
 	unsigned long       phys;
 	struct device      *dev;
-	unsigned int        pin_dir:1;
 };
 
 struct kp_spi_controller_state {
@@ -460,7 +459,6 @@ kp_spi_probe(struct platform_device *pldev)
 	if (pldev->id != -1) {
 		master->bus_num = pldev->id;
 	}
-	kpspi->pin_dir = 0;
 
 	r = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 	if (r == NULL) {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
