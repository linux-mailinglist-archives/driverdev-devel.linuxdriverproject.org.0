Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71639328599
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 17:59:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A7BD83D98;
	Mon,  1 Mar 2021 16:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t8c22WOe81yO; Mon,  1 Mar 2021 16:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6669E83D34;
	Mon,  1 Mar 2021 16:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A7C31BF29A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0AAA6430A9
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o0t_mgxreg7J for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 16:58:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp67.iad3a.emailsrvr.com (smtp67.iad3a.emailsrvr.com
 [173.203.187.67])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E25043092
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 16:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614617891;
 bh=vYCUheAOo3d6fBoalOZXywBWxNE9asfUhuAjEHfgCYU=;
 h=From:To:Subject:Date:From;
 b=VHtPsrNVnWfLirS/kwFrHGlXe/vuryURepOWraVTs+hCNrCvzXz59xKEkO1jwk/Xo
 CrK/ut9SPNRteSp0wbOio7tTDPHBoARwu6XLvKLtZ/LkxIX1XGOtMfcCshwOPP24jd
 gDM+A2uwevTBPFrNX3P0uS+8gMu+LAk1cqY5P2z0=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp33.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 0623D549C; 
 Mon,  1 Mar 2021 11:58:10 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 6/6] staging: comedi: dt2814: Clear stale AI data on detach
Date: Mon,  1 Mar 2021 16:57:57 +0000
Message-Id: <20210301165757.243065-7-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210301165757.243065-1-abbotti@mev.co.uk>
References: <20210301165757.243065-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 373a6dd9-c77b-428d-ab7d-8dacbfd07151-7-1
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

When the Comedi "detach" handler is called, it is possible that an extra
A/D conversion (triggered during termination of a Comedi asynchronous
command) is still in progress.  In that case, the FINISH bit in the
Status register will eventually get set and there will be stale data
waiting to be read from the A/D Data register.  The interrupt handler
will also be called if still connected at the time.  That should all be
mostly harmless, but it would be better to wait for any such conversion
to complete and clear any stale data during the "detach".  Add a custom
"detach" handler `dt2814_detach()` to do that if an interrupt handler
has been set up.  (There is no need to do it if no interrupt handler was
set up because Comedi asynchronous command support is disabled in that
case.)

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/dt2814.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index d18f9a5a9fb1..ed44ce0d151b 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -346,11 +346,24 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 	return 0;
 }
 
+static void dt2814_detach(struct comedi_device *dev)
+{
+	if (dev->irq) {
+		/*
+		 * An extra conversion triggered on termination of an
+		 * asynchronous command may still be in progress.  Wait for
+		 * it to finish and clear the data or error status.
+		 */
+		dt2814_ai_clear(dev);
+	}
+	comedi_legacy_detach(dev);
+}
+
 static struct comedi_driver dt2814_driver = {
 	.driver_name	= "dt2814",
 	.module		= THIS_MODULE,
 	.attach		= dt2814_attach,
-	.detach		= comedi_legacy_detach,
+	.detach		= dt2814_detach,
 };
 module_comedi_driver(dt2814_driver);
 
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
