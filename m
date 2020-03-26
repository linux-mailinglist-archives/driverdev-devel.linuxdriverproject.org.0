Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 176A7194C42
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 00:24:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C4B888A1F;
	Thu, 26 Mar 2020 23:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cpkTbjfXiWhR; Thu, 26 Mar 2020 23:24:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A64C888A11;
	Thu, 26 Mar 2020 23:24:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99F631BF284
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 23:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 958EF875DD
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 23:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i2quwFGMfqUi for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 23:24:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C0FF87555
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 23:24:13 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AF132073E;
 Thu, 26 Mar 2020 23:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585265053;
 bh=8u+PO8O/rMMjysdIVDeLa8atUBZcBPK1uZYnnII1iNQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TIyYI6zFs0yOKwwSRKoaLYqbMmQ4A8Y+J6khFaXzBL9i2nfkKUWypssHn9Zk+EwP/
 ZUQbK3N0nHDtVRkRqTXeXEuNb5IUXtgP0mhMaioUbqBA8W34BDfEXnXeaI41/KEvx9
 bupV7DJPSOcbmTvnUSeSGfnXvQHejhgx8esWo6EE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 13/28] staging: greybus: loopback_test: fix
 potential path truncations
Date: Thu, 26 Mar 2020 19:23:42 -0400
Message-Id: <20200326232357.7516-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326232357.7516-1-sashal@kernel.org>
References: <20200326232357.7516-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Johan Hovold <johan@kernel.org>, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Johan Hovold <johan@kernel.org>

[ Upstream commit ae62cf5eb2792d9a818c2d93728ed92119357017 ]

Newer GCC warns about possible truncations of two generated path names as
we're concatenating the configurable sysfs and debugfs path prefixes
with a filename and placing the results in buffers of the same size as
the maximum length of the prefixes.

	snprintf(d->name, MAX_STR_LEN, "gb_loopback%u", dev_id);

	snprintf(d->sysfs_entry, MAX_SYSFS_PATH, "%s%s/",
		 t->sysfs_prefix, d->name);

	snprintf(d->debugfs_entry, MAX_SYSFS_PATH, "%sraw_latency_%s",
		 t->debugfs_prefix, d->name);

Fix this by separating the maximum path length from the maximum prefix
length and reducing the latter enough to fit the generated strings.

Note that we also need to reduce the device-name buffer size as GCC
isn't smart enough to figure out that we ever only used MAX_STR_LEN
bytes of it.

Fixes: 6b0658f68786 ("greybus: tools: Add tools directory to greybus repo and add loopback")
Signed-off-by: Johan Hovold <johan@kernel.org>
Link: https://lore.kernel.org/r/20200312110151.22028-4-johan@kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/greybus/tools/loopback_test.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 5ce7d6fa086cc..3ee9109c38f60 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -19,6 +19,7 @@
 #include <signal.h>
 
 #define MAX_NUM_DEVICES 10
+#define MAX_SYSFS_PREFIX 0x80
 #define MAX_SYSFS_PATH	0x200
 #define CSV_MAX_LINE	0x1000
 #define SYSFS_MAX_INT	0x20
@@ -67,7 +68,7 @@ struct loopback_results {
 };
 
 struct loopback_device {
-	char name[MAX_SYSFS_PATH];
+	char name[MAX_STR_LEN];
 	char sysfs_entry[MAX_SYSFS_PATH];
 	char debugfs_entry[MAX_SYSFS_PATH];
 	struct loopback_results results;
@@ -93,8 +94,8 @@ struct loopback_test {
 	int stop_all;
 	int poll_count;
 	char test_name[MAX_STR_LEN];
-	char sysfs_prefix[MAX_SYSFS_PATH];
-	char debugfs_prefix[MAX_SYSFS_PATH];
+	char sysfs_prefix[MAX_SYSFS_PREFIX];
+	char debugfs_prefix[MAX_SYSFS_PREFIX];
 	struct timespec poll_timeout;
 	struct loopback_device devices[MAX_NUM_DEVICES];
 	struct loopback_results aggregate_results;
@@ -907,10 +908,10 @@ int main(int argc, char *argv[])
 			t.iteration_max = atoi(optarg);
 			break;
 		case 'S':
-			snprintf(t.sysfs_prefix, MAX_SYSFS_PATH, "%s", optarg);
+			snprintf(t.sysfs_prefix, MAX_SYSFS_PREFIX, "%s", optarg);
 			break;
 		case 'D':
-			snprintf(t.debugfs_prefix, MAX_SYSFS_PATH, "%s", optarg);
+			snprintf(t.debugfs_prefix, MAX_SYSFS_PREFIX, "%s", optarg);
 			break;
 		case 'm':
 			t.mask = atol(optarg);
@@ -961,10 +962,10 @@ int main(int argc, char *argv[])
 	}
 
 	if (!strcmp(t.sysfs_prefix, ""))
-		snprintf(t.sysfs_prefix, MAX_SYSFS_PATH, "%s", sysfs_prefix);
+		snprintf(t.sysfs_prefix, MAX_SYSFS_PREFIX, "%s", sysfs_prefix);
 
 	if (!strcmp(t.debugfs_prefix, ""))
-		snprintf(t.debugfs_prefix, MAX_SYSFS_PATH, "%s", debugfs_prefix);
+		snprintf(t.debugfs_prefix, MAX_SYSFS_PREFIX, "%s", debugfs_prefix);
 
 	ret = find_loopback_devices(&t);
 	if (ret)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
