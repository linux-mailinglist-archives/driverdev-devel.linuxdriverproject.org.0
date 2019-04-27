Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B85B2C7
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 06:32:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF60C811EA;
	Sat, 27 Apr 2019 04:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8BBiHUNHYzj4; Sat, 27 Apr 2019 04:32:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FD6181388;
	Sat, 27 Apr 2019 04:32:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC22A1BF33F
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 04:32:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B8C40811E3
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 04:32:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dNN3gP-hU4IS for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 04:32:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www.osadl.org (www.osadl.org [62.245.132.105])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC778811C9
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 04:32:25 +0000 (UTC)
Received: from debian01.hofrr.at (178.115.242.59.static.drei.at
 [178.115.242.59])
 by www.osadl.org (8.13.8/8.13.8/OSADL-2007092901) with ESMTP id x3R4WJYI018783;
 Sat, 27 Apr 2019 06:32:19 +0200
From: Nicholas Mc Guire <hofrat@osadl.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH RFC] staging: fieldbus: anybus-s: use proper type for
 wait_for_completion_timeout
Date: Sat, 27 Apr 2019 06:26:48 +0200
Message-Id: <1556339208-7722-1-git-send-email-hofrat@osadl.org>
X-Mailer: git-send-email 2.1.4
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
Cc: devel@driverdev.osuosl.org, Sven Van Asbroeck <thesven73@gmail.com>,
 linux-kernel@vger.kernel.org, Nicholas Mc Guire <hofrat@osadl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

wait_for_completion_timeout() returns unsigned long (0 on timeout or
remaining jiffies) not int. thus there is no negative case to check for 
here.

Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
---

Problem located with experimental API conformance checking cocci script

Q: It is not really clear if the proposed fix is the right thing here or if
   this should not be using wait_for_completion_interruptible - which would
   return -ERESTARTSYS on interruption. Someone that knows the details of
   this driver would need to check what condition should initiate the
   goto err_reset; which was actually unreachable in the current code.

Patch was compile-tested with. x86_64_defconfig + FIELDBUS_DEV=m,
HMS_ANYBUSS_BUS=m
(some unrelated sparse warnings (cast to restricted __be16))

Patch is against 5.1-rc6 (localversion-next is next-20190426)

 drivers/staging/fieldbus/anybuss/host.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/host.c b/drivers/staging/fieldbus/anybuss/host.c
index e34d424..c52d715 100644
--- a/drivers/staging/fieldbus/anybuss/host.c
+++ b/drivers/staging/fieldbus/anybuss/host.c
@@ -1263,6 +1263,7 @@ anybuss_host_common_probe(struct device *dev,
 			  const struct anybuss_ops *ops)
 {
 	int ret, i;
+	unsigned long time_left;
 	u8 val[4];
 	u16 fieldbus_type;
 	struct anybuss_host *cd;
@@ -1325,11 +1326,9 @@ anybuss_host_common_probe(struct device *dev,
 	 *   interrupt came in: ready to go !
 	 */
 	reset_deassert(cd);
-	ret = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
-	if (ret == 0)
+	time_left = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
+	if (time_left == 0)
 		ret = -ETIMEDOUT;
-	if (ret < 0)
-		goto err_reset;
 	/*
 	 * according to the anybus docs, we're allowed to read these
 	 * without handshaking / reserving the area
-- 
2.1.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
