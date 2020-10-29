Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF0929EE01
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 15:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 131D486BED;
	Thu, 29 Oct 2020 14:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XIuT31IznEIL; Thu, 29 Oct 2020 14:18:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D90386BEF;
	Thu, 29 Oct 2020 14:18:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C90801BF308
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 14:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C58AD875A5
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 14:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVoOC8XGu7Ed for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 14:18:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp91.ord1d.emailsrvr.com (smtp91.ord1d.emailsrvr.com
 [184.106.54.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AEB35870B0
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 14:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1603981129;
 bh=mYsxx+QSILFlqHhrRbOlc2ZeNLNa6JOiFrqgEJl3E10=;
 h=From:To:Subject:Date:From;
 b=TnSe+gwX7iMej6a0gZffW9dtVPvh9JWEwkqYOn1R5eoBcthtzxHQ3Jv+ifFAjrV5F
 wVcYIFsvp8SDLi2RfPFps08ePIEyoRD+3CuKeAMacNoE4ilp5kJNbKz6qbeXQ0LH0l
 Pyk5vB7x0M1HVR+fn4HPfs6SIUDDxY4p8CONKfT8=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp12.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 2C4D0E011C; 
 Thu, 29 Oct 2020 10:18:48 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: comedi: cb_pcidas: reinstate delay removed from
 trimpot setting
Date: Thu, 29 Oct 2020 14:18:33 +0000
Message-Id: <20201029141833.126856-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Classification-ID: 20d96882-c44b-4751-ab0b-b588f69c1147-1-1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit eddd2a4c675c ("staging: comedi: cb_pcidas: refactor
write_calibration_bitstream()") inadvertently removed one of the
`udelay(1)` calls when writing to the calibration register in
`cb_pcidas_calib_write()`.  Reinstate the delay.  It may seem strange
that the delay is placed before the register write, but this function is
called in a loop so the extra delay can make a difference.

This _might_ solve reported issues reading analog inputs on a
PCIe-DAS1602/16 card where the analog input values "were scaled in a
strange way that didn't make sense".  On the same hardware running a
system with a 3.13 kernel, and then a system with a 4.4 kernel, but with
the same application software, the system with the 3.13 kernel was fine,
but the one with the 4.4 kernel exhibited the problem.  Of the 90
changes to the driver between those kernel versions, this change looked
like the most likely culprit.

Fixes: eddd2a4c675c ("staging: comedi: cb_pcidas: refactor write_calibration_bitstream()")
Cc: <stable@vger.kernel.org>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/cb_pcidas.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas.c b/drivers/staging/comedi/drivers/cb_pcidas.c
index 48ec2ee953dc..4f2ac39aa619 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas.c
@@ -529,6 +529,7 @@ static void cb_pcidas_calib_write(struct comedi_device *dev,
 	if (trimpot) {
 		/* select trimpot */
 		calib_bits |= PCIDAS_CALIB_TRIM_SEL;
+		udelay(1);
 		outw(calib_bits, devpriv->pcibar1 + PCIDAS_CALIB_REG);
 	}
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
