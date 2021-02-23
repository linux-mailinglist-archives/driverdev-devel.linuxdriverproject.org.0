Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771A1322C50
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 15:31:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7D9687231;
	Tue, 23 Feb 2021 14:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VWIVKxkwBSE; Tue, 23 Feb 2021 14:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E94286FCF;
	Tue, 23 Feb 2021 14:31:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60F261BF36B
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C8B76061D
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sBdhY3EcWgE6 for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 14:31:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp70.ord1c.emailsrvr.com (smtp70.ord1c.emailsrvr.com
 [108.166.43.70])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18DB06058B
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 14:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614090682;
 bh=JcNAYLtXoQOy1qeGZ3NRTEbBEZcY2W3VhuHDAbNXGE4=;
 h=From:To:Subject:Date:From;
 b=XUCd+yMbfG/hbKV/kYXuizB6gKAiidxBepBvLtEu87SDRLix3xL2owVCQBhyDstb8
 Qk8HxGvsfN7IvIOrYD7ddPgKgpsNkbC1Cjvby2oOiqlvQ46TgsGREJPVb+ygLj6d7P
 3cGdXqa5SHj/jW5BaxHhN32MWJdAMXySqfz0a84I=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 8B693201BC; 
 Tue, 23 Feb 2021 09:31:21 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 04/14] staging: comedi: das6402: Fix endian problem for AI
 command data
Date: Tue, 23 Feb 2021 14:30:45 +0000
Message-Id: <20210223143055.257402-5-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210223143055.257402-1-abbotti@mev.co.uk>
References: <20210223143055.257402-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: a7362777-437e-4132-9c26-de9af4db62d3-5-1
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

The analog input subdevice supports Comedi asynchronous commands that
use Comedi's 16-bit sample format.  However, the call to
`comedi_buf_write_samples()` is passing the address of a 32-bit integer
variable.  On bigendian machines, this will copy 2 bytes from the wrong
end of the 32-bit value.  Fix it by changing the type of the variable
holding the sample value to `unsigned short`.

Fixes: d1d24cb65ee3 ("staging: comedi: das6402: read analog input samples in interrupt handler")
Cc: <stable@vger.kernel.org> # 3.19+
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/das6402.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/das6402.c b/drivers/staging/comedi/drivers/das6402.c
index 04e224f8b779..96f4107b8054 100644
--- a/drivers/staging/comedi/drivers/das6402.c
+++ b/drivers/staging/comedi/drivers/das6402.c
@@ -186,7 +186,7 @@ static irqreturn_t das6402_interrupt(int irq, void *d)
 	if (status & DAS6402_STATUS_FFULL) {
 		async->events |= COMEDI_CB_OVERFLOW;
 	} else if (status & DAS6402_STATUS_FFNE) {
-		unsigned int val;
+		unsigned short val;
 
 		val = das6402_ai_read_sample(dev, s);
 		comedi_buf_write_samples(s, &val, 1);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
