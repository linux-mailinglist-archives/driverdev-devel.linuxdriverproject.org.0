Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441BD36D9E3
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 16:53:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9832C40599;
	Wed, 28 Apr 2021 14:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ifgkR0W-V6VF; Wed, 28 Apr 2021 14:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0016405C6;
	Wed, 28 Apr 2021 14:53:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 206461C119D
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 14:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E7AF8442A
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 14:52:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJ752yiKKPMK for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 14:52:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AF3E84334
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 14:52:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 386906161E;
 Wed, 28 Apr 2021 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619621564;
 bh=ZOYDC8nizVOemN97ng0w67F2uxMXkIsqLhOdGgCw1ys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VgxbE4mJ0ZEcoI1ecyYFcTPlzsW49H2M63eqo68iaWSmjvRqXboDB5xQMbytGDWQk
 76GoPeVrxn1RYKVBnd+MXI44IscCshuUzdKYOISFkyavzinHVX6S9dQvZuYZ/c0kKr
 lG9PDH6exDcSyX5wsHVpaEVPDOkv77fIeL82HhbEgta0782dmoBWO8yOY3Bc7nwAM+
 GxYxl53JlYU7btpAVOW3OIcuxKbhQ13c/LFfcBMSEltOF4Fgc6TacvT9CYVM7Io6uw
 TJts9T+pQndgP3gPyl5Y7itlI8I7H01MRldR5N33kS1+NZ3cVPZdxmT1j4pM5o43zS
 SPIku5x/jRyKw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lblYQ-001Dqb-5a; Wed, 28 Apr 2021 16:52:42 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v4 21/79] staging: media: atomisp: use
 pm_runtime_resume_and_get()
Date: Wed, 28 Apr 2021 16:51:42 +0200
Message-Id: <18b1c2debc56925d9caf2d67a794f761557a26f4.1619621413.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
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
