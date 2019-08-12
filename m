Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E88FB89D9C
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 14:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 401DA85091;
	Mon, 12 Aug 2019 12:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zrIxyDMdJwp1; Mon, 12 Aug 2019 12:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE5B484FC9;
	Mon, 12 Aug 2019 12:08:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9BA1BF36C
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 12:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5637385025
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 12:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Suz3UV1rEEU7 for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 12:08:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp121.ord1d.emailsrvr.com (smtp121.ord1d.emailsrvr.com
 [184.106.54.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B7B6084FC9
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 12:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1565611707;
 bh=jIfUnxuSXr9fBK2YVA2xC6VeezdQkBptGT6tn3dkhLY=;
 h=From:To:Subject:Date:From;
 b=bDkeJVv5UsvwGKeabAEDsTG5bNmnYAAh89hCbGuDHUIWB1z/+Tf9ofDb7HVcMFBYc
 baSR15vm+n5sW4ofi6AX2Tt3ZrlQ/U0zLgoju/Rd/a0uio9FZnWdyCFcAA2NHEUrIn
 xlC2IJXOcuSxng2CD+MpjP/RRes2gk95PnE1sGHI=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp8.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 672F1C0166; 
 Mon, 12 Aug 2019 08:08:26 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 12 Aug 2019 08:08:27 -0400
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: comedi: dt3000: Fix rounding up of timer divisor
Date: Mon, 12 Aug 2019 13:08:14 +0100
Message-Id: <20190812120814.21188-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
 Ian Abbott <abbotti@mev.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

`dt3k_ns_to_timer()` determines the prescaler and divisor to use to
produce a desired timing period.  It is influenced by a rounding mode
and can round the divisor up, down, or to the nearest value.  However,
the code for rounding up currently does the same as rounding down!  Fix
ir by using the `DIV_ROUND_UP()` macro to calculate the divisor when
rounding up.

Also, change the types of the `divider`, `base` and `prescale` variables
from `int` to `unsigned int` to avoid mixing signed and unsigned types
in the calculations.

Also fix a typo in a nearby comment: "improvment" => "improvement".

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/dt3000.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt3000.c b/drivers/staging/comedi/drivers/dt3000.c
index 2edf3ee91300..8621e3833ad5 100644
--- a/drivers/staging/comedi/drivers/dt3000.c
+++ b/drivers/staging/comedi/drivers/dt3000.c
@@ -342,9 +342,9 @@ static irqreturn_t dt3k_interrupt(int irq, void *d)
 static int dt3k_ns_to_timer(unsigned int timer_base, unsigned int *nanosec,
 			    unsigned int flags)
 {
-	int divider, base, prescale;
+	unsigned int divider, base, prescale;
 
-	/* This function needs improvment */
+	/* This function needs improvement */
 	/* Don't know if divider==0 works. */
 
 	for (prescale = 0; prescale < 16; prescale++) {
@@ -358,7 +358,7 @@ static int dt3k_ns_to_timer(unsigned int timer_base, unsigned int *nanosec,
 			divider = (*nanosec) / base;
 			break;
 		case CMDF_ROUND_UP:
-			divider = (*nanosec) / base;
+			divider = DIV_ROUND_UP(*nanosec, base);
 			break;
 		}
 		if (divider < 65536) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
