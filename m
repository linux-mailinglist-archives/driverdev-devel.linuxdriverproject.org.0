Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 867492251DC
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 14:33:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75C35868FF;
	Sun, 19 Jul 2020 12:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5n-xLTWxl67V; Sun, 19 Jul 2020 12:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEB47863F1;
	Sun, 19 Jul 2020 12:32:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1412B1BF42E
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 12:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1049487986
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 12:32:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FhQ7iOaHf7OF for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 12:32:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7D1718797A
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 12:32:54 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 0C98ABC06E;
 Sun, 19 Jul 2020 12:32:50 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH for v5.9] staging: Replace HTTP links with HTTPS ones
Date: Sun, 19 Jul 2020 14:32:44 +0200
Message-Id: <20200719123244.58718-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
Authentication-Results: smtp.al2klimov.de;
 auth=pass smtp.auth=aklimov@al2klimov.de
 smtp.mailfrom=grandmaster@al2klimov.de
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
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely
 or at least not (just) HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.

 Sorry again to all maintainers who complained about subject lines.
 Now I realized that you want an actually perfect prefixes,
 not just subsystem ones.
 I tried my best...
 And yes, *I could* (at least half-)automate it.
 Impossible is nothing! :)


 drivers/staging/clocking-wizard/dt-binding.txt | 2 +-
 drivers/staging/gs_fpgaboot/README             | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/clocking-wizard/dt-binding.txt b/drivers/staging/clocking-wizard/dt-binding.txt
index 723271e93316..efb67ff9f76c 100644
--- a/drivers/staging/clocking-wizard/dt-binding.txt
+++ b/drivers/staging/clocking-wizard/dt-binding.txt
@@ -5,7 +5,7 @@ found in the product guide[2].
 
 [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
 [2] Clocking Wizard Product Guide
-http://www.xilinx.com/support/documentation/ip_documentation/clk_wiz/v5_1/pg065-clk-wiz.pdf
+https://www.xilinx.com/support/documentation/ip_documentation/clk_wiz/v5_1/pg065-clk-wiz.pdf
 
 Required properties:
  - compatible: Must be 'xlnx,clocking-wizard'
diff --git a/drivers/staging/gs_fpgaboot/README b/drivers/staging/gs_fpgaboot/README
index 8d793c1769b0..b85a76849fc4 100644
--- a/drivers/staging/gs_fpgaboot/README
+++ b/drivers/staging/gs_fpgaboot/README
@@ -65,6 +65,6 @@ TABLE OF CONTENTS.
 6. REFERENCE
 
 	1. Xilinx APP NOTE XAPP583:
-	  http://www.xilinx.com/support/documentation/application_notes/xapp583-fpga-configuration.pdf
+	  https://www.xilinx.com/support/documentation/application_notes/xapp583-fpga-configuration.pdf
 	2. bitstream file info:
 	  http://home.earthlink.net/~davesullins/software/bitinfo.html
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
