Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20AD167D76
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 13:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0ED087E9D;
	Fri, 21 Feb 2020 12:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CWcgCUhyFQcF; Fri, 21 Feb 2020 12:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8F6087B5B;
	Fri, 21 Feb 2020 12:26:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F9FA1BF9B9
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 12:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C5EA862FC
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 12:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVWq4ZtXdKup for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 12:26:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 118C586274
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 12:26:46 +0000 (UTC)
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id 5QMi2200C5USYZQ06QMiA0; Fri, 21 Feb 2020 13:21:42 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j57JO-0002E7-6D; Fri, 21 Feb 2020 13:21:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j57JO-0008LO-4p; Fri, 21 Feb 2020 13:21:42 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Marcus Wolf <linux@Wolf-Entwicklungen.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/3] staging: pi433: overlay: Fix reg-related warnings
Date: Fri, 21 Feb 2020 13:21:32 +0100
Message-Id: <20200221122133.32024-3-geert+renesas@glider.be>
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

When running "scripts/dtc/dtc -@ -I dts -O dtb -o pi433-overlay.dtbo.1
drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts":

    drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts:13.12-15.6: Warning (unit_address_vs_reg): /fragment@0/__overlay__/spidev@0: node has a unit name, but no reg property
    drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts:17.12-19.6: Warning (unit_address_vs_reg): /fragment@0/__overlay__/spidev@1: node has a unit name, but no reg property

Add the missing "reg" properties to fix this.

    drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts:14.5-15: Warning (reg_format): /fragment@0/__overlay__/spidev@0:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
    drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts:19.5-15: Warning (reg_format): /fragment@0/__overlay__/spidev@1:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)

Add the missing "#{address,size}-cells" to fix this.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../staging/pi433/Documentation/devicetree/pi433-overlay.dts  | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
index dfc9f974ac24ecc1..b584180d78d019aa 100644
--- a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
+++ b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
@@ -8,13 +8,17 @@
 	fragment@0 {
 		target = <&spi0>;
 		__overlay__ {
+			#address-cells = <1>;
+			#size-cells = <0>;
 			status = "okay";
 
 			spidev@0{
+				reg = <0>;
 				status = "disabled";
 			};
 
 			spidev@1{
+				reg = <1>;
 				status = "disabled";
 			};
 		};
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
