Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D196D989
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 05:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55F1A88163;
	Fri, 19 Jul 2019 03:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zgQ1FxYLtdAe; Fri, 19 Jul 2019 03:57:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C72E787FE7;
	Fri, 19 Jul 2019 03:57:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 077521BF96A
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 03:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03C79880A1
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 03:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 820kYfnzkQAM for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 03:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4D2EB87FE7
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 03:57:01 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 607822082E;
 Fri, 19 Jul 2019 03:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508621;
 bh=zMKnazpAF4OC5FetD91mPIJFHI0i25tXLO3dsyYyssI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iAF4jKVl1NFzd0OqVx42b4wpTl3ndEoeEXcN+IVv+N6TacQS5N2/5Yl2q97/oVXy3
 +LcM4IKZ/S1rFqLlgrkfh2CVWQF1kFsLM6W8Ma6qjl2YaIlqmup15kud6FOW0JnU9G
 lDHPYTkGvRjh1xIgbZfL/3h/SuyfgGoKnCOde5ZU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 006/171] staging: kpc2000: added missing clean-up
 to probe_core_uio.
Date: Thu, 18 Jul 2019 23:53:57 -0400
Message-Id: <20190719035643.14300-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Jeremy Sowden <jeremy@azazel.net>

[ Upstream commit abb611d2c21c0a4fa8eab35dc936c80d9a07acd8 ]

On error, probe_core_uio just returned an error without freeing
resources which had previously been allocated.  Added the missing
clean-up code.

Updated TODO.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/kpc2000/TODO                 | 1 -
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 3 +++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/TODO b/drivers/staging/kpc2000/TODO
index 8c7af29fefae..ed951acc829a 100644
--- a/drivers/staging/kpc2000/TODO
+++ b/drivers/staging/kpc2000/TODO
@@ -1,7 +1,6 @@
 - the kpc_spi driver doesn't seem to let multiple transactions (to different instances of the core) happen in parallel...
 - The kpc_i2c driver is a hot mess, it should probably be cleaned up a ton.  It functions against current hardware though.
 - pcard->card_num in kp2000_pcie_probe() is a global variable and needs atomic / locking / something better.
-- probe_core_uio() probably needs error handling
 - the loop in kp2000_probe_cores() that uses probe_core_uio() also probably needs error handling
 - would be nice if the AIO fileops in kpc_dma could be made to work
     - probably want to add a CONFIG_ option to control compilation of the AIO functions
diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index e0dba91e7fa8..d6b57f550876 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -295,6 +295,7 @@ int  probe_core_uio(unsigned int core_num, struct kp2000_device *pcard, char *na
     kudev->dev = device_create(kpc_uio_class, &pcard->pdev->dev, MKDEV(0,0), kudev, "%s.%d.%d.%d", kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
     if (IS_ERR(kudev->dev)) {
         dev_err(&pcard->pdev->dev, "probe_core_uio device_create failed!\n");
+        kfree(kudev);
         return -ENODEV;
     }
     dev_set_drvdata(kudev->dev, kudev);
@@ -302,6 +303,8 @@ int  probe_core_uio(unsigned int core_num, struct kp2000_device *pcard, char *na
     rv = uio_register_device(kudev->dev, &kudev->uioinfo);
     if (rv){
         dev_err(&pcard->pdev->dev, "probe_core_uio failed uio_register_device: %d\n", rv);
+        put_device(kudev->dev);
+        kfree(kudev);
         return rv;
     }
     
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
