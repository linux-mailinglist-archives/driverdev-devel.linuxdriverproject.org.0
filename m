Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF87328590
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 17:58:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 461A8430C3;
	Mon,  1 Mar 2021 16:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xca_xMYpIz8g; Mon,  1 Mar 2021 16:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74FFE430A9;
	Mon,  1 Mar 2021 16:58:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A3BF1BF29A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A67E430CC
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1ZFW13Qw7Ty for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 16:58:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp67.iad3a.emailsrvr.com (smtp67.iad3a.emailsrvr.com
 [173.203.187.67])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D704943092
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 16:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614617887;
 bh=U0idnM8EEgknz41hq8Jxs4sDzOkejLXjDNC388XvVF8=;
 h=From:To:Subject:Date:From;
 b=G7YnE6I5vqDvYyobQt3pjVVEO7DVrdqRxzV4pTutFCrxUXFVB7J+xRDVE+xLAenK8
 cPojAO8TeiP/mDmtxAueBx28tpu/BskP4CDxuDq1misQ9OdFCrQHBTLs7/dXssscxp
 uptJr3R8r40yJfdwgAl6zSeUapZkPc2YOG9O8BkI=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp33.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 679E243E6; 
 Mon,  1 Mar 2021 11:58:06 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/6] staging: comedi: dt2814: Clear stale AI data before
 operation
Date: Mon,  1 Mar 2021 16:57:52 +0000
Message-Id: <20210301165757.243065-2-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210301165757.243065-1-abbotti@mev.co.uk>
References: <20210301165757.243065-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 373a6dd9-c77b-428d-ab7d-8dacbfd07151-2-1
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

When performing a Comedi read instruction or setting up an asynchronous
command on the AI subdevice, clear any stale data on the A/D registers
by waiting for the Status register's BUSY bit to clear (if set) and then
if the FINISH or ERR bit is set, reading the A/D Data register twice to
clear the stale data.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/dt2814.c | 39 +++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index bd329d7b4893..7e73aa094eea 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -52,6 +52,43 @@ struct dt2814_private {
 #define DT2814_TIMEOUT 10
 #define DT2814_MAX_SPEED 100000	/* Arbitrary 10 khz limit */
 
+static int dt2814_ai_notbusy(struct comedi_device *dev,
+			     struct comedi_subdevice *s,
+			     struct comedi_insn *insn,
+			     unsigned long context)
+{
+	unsigned int status;
+
+	status = inb(dev->iobase + DT2814_CSR);
+	if (context)
+		*(unsigned int *)context = status;
+	if (status & DT2814_BUSY)
+		return -EBUSY;
+	return 0;
+}
+
+static int dt2814_ai_clear(struct comedi_device *dev)
+{
+	unsigned int status = 0;
+	int ret;
+
+	/* Wait until not busy and get status register value. */
+	ret = comedi_timeout(dev, NULL, NULL, dt2814_ai_notbusy,
+			     (unsigned long)&status);
+	if (ret)
+		return ret;
+
+	if (status & (DT2814_FINISH | DT2814_ERR)) {
+		/*
+		 * There unread data, or the error flag is set.
+		 * Read the data register twice to clear the condition.
+		 */
+		inb(dev->iobase + DT2814_DATA);
+		inb(dev->iobase + DT2814_DATA);
+	}
+	return 0;
+}
+
 static int dt2814_ai_eoc(struct comedi_device *dev,
 			 struct comedi_subdevice *s,
 			 struct comedi_insn *insn,
@@ -73,6 +110,7 @@ static int dt2814_ai_insn_read(struct comedi_device *dev,
 	int chan;
 	int ret;
 
+	dt2814_ai_clear(dev);	/* clear stale data or error */
 	for (n = 0; n < insn->n; n++) {
 		chan = CR_CHAN(insn->chanspec);
 
@@ -174,6 +212,7 @@ static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	int chan;
 	int trigvar;
 
+	dt2814_ai_clear(dev);	/* clear stale data or error */
 	trigvar = dt2814_ns_to_timer(&cmd->scan_begin_arg, cmd->flags);
 
 	chan = CR_CHAN(cmd->chanlist[0]);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
