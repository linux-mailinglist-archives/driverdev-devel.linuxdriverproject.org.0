Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C006830F2FA
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 13:14:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 947A187158;
	Thu,  4 Feb 2021 12:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6HwkEKtgCmi; Thu,  4 Feb 2021 12:13:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 058AD87131;
	Thu,  4 Feb 2021 12:13:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E5101BF3BD
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:13:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2ABA587131
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A+12WXoBdzJM for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 12:13:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D13C87101
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 12:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 4125950DFB;
 Thu,  4 Feb 2021 13:13:53 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LsOCjatV_sHr; Thu,  4 Feb 2021 13:13:52 +0100 (CET)
From: Ayush <ayush@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1612440832; bh=jFcIPCjcrnGRmS+GLhFP0aQg/mHfo1YXPE5ytwfbKOs=;
 h=From:To:Cc:Subject:Date;
 b=OqugtlghaTapoLWz99MNjBvYiZlbM2/uzlQQMsTppVKrvprllpmTJ3sxlDwU1afVl
 8gD9ksJOwKkTyOjpwuFXQRfy0y2c4tmnHLbntiexnHJ6VJdXLdkkUACOveOt/x3xr/
 6tuQWFfwLn2CgQX6bUVqV9iBapPgL2X7oGDqulSU09RLSYg/20EDnDCkSDslv/pGZN
 DzbUzOIPs8EnsSPo4yrEAwUuxFjGYt1rGUoYHG9cPmFyWHcmZaSEQNPMBEr7ZX7AIg
 0WpPveqRbA0P3HShOA/zcTqZoGVjzQx3/V73ZWHeIs9wp5YBRacqOwqHSb7GI7uNpL
 OS5HcLUys4FGw==
To: gregkh@linuxfoundation.org, abbotti@mev.co.uk,
 hsweeten@visionengravers.com, grandmaster@al2klimov.de
Subject: [PATCH RFC] staging: comedi: fix coding style issues
Date: Thu,  4 Feb 2021 17:43:37 +0530
Message-Id: <20210204121337.32986-1-ayush@disroot.org>
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix IF_0 and IF_1 warnings by checkpatch.pl

Signed-off-by: Ayush <ayush@disroot.org>
---
compile tested only.

 drivers/staging/comedi/drivers/dt2801.c | 29 -------------------------
 1 file changed, 29 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2801.c b/drivers/staging/comedi/drivers/dt2801.c
index 0d571d817b4e..bb01416084e4 100644
--- a/drivers/staging/comedi/drivers/dt2801.c
+++ b/drivers/staging/comedi/drivers/dt2801.c
@@ -87,17 +87,6 @@
 #define DT2801_STATUS		1
 #define DT2801_CMD		1
 
-#if 0
-/* ignore 'defined but not used' warning */
-static const struct comedi_lrange range_dt2801_ai_pgh_bipolar = {
-	4, {
-		BIP_RANGE(10),
-		BIP_RANGE(5),
-		BIP_RANGE(2.5),
-		BIP_RANGE(1.25)
-	}
-};
-#endif
 static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = {
 	4, {
 		BIP_RANGE(10),
@@ -107,17 +96,6 @@ static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = {
 	}
 };
 
-#if 0
-/* ignore 'defined but not used' warning */
-static const struct comedi_lrange range_dt2801_ai_pgh_unipolar = {
-	4, {
-		UNI_RANGE(10),
-		UNI_RANGE(5),
-		UNI_RANGE(2.5),
-		UNI_RANGE(1.25)
-	}
-};
-#endif
 static const struct comedi_lrange range_dt2801_ai_pgl_unipolar = {
 	4, {
 		UNI_RANGE(10),
@@ -580,14 +558,7 @@ static int dt2801_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 	/* ai subdevice */
 	s->type = COMEDI_SUBD_AI;
 	s->subdev_flags = SDF_READABLE | SDF_GROUND;
-#if 1
 	s->n_chan = n_ai_chans;
-#else
-	if (it->options[2])
-		s->n_chan = board->ad_chan;
-	else
-		s->n_chan = board->ad_chan / 2;
-#endif
 	s->maxdata = (1 << board->adbits) - 1;
 	s->range_table = ai_range_lkup(board->adrangetype, it->options[3]);
 	s->insn_read = dt2801_ai_insn_read;
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
