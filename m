Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBD3328591
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 17:58:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22DA383C34;
	Mon,  1 Mar 2021 16:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id blOYoZI01gKy; Mon,  1 Mar 2021 16:58:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4145A83C46;
	Mon,  1 Mar 2021 16:58:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12AEE1BF29A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F28E4F290
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fCCYAEzSeiux for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 16:58:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp69.iad3a.emailsrvr.com (smtp69.iad3a.emailsrvr.com
 [173.203.187.69])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BAA8D4F28F
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 16:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614617888;
 bh=Kcv9cYeazeg4t9g4xW9MDHMRtc6M8rrPvegx4LaYEOY=;
 h=From:To:Subject:Date:From;
 b=HuAANk79j+Qm1Zg7HU/M0FbgqMuUpaUMntbeq1ux0iaszYyYj98qG/oKS2N6pUAA6
 0Vj6ii1/HCCyKOFJcsDKfpp3iTfPKRsz2yUDOKwdUXk/wR1VYaiWsLiSbir4Z6L2n+
 nfGitEtawC18ZhZBOzObGot3hiD8DVV6iK5P5xBg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp33.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 57630552E; 
 Mon,  1 Mar 2021 11:58:07 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 2/6] staging: comedi: dt2814: Don't wait for conversion in
 interrupt handler
Date: Mon,  1 Mar 2021 16:57:53 +0000
Message-Id: <20210301165757.243065-3-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210301165757.243065-1-abbotti@mev.co.uk>
References: <20210301165757.243065-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 373a6dd9-c77b-428d-ab7d-8dacbfd07151-3-1
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

When the interrupt handler decides the final sample has been acquired,
it turns off the timer enable (ENB) bit in the Command register.  That
triggers another A/D conversion.  The interrupt handler currently waits
for that to finish and then reads the resulting, unwanted sample.  Since
the functions for handling Comedi read instructions and for setting up
asynchronous commands now call `dt2814_ai_clear()` to wait for and
discard any spurious A/D conversion, let's remove that code from the
interrupt handler.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/dt2814.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index 7e73aa094eea..8a70b7ba30f4 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -238,21 +238,13 @@ static irqreturn_t dt2814_interrupt(int irq, void *d)
 	inb(dev->iobase + DT2814_DATA);
 
 	if (!(--devpriv->ntrig)) {
-		int i;
-
 		outb(0, dev->iobase + DT2814_CSR);
 		/*
-		 * note: turning off timed mode triggers another
-		 * sample.
+		 * Note: turning off timed mode triggers another
+		 * sample.  This will be mopped up by the calls to
+		 * dt2814_ai_clear().
 		 */
 
-		for (i = 0; i < DT2814_TIMEOUT; i++) {
-			if (inb(dev->iobase + DT2814_CSR) & DT2814_FINISH)
-				break;
-		}
-		inb(dev->iobase + DT2814_DATA);
-		inb(dev->iobase + DT2814_DATA);
-
 		s->async->events |= COMEDI_CB_EOA;
 	}
 	comedi_handle_events(dev, s);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
