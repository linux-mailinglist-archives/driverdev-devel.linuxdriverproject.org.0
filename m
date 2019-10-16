Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F158D8A34
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 09:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 83A5C230BD;
	Wed, 16 Oct 2019 07:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eomGh4ul22Cl; Wed, 16 Oct 2019 07:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 48099204A4;
	Wed, 16 Oct 2019 07:49:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08C4B1BF386
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0544B204A4
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FZyN5e5zlUpm for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 07:49:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E17220454
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 07:49:46 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 205so14199673pfw.2
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 00:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QxVCTrKNjWhjlkyA4a4PjlbJLD0+omh4Y9cUtwpdEOA=;
 b=OMn/uozybDyJ9qIacgsKR5i2xsl4C51c37saVXfjn6GamJRMlpOt5MAVHteJ1qGRro
 dGXg6ajSh5gn8ytw2CfWKPLyjAaHXxeeHUmr69I1/WUcU/Mku5vCUpDSar4dvWjH4lWR
 8W+9/5zn8OQfsHaf9u/WlpOYHIr4dmcbjXL2cU8SxnA1NG8RlLt5gjP4pHUt1hdQ9UtC
 tg9b2qqCGM+ispJa/kUI9KR3OxMNniw1JasulRBP61OzWup2N8r8vGplEnQ4i93njAxE
 ITcJH252Lg48dZ7YGSbF6VV5nsUQ5i01X7iF2FhCs7b/2bcZvVWdQajXpkFWXHzSMEYH
 mNjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QxVCTrKNjWhjlkyA4a4PjlbJLD0+omh4Y9cUtwpdEOA=;
 b=A4cgGq+P/W7gjJkAUkBqItupZ3lxTJiyprBlBnOi6LG+kjFg+ZnPADxXEX4VTdt/TC
 h56EwZ81IQFE/wCYXQeAuOzEUhDJm2u19aQCeJRzUeuhMsyigXGpZY1UdcyRYdrnS5qj
 bt1W7ByZooE2XCDgqiJp0Rswei8WwuvHIiKVGAhc9hZRN6y2qblevGn+9dYzM7axceNi
 v0YDnuzy/VkwY94DT8fz9kfZ59obmE+yTlGYXoVRGXLo9/R1VbervgPrA39m09eVzjKS
 OYeGRGaveIiZvewvVOnCPmBoxtq+eLuGJg8EbE1/zzHrAs8+wac8xwzJlJ3gbMA5rWot
 BoOw==
X-Gm-Message-State: APjAAAVc6yqJ9Hzcxg4eSgbgHk2p/wYHMBHgOpMmiW2n3keQKEzE08MF
 6mkiKWAU/3hVAhRTyIjelBk=
X-Google-Smtp-Source: APXvYqyBIWi1fibA5NNpBIjOsULSY9vDiRqs7yaMjVWMqDHldO6QZCr82BIUx4zsyleI3ZT7gX8YFA==
X-Received: by 2002:a62:e312:: with SMTP id g18mr136443pfh.250.1571212186003; 
 Wed, 16 Oct 2019 00:49:46 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id d1sm25185522pfc.98.2019.10.16.00.49.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:49:45 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (missing blank line)
Date: Wed, 16 Oct 2019 00:49:24 -0700
Message-Id: <20191016074927.20056-1-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
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

Resolved: "CHECK: Please use a blank line after.." from checkpatch.pl

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
Previous versions of these patches were not split into different 
patches, did not have different patch numbers and did not have the
keyword staging.
 drivers/staging/kpc2000/kpc2000_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 6ba94b0131da..5712a88c8788 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -50,6 +50,7 @@ static struct flash_platform_data p2kr0_spi0_pdata = {
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi0_parts),
 	.parts =	p2kr0_spi0_parts,
 };
+
 static struct flash_platform_data p2kr0_spi1_pdata = {
 	.name =		"SPI1",
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi1_parts),
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
