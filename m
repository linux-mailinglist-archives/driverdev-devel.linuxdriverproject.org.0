Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C657A167D75
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 13:26:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 345DA87F38;
	Fri, 21 Feb 2020 12:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qddrjQG1jmPA; Fri, 21 Feb 2020 12:26:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 538D787B5B;
	Fri, 21 Feb 2020 12:26:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A51F1BF2B4
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 12:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 76F5687E34
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 12:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5MtbSrVEBg86 for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 12:26:47 +0000 (UTC)
X-Greylist: delayed 00:05:01 by SQLgrey-1.7.6
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AAF5287B5B
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 12:26:46 +0000 (UTC)
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id 5QMi220035USYZQ01QMiBN; Fri, 21 Feb 2020 13:21:42 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j57JO-0002E3-5F; Fri, 21 Feb 2020 13:21:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j57JO-0008LM-3j; Fri, 21 Feb 2020 13:21:42 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Marcus Wolf <linux@Wolf-Entwicklungen.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/3] staging: pi433: overlay: Fix Broadcom vendor prefix
Date: Fri, 21 Feb 2020 13:21:31 +0100
Message-Id: <20200221122133.32024-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200221122133.32024-1-geert+renesas@glider.be>
References: <20200221122133.32024-1-geert+renesas@glider.be>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

checkpatch.pl says:

    WARNING: DT compatible string "bcm,bcm2708" appears un-documented -- check ./Documentation/devicetree/bindings/

The vendor prefix of Broadcom Corporation is "brcm", not "bcm".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Why do you need these 3 compatible values at the root of the overlay,
not referencing the actual root of the machine's DT?
Does the Raspbian overlay manager use this to check if the overlay is
applicable to the machine it is running on?
---
 .../staging/pi433/Documentation/devicetree/pi433-overlay.dts    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
index 61fad96818c28c5d..dfc9f974ac24ecc1 100644
--- a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
+++ b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
@@ -3,7 +3,7 @@
 /plugin/;
 
 / {
-	compatible = "bcm,bcm2835", "bcm,bcm2708", "bcm,bcm2709";
+	compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
 
 	fragment@0 {
 		target = <&spi0>;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
