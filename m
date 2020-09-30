Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7A927EBAC
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Sep 2020 17:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E93A85F10;
	Wed, 30 Sep 2020 15:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rpq7ASuumod9; Wed, 30 Sep 2020 15:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 591F086151;
	Wed, 30 Sep 2020 15:01:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A03A11BF407
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 15:01:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D250860FD
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 15:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ejkP0CiKh86L for <devel@linuxdriverproject.org>;
 Wed, 30 Sep 2020 15:01:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 66B95861C5
 for <devel@driverdev.osuosl.org>; Wed, 30 Sep 2020 15:01:08 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c4.dynamic.kabel-deutschland.de
 [95.90.213.196])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC5A52076B;
 Wed, 30 Sep 2020 15:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601478068;
 bh=aE04Gn+SHVdidjsY0sHGoYsJR2y/ODqMgSn6wdS7TGg=;
 h=From:To:Cc:Subject:Date:From;
 b=dKL70A8wHqaVQtOnqtIR4clcWzMdcI+3oXKAghV5w578Y+XAHqAzE9JsPPOifAqf/
 4Mr5Qaw5T1zQGbcvOYAy2dnKqcXQbzmUmHSSSTBRLkeBOGvZ4Q5q1JIFnsm2bYcib8
 DqTwM91Urf7FcKEC2DbzE2SY6VZ9qvr+NdMgUESg=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kNdbN-001Yhh-81; Wed, 30 Sep 2020 17:01:05 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH v2] media: atomisp: fixes a breakage due to a cleanup patch
Date: Wed, 30 Sep 2020 17:01:03 +0200
Message-Id: <9e5f813977bcc53a65bf719658ad73f933e6270e.1601478042.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
 linux-kernel@vger.kernel.org, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A temporary var needed for building with ISP2400 was removed
by accident on a cleanup patch.

Fix the breakage.

Fixes: 852a53a02cf0 ("media: atomisp: get rid of unused vars")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---

v2: fixed a typo at comment: ISP2401 -> ISP2400

 drivers/staging/media/atomisp/pci/sh_css.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index e8c5caf3dfe6..8e4e82a97098 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -1365,7 +1365,6 @@ start_binary(struct ia_css_pipe *pipe,
 {
 	assert(pipe);
 	/* Acceleration uses firmware, the binary thus can be NULL */
-	/* assert(binary != NULL); */
 
 	if (binary)
 		sh_css_metrics_start_binary(&binary->metrics);
@@ -1381,7 +1380,7 @@ start_binary(struct ia_css_pipe *pipe,
 #endif
 
 #if !defined(ISP2401)
-	if (stream->reconfigure_css_rx) {
+	if (pipe->stream->reconfigure_css_rx) {
 		ia_css_isys_rx_configure(&pipe->stream->csi_rx_config,
 					 pipe->stream->config.mode);
 		stream->reconfigure_css_rx = false;
-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
