Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D596181577
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 11:05:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3AEE8880E2;
	Wed, 11 Mar 2020 10:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFdaSzwp79t5; Wed, 11 Mar 2020 10:05:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79C3B880A1;
	Wed, 11 Mar 2020 10:05:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A9051BF59D
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:05:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 73AD3204E4
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hd+EerXgWswY for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 10:05:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 507CB204D3
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 10:05:37 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id EBA8EAB7F;
 Wed, 11 Mar 2020 10:05:35 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH RESEND] staging: greybus: loopback_test: Use scnprintf() for
 avoiding potential buffer overflow
Date: Wed, 11 Mar 2020 11:05:35 +0100
Message-Id: <20200311100535.29635-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---

Just corrected the subject prefix per request.

 drivers/staging/greybus/tools/loopback_test.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f26fa..0b95a1c2b2e9 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -426,7 +426,7 @@ int format_output(struct loopback_test *t,
 		       tm->tm_hour, tm->tm_min, tm->tm_sec);
 
 	if (t->porcelain) {
-		len += snprintf(&buf[len], buf_len - len,
+		len += scnprintf(&buf[len], buf_len - len,
 			"\n test:\t\t\t%s\n path:\t\t\t%s\n size:\t\t\t%u\n iterations:\t\t%u\n errors:\t\t%u\n async:\t\t\t%s\n",
 			t->test_name,
 			dev_name,
@@ -435,33 +435,33 @@ int format_output(struct loopback_test *t,
 			r->error,
 			t->use_async ? "Enabled" : "Disabled");
 
-		len += snprintf(&buf[len], buf_len - len,
+		len += scnprintf(&buf[len], buf_len - len,
 			" requests per-sec:\tmin=%u, max=%u, average=%f, jitter=%u\n",
 			r->request_min,
 			r->request_max,
 			r->request_avg,
 			r->request_jitter);
 
-		len += snprintf(&buf[len], buf_len - len,
+		len += scnprintf(&buf[len], buf_len - len,
 			" ap-throughput B/s:\tmin=%u max=%u average=%f jitter=%u\n",
 			r->throughput_min,
 			r->throughput_max,
 			r->throughput_avg,
 			r->throughput_jitter);
-		len += snprintf(&buf[len], buf_len - len,
+		len += scnprintf(&buf[len], buf_len - len,
 			" ap-latency usec:\tmin=%u max=%u average=%f jitter=%u\n",
 			r->latency_min,
 			r->latency_max,
 			r->latency_avg,
 			r->latency_jitter);
-		len += snprintf(&buf[len], buf_len - len,
+		len += scnprintf(&buf[len], buf_len - len,
 			" apbridge-latency usec:\tmin=%u max=%u average=%f jitter=%u\n",
 			r->apbridge_unipro_latency_min,
 			r->apbridge_unipro_latency_max,
 			r->apbridge_unipro_latency_avg,
 			r->apbridge_unipro_latency_jitter);
 
-		len += snprintf(&buf[len], buf_len - len,
+		len += scnprintf(&buf[len], buf_len - len,
 			" gbphy-latency usec:\tmin=%u max=%u average=%f jitter=%u\n",
 			r->gbphy_firmware_latency_min,
 			r->gbphy_firmware_latency_max,
@@ -469,35 +469,35 @@ int format_output(struct loopback_test *t,
 			r->gbphy_firmware_latency_jitter);
 
 	} else {
-		len += snprintf(&buf[len], buf_len - len, ",%s,%s,%u,%u,%u",
+		len += scnprintf(&buf[len], buf_len - len, ",%s,%s,%u,%u,%u",
 			t->test_name, dev_name, t->size, t->iteration_max,
 			r->error);
 
-		len += snprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
+		len += scnprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
 			r->request_min,
 			r->request_max,
 			r->request_avg,
 			r->request_jitter);
 
-		len += snprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
+		len += scnprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
 			r->latency_min,
 			r->latency_max,
 			r->latency_avg,
 			r->latency_jitter);
 
-		len += snprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
+		len += scnprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
 			r->throughput_min,
 			r->throughput_max,
 			r->throughput_avg,
 			r->throughput_jitter);
 
-		len += snprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
+		len += scnprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
 			r->apbridge_unipro_latency_min,
 			r->apbridge_unipro_latency_max,
 			r->apbridge_unipro_latency_avg,
 			r->apbridge_unipro_latency_jitter);
 
-		len += snprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
+		len += scnprintf(&buf[len], buf_len - len, ",%u,%u,%f,%u",
 			r->gbphy_firmware_latency_min,
 			r->gbphy_firmware_latency_max,
 			r->gbphy_firmware_latency_avg,
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
