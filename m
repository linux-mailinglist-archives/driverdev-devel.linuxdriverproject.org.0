Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D4817472B
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Feb 2020 15:05:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3645E88231;
	Sat, 29 Feb 2020 14:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMiQi662o4SX; Sat, 29 Feb 2020 14:05:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E8CA881AB;
	Sat, 29 Feb 2020 14:05:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CBA71BF336
 for <devel@linuxdriverproject.org>; Sat, 29 Feb 2020 14:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 66C4D20372
 for <devel@linuxdriverproject.org>; Sat, 29 Feb 2020 14:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vn3-+VnXAIrL for <devel@linuxdriverproject.org>;
 Sat, 29 Feb 2020 14:05:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id E261320362
 for <devel@driverdev.osuosl.org>; Sat, 29 Feb 2020 14:05:50 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id r67so2496019pjb.0
 for <devel@driverdev.osuosl.org>; Sat, 29 Feb 2020 06:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:to:cc:subject:mime-version:content-disposition
 :user-agent; bh=0Wg9/zfrqeQTxFTAVntMjcBHDKBu0oSKIa1cm5v5zzU=;
 b=tXYzdkrLKmFbwucPiRDys6E5pK65wETyOHAKjJn/1sLwMO7jpYU0vc5b9jPW2+ZUfX
 mVdvg58pjgf+OnR4c2xGez52FLCWPNgrAFyhz1NLLv2G3VKGlUHSpHbE6cElr+RAcmgd
 wkSbn/Ipj4p4/AC3QQYI+BO9u4MXIQwJoXBO8WNWpVtCL5kvZ4/6B2nl1Qv34lJOwqZk
 MmXAapf8MB2+yWpBNYWm3FX+P++oczppoXKYMBe9ULBsxW59P8/n+H8U7OZ0ip93Z46M
 xHi61nJ3fop6n7Ol01ULNrccFEnSp/yPTgw6FcFbkG8Cn+ui3szZ0kqB5/uqaMlJJTTe
 PArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
 :content-disposition:user-agent;
 bh=0Wg9/zfrqeQTxFTAVntMjcBHDKBu0oSKIa1cm5v5zzU=;
 b=bzrcs8TJbAh2vlBMGauvD0tPb/ZC8FNOAzNhLTW2h4bi77CbyxmYLOvsHDTtCbX++J
 lV8zT6p49HGSuH6wCGjv/w6got8oc/Qi6xxQIX6sR3LwT352s+nujGEbFAxv1XM5SCig
 SQZBX6VeOhPrPZazCp5SJDRbNoP7Kp27MbIV6FJh1ychYSuJyxnYLB9C+3dnors+8vh3
 XTi6l1hiSsVGws3z4N3enZoGKNC3acTvl6s2D3ENw2TxiNRj7fLKGAhmZHDCFgDjhXNf
 C/aJkP4NQzBpoRVAwuSP02gA6+PL/80Kf6SB1T4Vj8kovOYk15rTOCW8LGUJsWdz610X
 NcJg==
X-Gm-Message-State: APjAAAVODzHPjTMbiTjxqUmGxu2bIMJeqjqrilrR8AEqX9ltxlgswVNG
 18bXSDNb8qaEPscl/bS9GSehGrub5sxNiYvI
X-Google-Smtp-Source: APXvYqy8wfTx7MgfbrBdcWr+vKL7O3VfSPsdQm6MlZjEhO5Obp2zPKydy7tv5+gB1cKU+6wjwFZ+cw==
X-Received: by 2002:a17:90a:f17:: with SMTP id 23mr9814574pjy.84.1582985150059; 
 Sat, 29 Feb 2020 06:05:50 -0800 (PST)
Received: from SARKAR ([49.207.56.215])
 by smtp.gmail.com with ESMTPSA id x66sm2635781pgb.9.2020.02.29.06.05.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Feb 2020 06:05:49 -0800 (PST)
Message-ID: <5e5a6fbd.1c69fb81.f08c3.4cf0@mx.google.com>
X-Google-Original-Message-ID: <20200229140545.GA1507@rohitsarkar5398@gmail.com>
Date: Sat, 29 Feb 2020 19:35:45 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: linux-iio@vger.kernel.org
Subject: [PATCH v3] staging: iio: update TODO
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
Cc: devel@driverdev.osuosl.org, grekh@linuxfoundation.org, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since there are no uses of the old GPIO API, remove the item from
the TODO.

Changelog
v3: Remove new items added.
v2: Add work item mentioned by Alexandru in
https://marc.info/?l=linux-iio&m=158261515624212&w=2

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 drivers/staging/iio/TODO | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/iio/TODO b/drivers/staging/iio/TODO
index 1b8ebf2c1b69..4d469016a13a 100644
--- a/drivers/staging/iio/TODO
+++ b/drivers/staging/iio/TODO
@@ -1,10 +1,4 @@
-2018-04-15
-
-All affected drivers:
-Convert all uses of the old GPIO API from <linux/gpio.h> to the
-GPIO descriptor API in <linux/gpio/consumer.h> and look up GPIO
-lines from device tree, ACPI or board files, board files should
-use <linux/gpio/machine.h>.
+2020-02-25
 
 
 ADI Drivers:
-- 
2.23.0.385.gbc12974a89

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
