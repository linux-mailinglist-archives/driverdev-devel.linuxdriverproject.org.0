Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3269DBCB
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 08:11:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8748E231AB;
	Mon, 29 Apr 2019 06:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZAkGwr4s561f; Mon, 29 Apr 2019 06:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4C7D8230ED;
	Mon, 29 Apr 2019 06:11:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E71011BF2B3
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 06:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DE700858B5
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 06:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fPvDdkG9Ztrt for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 06:11:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www.osadl.org (www.osadl.org [62.245.132.105])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2A2E18527F
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 06:11:21 +0000 (UTC)
Received: from debian01.hofrr.at (178.115.242.59.static.drei.at
 [178.115.242.59])
 by www.osadl.org (8.13.8/8.13.8/OSADL-2007092901) with ESMTP id x3T6BEma005090;
 Mon, 29 Apr 2019 08:11:14 +0200
From: Nicholas Mc Guire <hofrat@osadl.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
Date: Mon, 29 Apr 2019 08:05:39 +0200
Message-Id: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
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

While the endiannes is being handled correctly sparse was unhappy with
the missing annotation as be16_to_cpu() expects a __be16. The __force
cast to __be16 makes sparse happy but has no impact on the generated 
binary.

Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
---

Problem reported by sparse

V2: As requested by Sven Van Asbroeck <thesven73@gmail.com> make the
    impact of the patch clear in the commit message.

As far as I understand sparse here the __force is actually the only 
solution possible to inform sparse that the endiannes handling is ok

Patch was compile-tested with. x86_64_defconfig + OF=y, FIELDBUS_DEV=m,
HMS_ANYBUSS_BUS=m

Verification that the patch has no impact on the binary being generated
was done by verifying that the diff of the binaries before and after
applying the patch is empty.


Patch is against 5.1-rc6 (localversion-next is next-20190426)

 drivers/staging/fieldbus/anybuss/host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fieldbus/anybuss/host.c b/drivers/staging/fieldbus/anybuss/host.c
index 6227daf..278acac 100644
--- a/drivers/staging/fieldbus/anybuss/host.c
+++ b/drivers/staging/fieldbus/anybuss/host.c
@@ -1348,7 +1348,7 @@ anybuss_host_common_probe(struct device *dev,
 	add_device_randomness(&val, 4);
 	regmap_bulk_read(cd->regmap, REG_FIELDBUS_TYPE, &fieldbus_type,
 			 sizeof(fieldbus_type));
-	fieldbus_type = be16_to_cpu(fieldbus_type);
+	fieldbus_type = be16_to_cpu((__force __be16)fieldbus_type);
 	dev_info(dev, "Fieldbus type: %04X", fieldbus_type);
 	regmap_bulk_read(cd->regmap, REG_MODULE_SW_V, val, 2);
 	dev_info(dev, "Module SW version: %02X%02X",
-- 
2.1.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
