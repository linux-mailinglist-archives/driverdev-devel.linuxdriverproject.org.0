Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50351257AE0
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 15:52:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7079D85DB1;
	Mon, 31 Aug 2020 13:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4q9KhNx_tcJs; Mon, 31 Aug 2020 13:52:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADE1F85D8F;
	Mon, 31 Aug 2020 13:52:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50BD31BF302
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 13:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F72B20404
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 13:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kB+mIWCOFRMR for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 13:52:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by silver.osuosl.org (Postfix) with ESMTPS id EA8F7203C9
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 13:52:12 +0000 (UTC)
Received: from nexussix.ar.arcelik (unknown [84.44.14.226])
 (Authenticated sender: cengiz@kernel.wtf)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 3594D240010;
 Mon, 31 Aug 2020 13:52:06 +0000 (UTC)
From: Cengiz Can <cengiz@kernel.wtf>
To: dan.carpenter@oracle.com
Subject: [PATCH v2] staging: atomisp: Remove unnecessary 'fallthrough'
Date: Mon, 31 Aug 2020 16:51:04 +0300
Message-Id: <20200831135103.93399-1-cengiz@kernel.wtf>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200831134021.GV8299@kadam>
References: <20200831134021.GV8299@kadam>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org, gustavoars@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, cengiz@kernel.wtf,
 andriy.shevchenko@linux.intel.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

commit df561f6688fe ("treewide: Use fallthrough pseudo-keyword") from
Gustavo A. R. Silva replaced and standardized /* fallthrough */ comments
with 'fallthrough' pseudo-keyword.

However, in one of the switch-case statements, Coverity Static Analyzer
throws a warning that 'fallthrough' is unreachable due to the adjacent
'return false' statement. (Coverity ID CID 1466511)

In order to fix the unreachable code warning, remove unnecessary
fallthrough keyword.

Signed-off-by: Cengiz Can <cengiz@kernel.wtf>
---
 drivers/staging/media/atomisp/pci/atomisp_compat_css20.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 1b2b2c68025b..feb26c221e96 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -711,7 +711,6 @@ static bool is_pipe_valid_to_current_run_mode(struct atomisp_sub_device *asd,
 			return true;
 
 		return false;
-		fallthrough;
 	case ATOMISP_RUN_MODE_VIDEO:
 		if (!asd->continuous_mode->val) {
 			if (pipe_id == IA_CSS_PIPE_ID_VIDEO ||
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
