Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAB7251102
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 06:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD10B861F0;
	Tue, 25 Aug 2020 04:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZBAw1snOBqsh; Tue, 25 Aug 2020 04:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB92B861AA;
	Tue, 25 Aug 2020 04:57:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 538721BF2BA
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 04:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BFC087C16
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 04:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0mXkbeUlBvqC for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 04:57:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0169.hostedemail.com
 [216.40.44.169])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51B0887C11
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 04:57:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 4829618019F02
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 04:57:24 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 079EE18029120;
 Tue, 25 Aug 2020 04:57:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:541:800:960:973:988:989:1260:1311:1314:1345:1359:1437:1515:1534:1541:1711:1714:1730:1747:1777:1792:2393:2559:2562:3138:3139:3140:3141:3142:3350:3867:3868:3871:4250:5007:6119:6261:10004:10848:11026:11657:11658:11914:12043:12297:12438:12555:12895:13069:13311:13357:13894:14181:14384:14394:14721:21080:21433:21627:21774:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: grape42_3f0c59a27059
X-Filterd-Recvd-Size: 1932
Received: from joe-laptop.perches.com (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Tue, 25 Aug 2020 04:57:20 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Jiri Kosina <trivial@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 21/29] media: atomisp: Avoid comma separated statements
Date: Mon, 24 Aug 2020 21:56:18 -0700
Message-Id: <83f22b4ca8b26d301894638c5b8c571ac0004a5e.1598331149.git.joe@perches.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1598331148.git.joe@perches.com>
References: <cover.1598331148.git.joe@perches.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use semicolons and braces.

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/staging/media/atomisp/pci/atomisp_subdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
index 6ba817f15655..52b9fb18c87f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
@@ -410,8 +410,10 @@ int atomisp_subdev_set_selection(struct v4l2_subdev *sd,
 
 		if (atomisp_subdev_format_conversion(isp_sd,
 						     isp_sd->capture_pad)
-		    && crop[pad]->width && crop[pad]->height)
-			crop[pad]->width -= padding_w, crop[pad]->height -= padding_h;
+		    && crop[pad]->width && crop[pad]->height) {
+			crop[pad]->width -= padding_w;
+			crop[pad]->height -= padding_h;
+		}
 
 		/* if subdev type is SOC camera,we do not need to set DVS */
 		if (isp->inputs[isp_sd->input_curr].type == SOC_CAMERA)
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
