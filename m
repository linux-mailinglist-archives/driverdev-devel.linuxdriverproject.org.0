Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FDA318E84
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 16:30:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E3938747F;
	Thu, 11 Feb 2021 15:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wXnvHdwpzqa8; Thu, 11 Feb 2021 15:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13354873ED;
	Thu, 11 Feb 2021 15:30:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C7DA1BF2A2
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 15:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 875B5875B5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 15:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W56K2WhbbFPh for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 15:30:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10011301.me.com (pv50p00im-ztdg10011301.me.com
 [17.58.6.40])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 214B7875AD
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 15:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613057440;
 bh=JR+lVwt36NeZVokhBbvGDtwHxUoQfVZjR1m7wDVCz1E=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=vmEnUIFWD1znxM/bGg6IxeCaf5PFw5fofPyPpX3XgkOI9FYgAA/V10WT7OkPjkfUQ
 uMr04VXoIn16yHjb7cVezg18XseT9lnMunUprarjrQjb1AkPlMbD8uo0qoJ8OE2hDJ
 UtkkDwarjWKy0NqbHc/E6ZRpxkR4WrxvP9os7ZltJccQHSVQ2391O9TOu0dZDsliix
 sWaY1Lkyn0wnlPhVSBWrHw9KswTJfRh1oJDWbJ9EsYekzAkqevb1Mo3esqLSt+iYYQ
 dIkfa/tnPYlpTKhelFf0j49Tdq72z5QDFrHDR+BYPtVCZ8ENjUT50ftiwgPh48csCR
 7d5z2byWGmWEQ==
Received: from everest.nathzi1505 (unknown [45.250.50.68])
 by pv50p00im-ztdg10011301.me.com (Postfix) with ESMTPSA id 9F631760552;
 Thu, 11 Feb 2021 15:30:37 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: vireshk@kernel.org, gregkh@linuxfoundation.org, johan@kernel.org,
 elder@kernel.org
Subject: [PATCH] staging: greybus: Fixed misspelling and alignment issue in
 hid.c
Date: Thu, 11 Feb 2021 21:00:01 +0530
Message-Id: <20210211153001.10358-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Pritthijit Nath <pritthijit.nath@icloud.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch CHECK style issue for "Alignment should match open parenthesis".
In addition the misspelling of "transferred" also has been fixed.

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
---
 drivers/staging/greybus/hid.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
index ed706f39e87a..adb91286803a 100644
--- a/drivers/staging/greybus/hid.c
+++ b/drivers/staging/greybus/hid.c
@@ -221,8 +221,8 @@ static void gb_hid_init_reports(struct gb_hid *ghid)
 }
 
 static int __gb_hid_get_raw_report(struct hid_device *hid,
-		unsigned char report_number, __u8 *buf, size_t count,
-		unsigned char report_type)
+				   unsigned char report_number, __u8 *buf, size_t count,
+				   unsigned char report_type)
 {
 	struct gb_hid *ghid = hid->driver_data;
 	int ret;
@@ -254,7 +254,7 @@ static int __gb_hid_output_raw_report(struct hid_device *hid, __u8 *buf,
 
 	ret = gb_hid_set_report(ghid, report_type, report_id, buf, len);
 	if (report_id && ret >= 0)
-		ret++; /* add report_id to the number of transfered bytes */
+		ret++; /* add report_id to the number of transferred bytes */
 
 	return 0;
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
