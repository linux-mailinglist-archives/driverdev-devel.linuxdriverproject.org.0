Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A071EC9E7
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 09:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7BB6D227FA;
	Wed,  3 Jun 2020 07:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SWmNqY2PJvVn; Wed,  3 Jun 2020 07:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 66E522155D;
	Wed,  3 Jun 2020 07:01:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E9E41BF3E9
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 129EE887A7
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 28kLIUvfZGgN for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 07:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F32308879D
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DB2020823;
 Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591167665;
 bh=0dQGWcnYVN8Hkuw4qUnBGLhGgxiezGaQzydsDwZYL9M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BeauKyPCyz9dTsPvpk7dKMIhtJ5y19+PB17cMIM4HYTznEubBdfHQ5sBkZU2rinSB
 SU/AUJlbgiGbOTdPduGiDnljBA4fLAlzWTooHfk/f7hNMUELcSJ83EDT7pAeJF/pmv
 pOG9aU5PMMJhSacJ9eiivoJITQMs6p+ZlTtGif1o=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgNOZ-004j8v-LV; Wed, 03 Jun 2020 09:01:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 12/15] media: atomisp: use different dfs failed messages
Date: Wed,  3 Jun 2020 09:00:58 +0200
Message-Id: <cae52f044d860a09a62ec1956751b0fa283645b8.1591167358.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591167358.git.mchehab+huawei@kernel.org>
References: <cover.1591167358.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are several parts of the driver that could produce
a "dfs failed!" message. Change the texts, in order to help
identifying from where they're coming.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c   | 4 ++--
 drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 4252d3d37649..6c324815c0f6 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -1407,10 +1407,10 @@ static void __atomisp_css_recover(struct atomisp_device *isp, bool isp_timeout)
 				       atomisp_css_valid_sof(isp));
 
 		if (atomisp_freq_scaling(isp, ATOMISP_DFS_MODE_AUTO, true) < 0)
-			dev_dbg(isp->dev, "dfs failed!\n");
+			dev_dbg(isp->dev, "DFS auto failed while recovering!\n");
 	} else {
 		if (atomisp_freq_scaling(isp, ATOMISP_DFS_MODE_MAX, true) < 0)
-			dev_dbg(isp->dev, "dfs failed!\n");
+			dev_dbg(isp->dev, "DFS max failed while recovering!\n");
 	}
 
 	for (i = 0; i < isp->num_of_streams; i++) {
diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 0a76f388b38b..15567623b51b 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -1810,15 +1810,15 @@ static int atomisp_streamon(struct file *file, void *fh,
 		if (atomisp_streaming_count(isp) > 1) {
 			if (atomisp_freq_scaling(isp,
 						 ATOMISP_DFS_MODE_MAX, false) < 0)
-				dev_dbg(isp->dev, "dfs failed!\n");
+				dev_dbg(isp->dev, "DFS max mode failed!\n");
 		} else {
 			if (atomisp_freq_scaling(isp,
 						 ATOMISP_DFS_MODE_AUTO, false) < 0)
-				dev_dbg(isp->dev, "dfs failed!\n");
+				dev_dbg(isp->dev, "DFS auto mode failed!\n");
 		}
 	} else {
 		if (atomisp_freq_scaling(isp, ATOMISP_DFS_MODE_MAX, false) < 0)
-			dev_dbg(isp->dev, "dfs failed!\n");
+			dev_dbg(isp->dev, "DFS max mode failed!\n");
 	}
 
 	if (asd->depth_mode->val && atomisp_streaming_count(isp) ==
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
