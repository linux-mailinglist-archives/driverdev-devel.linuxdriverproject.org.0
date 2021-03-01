Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C007328593
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 17:58:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26CD24F29D;
	Mon,  1 Mar 2021 16:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uq7UvXlEYZh9; Mon,  1 Mar 2021 16:58:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B9B74F28F;
	Mon,  1 Mar 2021 16:58:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6671BF29A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BC4A83C46
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ljf2PGE4Gz17 for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 16:58:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp64.iad3a.emailsrvr.com (smtp64.iad3a.emailsrvr.com
 [173.203.187.64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9D9782A26
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 16:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614617888;
 bh=5MuG4i1TO1C0l6U6aiiHzGDMoLa1D09PedsFdbkV9XY=;
 h=From:To:Subject:Date:From;
 b=n+C62irsoKTgng66YsiggDJoXcCUn0uJlkgfyx4+81+gta/bwdyCVbBVt6P+hSFIi
 BfT9HsV2jEjr830IHfFKtaj/e+2d4AT3n9zgFelC3to4pUSoF+3CWP9LHEYdEASE/3
 rosNNBmUYbwkPpKZD7+muONlDQw5Z+boX3cjRlMc=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp33.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 3E82443E6; 
 Mon,  1 Mar 2021 11:58:08 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 3/6] staging: comedi: dt2814: Call dt2814_ai_clear() during
 initialization
Date: Mon,  1 Mar 2021 16:57:54 +0000
Message-Id: <20210301165757.243065-4-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210301165757.243065-1-abbotti@mev.co.uk>
References: <20210301165757.243065-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 373a6dd9-c77b-428d-ab7d-8dacbfd07151-4-1
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

The Comedi "attach" handler `dt2814_attach()` writes to the Control
register to turn off the timer enable 'ENB' bit, which triggers a
conversion.  It then sleeps awhile and checks the Status register,
returning an error if the ERR bit is set.  However, the ERR bit could
have been set due to the conversion being triggered while the A/D
converter was busy (unlikely) or due to the conversion being triggered
before some previous sample had been read from the A/D Data register.

Replace the existing code with a call to `dt2814_ai_clear()` which waits
for any conversion to finish and then clears any unread data or error
condition.  A non-zero return value from `dt2814_ai_clear()` indicates a
time-out while waiting for the A/D converter to become non-busy.  Return
an error in that case.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/dt2814.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index 8a70b7ba30f4..da4dc4df3a95 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -262,13 +262,10 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 		return ret;
 
 	outb(0, dev->iobase + DT2814_CSR);
-	usleep_range(100, 200);
-	if (inb(dev->iobase + DT2814_CSR) & DT2814_ERR) {
+	if (dt2814_ai_clear(dev)) {
 		dev_err(dev->class_dev, "reset error (fatal)\n");
 		return -EIO;
 	}
-	inb(dev->iobase + DT2814_DATA);
-	inb(dev->iobase + DT2814_DATA);
 
 	if (it->options[1]) {
 		ret = request_irq(it->options[1], dt2814_interrupt, 0,
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
