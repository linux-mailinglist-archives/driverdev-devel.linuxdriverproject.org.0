Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59881309E31
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 19:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F8A8858D2;
	Sun, 31 Jan 2021 18:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DyM69yEbkY85; Sun, 31 Jan 2021 18:25:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DD6F857CB;
	Sun, 31 Jan 2021 18:25:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A91BF1BF3F3
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 18:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A14C486FB5
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 18:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kFDpOFZ1qDQ9 for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 18:25:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B72BD86F87
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 18:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 3B50150E25;
 Sun, 31 Jan 2021 19:25:47 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id srY-EQ3Lj7uH; Sun, 31 Jan 2021 19:25:44 +0100 (CET)
From: Ayush <ayush@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1612117544; bh=+mqUYuKdr9SXXbbBsQDKBVISNPMWxv2YWv/CoNNKFfc=;
 h=From:To:Cc:Subject:Date;
 b=ieVGcF8o1b8WLqJlNHevyVV0EUURDoYsLbZlVvLVHdschm72elkotvGgG5mrRSaBb
 t1g4uv4pZh5XSTpPGLADO6YmUTv8TSo8Ok6OFGDQstuxkidFzoEqT4HrP7Zj/v2UuN
 g43APVdQIYjQCQgsffH2W+UUNo5/SUHaN754FcxoSKwLEGEt45aFeiKgcsJpqp62fK
 qmEtrJeYjd+vL3u3lT/y0uvdZlYisfH2DGJPRs1FPr1R0bZwU1afTMiIsogInOpKht
 7s6CiCphzPuwHFSBMq9m4S+bkIKTJJG/4voej4k64zuKBtpLQ2U/0V2deOElj21nYD
 0Miw1sPSwPb+g==
To: mchehab@kernel.org
Subject: [PATCH] staging: media: atomisp: fix coding style issues in timer.c
Date: Sun, 31 Jan 2021 23:55:29 +0530
Message-Id: <20210131182529.112629-1-ayush@disroot.org>
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, ayush@disroot.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

- Fix unneeded brace in if condition(also, brace was on next line).
- Fix leading space warning before struct ia_css_clock_tick *curr_ts.

compile tested only (on next-20210129)

Signed-off-by: Ayush <ayush@disroot.org>
---
 .../staging/media/atomisp/pci/runtime/timer/src/timer.c    | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c b/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
index 679ef8242574..7ca435180c5f 100644
--- a/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
+++ b/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
@@ -20,13 +20,12 @@
 #include "assert_support.h"
 
 int
-ia_css_timer_get_current_tick(
-    struct ia_css_clock_tick *curr_ts) {
+ia_css_timer_get_current_tick(struct ia_css_clock_tick *curr_ts)
+{
 	assert(curr_ts);
 	if (!curr_ts)
-	{
 		return -EINVAL;
-	}
+
 	curr_ts->ticks = (clock_value_t)gp_timer_read(GP_TIMER_SEL);
 	return 0;
 }
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
