Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0678B100AF2
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 18:59:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB81C87D7C;
	Mon, 18 Nov 2019 17:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aLhS01KtK8YJ; Mon, 18 Nov 2019 17:59:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CBFA87C88;
	Mon, 18 Nov 2019 17:59:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E1781BF20F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 17:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 69FCB21537
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 17:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jHELjGFDMuvW
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 17:59:03 +0000 (UTC)
X-Greylist: delayed 00:37:00 by SQLgrey-1.7.6
Received: from relay01.mail.daisygroup.com (relay01.mail.daisygroup.com
 [195.147.249.207])
 by silver.osuosl.org (Postfix) with ESMTPS id D84822094B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 17:59:02 +0000 (UTC)
Received: from [194.153.15.5] (port=37798
 helo=bp1-Precision-WorkStation-T5400.lan)
 by relay01.mail.daisygroup.com with esmtp (Exim 4.92.3)
 (envelope-from <mail@berndporr.me.uk>)
 id 1iWkit-0001n5-7U; Mon, 18 Nov 2019 17:21:59 +0000
From: Bernd Porr <mail@berndporr.me.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: comedi: usbduxsigma: usbduxfast_ai_cmdtest rounding
 error
Date: Mon, 18 Nov 2019 17:21:55 +0000
Message-Id: <20191118172155.5314-1-mail@berndporr.me.uk>
X-Mailer: git-send-email 2.17.1
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
Cc: abbotti@mev.co.uk, driverdev-devel@linuxdriverproject.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

'get_cmd_generic_timed' fills the cmd structure with an informed
guess and then calls 'usbduxfast_ai_cmdtest' repeatedly while
'usbduxfast_ai_cmdtest' is modifying the cmd struct until it
no longer changes. However, because of rounding errors this never
converged because 'steps = (cmd->convert_arg * 30) / 1000' and then
back to 'cmd->convert_arg = (steps * 1000) / 30' won't be the same
because of rounding errors. 'Steps' should only be converted back to
the 'convert_arg' if 'steps' has actually been modified. In addion
the case of steps being 0 wasn't checked which is also now done.

Signed-off-by: Bernd Porr <mail@berndporr.me.uk>
---
 drivers/staging/comedi/drivers/usbduxfast.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/usbduxfast.c b/drivers/staging/comedi/drivers/usbduxfast.c
index 04bc488385e6..4af012968cb6 100644
--- a/drivers/staging/comedi/drivers/usbduxfast.c
+++ b/drivers/staging/comedi/drivers/usbduxfast.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
- *  Copyright (C) 2004-2014 Bernd Porr, mail@berndporr.me.uk
+ *  Copyright (C) 2004-2019 Bernd Porr, mail@berndporr.me.uk
  */
 
 /*
@@ -8,7 +8,7 @@
  * Description: University of Stirling USB DAQ & INCITE Technology Limited
  * Devices: [ITL] USB-DUX-FAST (usbduxfast)
  * Author: Bernd Porr <mail@berndporr.me.uk>
- * Updated: 10 Oct 2014
+ * Updated: 16 Nov 2019
  * Status: stable
  */
 
@@ -22,6 +22,7 @@
  *
  *
  * Revision history:
+ * 1.0: Fixed a rounding error in usbduxfast_ai_cmdtest
  * 0.9: Dropping the first data packet which seems to be from the last transfer.
  *      Buffer overflows in the FX2 are handed over to comedi.
  * 0.92: Dropping now 4 packets. The quad buffer has to be emptied.
@@ -350,6 +351,7 @@ static int usbduxfast_ai_cmdtest(struct comedi_device *dev,
 				 struct comedi_cmd *cmd)
 {
 	int err = 0;
+	int err2 = 0;
 	unsigned int steps;
 	unsigned int arg;
 
@@ -399,11 +401,16 @@ static int usbduxfast_ai_cmdtest(struct comedi_device *dev,
 	 */
 	steps = (cmd->convert_arg * 30) / 1000;
 	if (cmd->chanlist_len !=  1)
-		err |= comedi_check_trigger_arg_min(&steps,
-						    MIN_SAMPLING_PERIOD);
-	err |= comedi_check_trigger_arg_max(&steps, MAX_SAMPLING_PERIOD);
-	arg = (steps * 1000) / 30;
-	err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);
+		err2 |= comedi_check_trigger_arg_min(&steps,
+						     MIN_SAMPLING_PERIOD);
+	else
+		err2 |= comedi_check_trigger_arg_min(&steps, 1);
+	err2 |= comedi_check_trigger_arg_max(&steps, MAX_SAMPLING_PERIOD);
+	if (err2) {
+		err |= err2;
+		arg = (steps * 1000) / 30;
+		err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);
+	}
 
 	if (cmd->stop_src == TRIG_COUNT)
 		err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
