Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D8014F80D
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Feb 2020 15:28:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A9C787B8A;
	Sat,  1 Feb 2020 14:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fRdTBZ3er3eZ; Sat,  1 Feb 2020 14:28:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 54A1587B60;
	Sat,  1 Feb 2020 14:28:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD1D41BF389
 for <devel@linuxdriverproject.org>; Sat,  1 Feb 2020 14:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA241860D1
 for <devel@linuxdriverproject.org>; Sat,  1 Feb 2020 14:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bm+lrVe4p8A0 for <devel@linuxdriverproject.org>;
 Sat,  1 Feb 2020 14:28:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F05B86091
 for <devel@driverdev.osuosl.org>; Sat,  1 Feb 2020 14:28:15 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 84so5003911pfy.6
 for <devel@driverdev.osuosl.org>; Sat, 01 Feb 2020 06:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=RM8QljI8F7IDMHfQopnocrrlGfYFPT7dWalw647v8Do=;
 b=WUzfyz1JTZSUgXLrjnH3f8NAQ5p69+G3gvHAyOpYpa6PLj/44vExJD0v7HgYEW/Igu
 wYNkDHPsZaZQCWmaLou6Jo98RVUvCMhcOueSmFxnIIc97en3fxv2Mb79PXROSW3dPHBM
 bEhB/jNWd9uMo6n/amhvhoWE+yR0wzxiREZHzfFPxjhwKLvUiJnKLoCVxUxImNcdW+Tv
 yLMuqH2Mxygqr2on6tW6nRywF165y0NESRplTz0lSZ8DFzKhVA4tARli4jvIl9vUjGtB
 9yoL9gKuEpDq9q5cfdJBfuqpq6tKmARIzWKUdILYf57ehj12HU4XLRcdfeklJatitQqF
 DkNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=RM8QljI8F7IDMHfQopnocrrlGfYFPT7dWalw647v8Do=;
 b=jNzmAlxKnllABoT1Gc2Jw133Ob0akB4QQwSaVRr+03EvGAcwh7SB32YfMK4qW8C5Lw
 5IpPZD+msFljCMJNtrotMJVJWzWS5f/BeL0B5z8flhrEfS6T1m6ovjExPmzKt+lypObs
 e6XqyJKMgEouAuHZnW+KPOV+B4DR8vviwtTSkFRY09rIFdKT8eV5xgLSxrqsWgmNkbys
 teGJopqEOYBQAYE84vGFrZnzYhPdkE1Iptos06G92jutrqQ+f6AzaFIgkhpZDp7WcFCH
 V1JOu8gujBAKhe8K9PhMpgGxli9z8lP3aswfLWf5DX7jKbLSRmzolmKdiRYRsC62UNKN
 hMxQ==
X-Gm-Message-State: APjAAAX5UBxuvZzDvUjRz1STd8pRKS95vLLExVHq+I6AvgnQ6Tq/9OxU
 b88lsDSfVpS5Kdfjikowpz8=
X-Google-Smtp-Source: APXvYqyQAKCu9Bkxu0fnQZjzRJD/oKMCqEhMHHKAMRQ8hzQ5RgKH5x0tR5WrNo54xv9o3190n72JHQ==
X-Received: by 2002:a63:1e1d:: with SMTP id e29mr16111087pge.347.1580567294622; 
 Sat, 01 Feb 2020 06:28:14 -0800 (PST)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id f8sm14006494pfn.2.2020.02.01.06.28.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 01 Feb 2020 06:28:14 -0800 (PST)
Date: Sat, 1 Feb 2020 19:58:08 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joe Perches <joe@perches.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] staging: netlogic: Use the correct style for SPDX License
 Identifier
Message-ID: <20200201142804.GA12814@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch corrects the SPDX License Identifier style in
header files related to Netlogic network devices.
It assigns explicit block comment to the SPDX License Identifier.

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/staging/netlogic/platform_net.h | 4 ++--
 drivers/staging/netlogic/xlr_net.h      | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/netlogic/platform_net.h b/drivers/staging/netlogic/platform_net.h
index f152d84099a2..c8d4c13424c6 100644
--- a/drivers/staging/netlogic/platform_net.h
+++ b/drivers/staging/netlogic/platform_net.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
- *
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) */
+/*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
  */
diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
index 518ea809b8fa..8365b744f9b3 100644
--- a/drivers/staging/netlogic/xlr_net.h
+++ b/drivers/staging/netlogic/xlr_net.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
- *
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) */
+/*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
  */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
