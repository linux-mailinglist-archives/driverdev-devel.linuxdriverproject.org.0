Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFDE194C82
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 00:25:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CDD489354;
	Thu, 26 Mar 2020 23:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zVqB9yFPFmJO; Thu, 26 Mar 2020 23:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8283189349;
	Thu, 26 Mar 2020 23:25:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3BF71BF284
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 23:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B04D48934A
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 23:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbX+svGoC5vh for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 23:25:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 27F0189338
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 23:25:21 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 431AB20409;
 Thu, 26 Mar 2020 23:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585265121;
 bh=FSd3fJIXeOlcrAo6oTBMOb+MgrVZs0hV0/32Lr+h9Ao=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SWWKJVxVY9GO+zBLMlU9WW/lL74comLnvtx1TCYD77ivSRPJW3gjCSMc0q181oBdm
 HVyco7zqF1A/5BolRXVXC/YrfrzM69cXGgD9AZjGbUDrtOQ9WERJrDdtQbVwT9MGI+
 VgW8VWtVy4Bo9gA2srhhyUJBwtlUB7INdoYRqp60=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 06/10] staging: greybus: loopback_test: fix
 potential path truncations
Date: Thu, 26 Mar 2020 19:25:09 -0400
Message-Id: <20200326232513.8212-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326232513.8212-1-sashal@kernel.org>
References: <20200326232513.8212-1-sashal@kernel.org>
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
index ddea50523d562..b6aa70b94f335 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -20,6 +20,7 @@
 #include <signal.h>
 
 #define MAX_NUM_DEVICES 10
+#define MAX_SYSFS_PREFIX 0x80
 #define MAX_SYSFS_PATH	0x200
 #define CSV_MAX_LINE	0x1000
 #define SYSFS_MAX_INT	0x20
@@ -68,7 +69,7 @@ struct loopback_results {
 };
 
 struct loopback_device {
-	char name[MAX_SYSFS_PATH];
+	char name[MAX_STR_LEN];
 	char sysfs_entry[MAX_SYSFS_PATH];
 	char debugfs_entry[MAX_SYSFS_PATH];
 	struct loopback_results results;
@@ -94,8 +95,8 @@ struct loopback_test {
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
@@ -914,10 +915,10 @@ int main(int argc, char *argv[])
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
@@ -968,10 +969,10 @@ int main(int argc, char *argv[])
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
