Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E79322C63
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 15:32:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9554D83AC4;
	Tue, 23 Feb 2021 14:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6wH24A0LipST; Tue, 23 Feb 2021 14:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7024B83A83;
	Tue, 23 Feb 2021 14:32:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC45B1BF36B
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7F1460622
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4IY_NxTyQ-n for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 14:31:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp65.ord1c.emailsrvr.com (smtp65.ord1c.emailsrvr.com
 [108.166.43.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 35FCA60621
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 14:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614090691;
 bh=zVd232UHSuunFDsiAbgaAqXW7YtPfpoUEWcBi5RnZ1Y=;
 h=From:To:Subject:Date:From;
 b=P/WoWO0+ch8XO3BGBXxOz4ug4Je0otmQFTJQutxbRKCGbfkpYHtH5nkzZuxTMyGYz
 f0CC9qYZJvm4ZNKf+bebFDGAs+TMVgppT+NOVQh9womtzLa06Lmgl9G5+VSr1h0q2y
 EnvinvS07nMby/+FP5s9qs8zmuX14nJA2Y7Pkfq8=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id A065D200BA; 
 Tue, 23 Feb 2021 09:31:30 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 12/14] staging: comedi: ni_6527: Use 16-bit 0 for interrupt
 data
Date: Tue, 23 Feb 2021 14:30:53 +0000
Message-Id: <20210223143055.257402-13-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210223143055.257402-1-abbotti@mev.co.uk>
References: <20210223143055.257402-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: a7362777-437e-4132-9c26-de9af4db62d3-13-1
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

The ni_6527 driver has an "interrupt" subdevice that supports Comedi
asynchronous commands, placing a value in the Comedi buffer for each
interrupt.  The subdevice uses Comedi's 16-bit sample format but the
interrupt handler is calling `comedi_buf_write_samples()` with the
address of a 32-bit integer `&s->state`.  On bigendian machines, this
will copy 2 bytes from the wrong end of the 32-bit integer.  This isn't
really a problem since `s->state` will always be 0 for this subdevice,
but clean it up by using a 16-bit variable initialized to 0 to pass the
value.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/ni_6527.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_6527.c b/drivers/staging/comedi/drivers/ni_6527.c
index 99e744172f4d..f1a45cf7342a 100644
--- a/drivers/staging/comedi/drivers/ni_6527.c
+++ b/drivers/staging/comedi/drivers/ni_6527.c
@@ -195,7 +195,9 @@ static irqreturn_t ni6527_interrupt(int irq, void *d)
 		return IRQ_NONE;
 
 	if (status & NI6527_STATUS_EDGE) {
-		comedi_buf_write_samples(s, &s->state, 1);
+		unsigned short val = 0;
+
+		comedi_buf_write_samples(s, &val, 1);
 		comedi_handle_events(dev, s);
 	}
 
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
