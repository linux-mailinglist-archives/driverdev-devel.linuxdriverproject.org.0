Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF75DBCC
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 08:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41D67854A7;
	Mon, 29 Apr 2019 06:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oVNFVYK2JQ_S; Mon, 29 Apr 2019 06:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25B29855A1;
	Mon, 29 Apr 2019 06:11:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 132501BF2B3
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 06:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 10B8C8545F
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 06:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Q7VBVoYcu9e for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 06:11:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www.osadl.org (www.osadl.org [62.245.132.105])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77CA085187
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 06:11:34 +0000 (UTC)
Received: from debian01.hofrr.at (178.115.242.59.static.drei.at
 [178.115.242.59])
 by www.osadl.org (8.13.8/8.13.8/OSADL-2007092901) with ESMTP id x3T6BEmb005090;
 Mon, 29 Apr 2019 08:11:27 +0200
From: Nicholas Mc Guire <hofrat@osadl.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH V3] staging: fieldbus: anybus-s: consolidate
 wait_for_completion_timeout return handling
Date: Mon, 29 Apr 2019 08:05:40 +0200
Message-Id: <1556517940-13725-2-git-send-email-hofrat@osadl.org>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
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
remaining jiffies) not int - so this type error allows for a
theoretically int overflow - though not in this case where TIMEOUT is
only HZ*2). To fix this type inconsistency the completion is wrapped
into the if() rather than introducing an additional unsigned long
variable. 

Along with fixing this type inconsistency the fall-through if is
consolidated to a single if-block.

Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
---

Problem located with experimental API conformance checking cocci script

V3: As requested by Sven Van Asbroeck <thesven73@gmail.com> cleanup
    the commit message to make it more clear what the impact of the
    proposed change is....lets see if this is any better.

V2: The original patch's logic was wrong as it was skipping the 
    fall-through if so using the fix proposed by Sven Van Asbroeck 
    <thesven73@gmail.com> - This solution also eliminates the need
    to introduce an additional variable - Thanks !

Patch was compile-tested with. x86_64_defconfig + OF=y, FIELDBUS_DEV=m,
HMS_ANYBUSS_BUS=m
(with an unrelated sparse warnings (cast to restricted __be16))

Patch is against 5.1-rc6 (localversion-next is next-20190426)

 drivers/staging/fieldbus/anybuss/host.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/host.c b/drivers/staging/fieldbus/anybuss/host.c
index e34d424..6227daf 100644
--- a/drivers/staging/fieldbus/anybuss/host.c
+++ b/drivers/staging/fieldbus/anybuss/host.c
@@ -1325,11 +1325,11 @@ anybuss_host_common_probe(struct device *dev,
 	 *   interrupt came in: ready to go !
 	 */
 	reset_deassert(cd);
-	ret = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
-	if (ret == 0)
+	if (!wait_for_completion_timeout(&cd->card_boot, TIMEOUT)) {
 		ret = -ETIMEDOUT;
-	if (ret < 0)
 		goto err_reset;
+	}
+
 	/*
 	 * according to the anybus docs, we're allowed to read these
 	 * without handshaking / reserving the area
-- 
2.1.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
