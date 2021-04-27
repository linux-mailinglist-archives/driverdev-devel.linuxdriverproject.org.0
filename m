Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5557E36C280
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 12:14:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4E1D83A42;
	Tue, 27 Apr 2021 10:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1NHRoih_VeSo; Tue, 27 Apr 2021 10:14:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 248D483083;
	Tue, 27 Apr 2021 10:14:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65E4C1BF2BA
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 59DF94039F
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sBMUs6ldMwok for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 10:13:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF06040246
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 10:13:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 45F64613F3;
 Tue, 27 Apr 2021 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619518431;
 bh=ZOYDC8nizVOemN97ng0w67F2uxMXkIsqLhOdGgCw1ys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ltbs4haX77wUTaNgOEPnkCkZ5mFTCSyn0QYu8/7qqZBV13a09lu4T5A0rYj/ZEpEP
 uzX25/iWkZqaoIM3h6qfKibVdPRayUV6uk5aeUCYsa65+azmLIb/8nxuGqFF3rzlKL
 eTMBve+MVtSJ+HMcNJgxZA+LAgeV0Zya1jy9xtyxvmbBl7QVUP8zsgG4cgo+PbJ0Mh
 CSZIR0SdezMrSGvkzVTicfJGFnYJklNBN2DBgnYFk+I02MSYtoLfUqDboUaQ/7iR5t
 RigO9HTjK+mSMEKIt/M1CCMj6czpg92eFlYHoIsip98CwhCrwcctX+KoUPRKeJJmNe
 5xnxUBEEGSTRg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKiz-000j5b-0M; Tue, 27 Apr 2021 12:13:49 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 21/79] staging: media: atomisp_fops: use
 pm_runtime_resume_and_get()
Date: Tue, 27 Apr 2021 12:12:48 +0200
Message-Id: <6db5624e2d137349965451f66bc47bbde357c60c.1619518193.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619518193.git.mchehab+huawei@kernel.org>
References: <cover.1619518193.git.mchehab+huawei@kernel.org>
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
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
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
 drivers/staging/media/atomisp/pci/atomisp_fops.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_fops.c b/drivers/staging/media/atomisp/pci/atomisp_fops.c
index f1e6b2597853..26d05474a035 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_fops.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_fops.c
@@ -837,7 +837,7 @@ static int atomisp_open(struct file *file)
 	}
 
 	/* runtime power management, turn on ISP */
-	ret = pm_runtime_get_sync(vdev->v4l2_dev->dev);
+	ret = pm_runtime_resume_and_get(vdev->v4l2_dev->dev);
 	if (ret < 0) {
 		dev_err(isp->dev, "Failed to power on device\n");
 		goto error;
@@ -881,9 +881,9 @@ static int atomisp_open(struct file *file)
 
 css_error:
 	atomisp_css_uninit(isp);
-error:
-	hmm_pool_unregister(HMM_POOL_TYPE_DYNAMIC);
 	pm_runtime_put(vdev->v4l2_dev->dev);
+error:
+	hmm_pool_unregister(HMM_POOL_TYPE_DYNAMIC);
 	rt_mutex_unlock(&isp->mutex);
 	return ret;
 }
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
