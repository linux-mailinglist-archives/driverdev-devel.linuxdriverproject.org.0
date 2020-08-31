Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BB6257A6B
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 15:31:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11E3086F1B;
	Mon, 31 Aug 2020 13:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sN6usulq7Egq; Mon, 31 Aug 2020 13:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87A1A861E3;
	Mon, 31 Aug 2020 13:31:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57CC71BF302
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 13:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4CFF7865D4
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 13:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IIs2Ffng5zaN for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 13:31:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 29B5D866A7
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 13:31:15 +0000 (UTC)
X-Originating-IP: 84.44.14.226
Received: from nexussix.ar.arcelik (unknown [84.44.14.226])
 (Authenticated sender: cengiz@kernel.wtf)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 37A4D20005;
 Mon, 31 Aug 2020 13:31:09 +0000 (UTC)
From: Cengiz Can <cengiz@kernel.wtf>
To: "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH] staging: atomisp: Fix fallthrough keyword warning
Date: Mon, 31 Aug 2020 16:30:12 +0300
Message-Id: <20200831133011.91258-1-cengiz@kernel.wtf>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, Cengiz Can <cengiz@kernel.wtf>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

commit df561f6688fe ("treewide: Use fallthrough pseudo-keyword") from
Gustavo A. R. Silva replaced and standardized /* fallthrough */ comments
with 'fallthrough' pseudo-keyword.

However, in one of the switch-case statements, Coverity Static Analyzer
throws a warning that 'fallthrough' is unreachable due to the adjacent
'return false' statement.

Since 'fallthrough' is actually an empty "do {} while(0)" this might be
due to compiler optimizations. But that needs further investigation.

In order to fix the unreachable code warning, make adjacent 'return
false' a part of the previous if statement's else clause.

Reported-by: Coverity Static Analyzer CID 1466511
Signed-off-by: Cengiz Can <cengiz@kernel.wtf>
---
 drivers/staging/media/atomisp/pci/atomisp_compat_css20.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 1b2b2c68025b..aaa2d0e0851b 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -709,8 +709,8 @@ static bool is_pipe_valid_to_current_run_mode(struct atomisp_sub_device *asd,
 		if (pipe_id == IA_CSS_PIPE_ID_CAPTURE ||
 		    pipe_id == IA_CSS_PIPE_ID_PREVIEW)
 			return true;
-
-		return false;
+		else
+			return false;
 		fallthrough;
 	case ATOMISP_RUN_MODE_VIDEO:
 		if (!asd->continuous_mode->val) {
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
