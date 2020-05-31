Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 347901E96A0
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 11:40:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13767872F8;
	Sun, 31 May 2020 09:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IXI0FYMlKG4R; Sun, 31 May 2020 09:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3291586FEA;
	Sun, 31 May 2020 09:40:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 636B81BF23F
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 09:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F02486E6F
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 09:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pgLzlIiEpSjV for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 09:40:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C671F86E5E
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 09:40:45 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E4042076B;
 Sun, 31 May 2020 09:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590918045;
 bh=U75lywJFpwnpkKniRWfAJBcFImcYZiEx8hWiOyjPfHQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y+tXzfQwJNVdHvNvckj5l5b1fGQnixQgGZWvq5fQ6OiG+ya5LRV0RLDUOCcVhGpF5
 YCaEr2LqDvDDCGpSxg2kLaWHS/PZwj0eyMcTewcQOmO6ETfw7D9Y4r4Wm2kUAtHcy1
 WSEsTeE5dSjt5FGJQB8+KNh+Q5n1TRHl3yP0sUI0=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jfKSQ-003TMZ-D8; Sun, 31 May 2020 11:40:42 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 2/2] media: atomisp comment an unused code
Date: Sun, 31 May 2020 11:40:41 +0200
Message-Id: <2c7e69c6503ceef7a7d686d9eacf6dcff4b62d79.1590918032.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <1e056919536d65daf06091345a62523f827fde7a.1590918032.git.mchehab+huawei@kernel.org>
References: <1e056919536d65daf06091345a62523f827fde7a.1590918032.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There's a different table for some BYT variants that depend
on something inside a FIXME ifdef.

Place this also inside it, just to shut up a clang-11 warning.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 094a2886bd62..5ac63c77570a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -392,6 +392,13 @@ static const struct atomisp_freq_scaling_rule dfs_rules_byt_cr[] = {
 	},
 };
 
+#ifdef FIXME
+/*
+ * Disable this, as it is used only when this is true:
+ *	INTEL_MID_BOARD(3, TABLET, BYT, BLK, PRO, CRV2) ||
+ *	INTEL_MID_BOARD(3, TABLET, BYT, BLK, ENG, CRV2))
+ * However, the original code is commented
+ */
 static const struct atomisp_dfs_config dfs_config_byt_cr = {
 	.lowest_freq = ISP_FREQ_200MHZ,
 	.max_freq_at_vmin = ISP_FREQ_320MHZ,
@@ -399,6 +406,7 @@ static const struct atomisp_dfs_config dfs_config_byt_cr = {
 	.dfs_table = dfs_rules_byt_cr,
 	.dfs_table_size = ARRAY_SIZE(dfs_rules_byt_cr),
 };
+#endif
 
 static const struct atomisp_freq_scaling_rule dfs_rules_cht[] = {
 	{
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
