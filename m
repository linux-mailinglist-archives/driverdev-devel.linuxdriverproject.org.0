Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28DE369F29
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Apr 2021 08:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15B9940681;
	Sat, 24 Apr 2021 06:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EBsm58-7MOWN; Sat, 24 Apr 2021 06:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58AD740133;
	Sat, 24 Apr 2021 06:46:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E03B51BF39E
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4156040359
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xppML_cca0zi for <devel@linuxdriverproject.org>;
 Sat, 24 Apr 2021 06:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A0F074050D
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 06:45:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2653761584;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246733;
 bh=9FSuKWFuUqPUC2dP9taAm5sC7kLWnC4fEOP9jl+QpYQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P1rlvfWICHzYQjAeRTWZGi1fek8JE31SKg6P3Ng3YeBzD7uQ0kL4JFugJmcA8+HeC
 7ezVuETYnfrNuzsaCSzS7VlniCF5gfAc/o52ejMmVuqLZ+WhhJ93+OtiHkBmjXLgst
 Wru9FQFEHDlwd5nKcN2UsvcmcBrfSy++XpuEEnCDrWE3UEeclMaHrIf/3LT9sa7ZIl
 CNksrXcVYYlYLSiVABqo1YjlSHxsHKzpElve+Nw1ZLk3970A57yj5edAtzNoB7hGlU
 PIWGLkJQTsIclDvQF8SXkRblltt4ZRn7lLam1HCghaGlbMc6AawBleHKkca0h//g50
 DvTK196PQ2BXQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004JeR-9z; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 15/78] staging: media: ipu3: use pm_runtime_resume_and_get()
Date: Sat, 24 Apr 2021 08:44:25 +0200
Message-Id: <568cb990e646be64c7d8017c1845621f66d1b9cc.1619191723.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 mauro.chehab@huawei.com, Bingbu Cao <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

Use the new API, in order to cleanup the error check logic.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/ipu3/ipu3.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3.c b/drivers/staging/media/ipu3/ipu3.c
index ee1bba6bdcac..8e1e9e46e604 100644
--- a/drivers/staging/media/ipu3/ipu3.c
+++ b/drivers/staging/media/ipu3/ipu3.c
@@ -392,10 +392,9 @@ int imgu_s_stream(struct imgu_device *imgu, int enable)
 	}
 
 	/* Set Power */
-	r = pm_runtime_get_sync(dev);
+	r = pm_runtime_resume_and_get(dev);
 	if (r < 0) {
 		dev_err(dev, "failed to set imgu power\n");
-		pm_runtime_put(dev);
 		return r;
 	}
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
