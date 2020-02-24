Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A729D16B0B7
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 20:59:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE4A286308;
	Mon, 24 Feb 2020 19:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FExKj6_rauiu; Mon, 24 Feb 2020 19:59:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A733285F98;
	Mon, 24 Feb 2020 19:59:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20B9D1BF271
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 19:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1CC92204FD
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 19:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKf4y-kk5zK3 for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 19:59:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 7DCFF20365
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 19:59:21 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id fa20so215288pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 11:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=D4b30bsFaM6aQ6rqyFLlBvmrkLtttzdiSpKK5W3uPsQ=;
 b=OLSAsUBE9Mu3JoY5a8xmaNZ++B2E03CuwO9FLQfTppS/VgA9WgcCIMZQ3lMxIakQO9
 aeukzi+XoBHSDOgYoOr/19AKu4dZgoHbE8DStNw3xtAhKg7P+AAX83R5T2CSEiQSga7c
 vioTb5TzzXlju2wwlvJCJXzCC9beEBscZxH1ULjgf4EhsRVyU6jLjSq4iEPCgexcsFfQ
 aKQYgUfG9AdIPDLaznwg1Yz8ahXhieRWRd6aa4uHThGUZDV+GAj3xKB/TSqOmHoHMu2E
 Yhx5Y/R1qO+ZDt0RevJlL0SMM1L0PfqcYLm3X/1RExp/AWVRNZWAHMd0N4sGw438rupd
 pIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=D4b30bsFaM6aQ6rqyFLlBvmrkLtttzdiSpKK5W3uPsQ=;
 b=WDD6qnBVNeM7b/6wUN4/O6N/TS9ZzdN9H9woA8ivcnIhQHxz93sRUZAT3uTtlvy33i
 9dulVC7FOt0sfFYA4p49OR/fsri5Tqwhf2s1K5plPaxJbUEEaQE0gPq5+q0vHO+2Mc4G
 T0oGet2rsu/MafKUF+jReSYeMlMG3kLKEdZdyGh5hYlBGFlenu1+9jMhgsvre3kKGjem
 ZIxFh4HqR/LGRv47fqLP9vF5f/45oMdze9r1xqUmCfOzUlh8hZtqUL81NeOrx0bgi0xz
 oqjBR2R5xpmjgAHSu4iUdC7t0pZ0/li4s6ufO1ts0CXk9YlTnoRbf/KM81KERQMXt9kx
 BIjA==
X-Gm-Message-State: APjAAAVifQqGyfqnrowXaUjHgNYdwSjN2fPidke2nBVzdByj4wW7MTZD
 kT/zLHvvbBfc696JJnz0R7PXuMoycgU=
X-Google-Smtp-Source: APXvYqzMO6snqqS4kZrtZMsvWd04UcispwWolEkebly7CBw6rrm+l1c+XOUPvI86A/qE9F8b8P6auw==
X-Received: by 2002:a17:90a:f012:: with SMTP id
 bt18mr884273pjb.8.1582574360420; 
 Mon, 24 Feb 2020 11:59:20 -0800 (PST)
Received: from SARKAR ([49.207.57.206])
 by smtp.gmail.com with ESMTPSA id b1sm13789918pfp.44.2020.02.24.11.59.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 11:59:19 -0800 (PST)
Date: Tue, 25 Feb 2020 01:29:15 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: update TODO
Message-ID: <20200224195915.GA8371@SARKAR>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

gregkh@linuxfoundation.org, jic23@kernel.org
Bcc: 
Subject: [PATCH] staging: iio: update TODO
Reply-To: 

Since there are no more uses of the old GPIO API in iio staging drivers
remove that work item from the TODO.

Add other work items with reference to the conversation in [1]

[1]: https://marc.info/?l=linux-iio&m=158256721009892&w=2

Thanks,
Rohit

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 drivers/staging/iio/TODO | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/TODO b/drivers/staging/iio/TODO
index 1b8ebf2c1b69..783878f25f08 100644
--- a/drivers/staging/iio/TODO
+++ b/drivers/staging/iio/TODO
@@ -1,11 +1,13 @@
-2018-04-15
+2020-02-25
 
-All affected drivers:
-Convert all uses of the old GPIO API from <linux/gpio.h> to the
-GPIO descriptor API in <linux/gpio/consumer.h> and look up GPIO
-lines from device tree, ACPI or board files, board files should
-use <linux/gpio/machine.h>.
+- Documentation
+  - Binding docs for devices that are obviously used via device tree
+  - Yaml conversions for abandoned drivers
+  - ABI Documentation
+  - Audit driviers/iio/staging/Documentation
 
+- Replace iio_dev->mlock by either a local lock or use iio_claim_direct.
+(Requires analysis of the purpose of the lock.)
 
 ADI Drivers:
 CC the device-drivers-devel@blackfin.uclinux.org mailing list when
-- 
2.23.0.385.gbc12974a89

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
