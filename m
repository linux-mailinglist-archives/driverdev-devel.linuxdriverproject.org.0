Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5D8322C4A
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 15:31:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE16885F7D;
	Tue, 23 Feb 2021 14:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6oO9XRT5BMdC; Tue, 23 Feb 2021 14:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D101785F3D;
	Tue, 23 Feb 2021 14:31:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AAF891BF36B
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A79EA85F51
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4BmA5rlzjPJv for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 14:31:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp64.ord1c.emailsrvr.com (smtp64.ord1c.emailsrvr.com
 [108.166.43.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71AC785DFD
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 14:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614090678;
 bh=Xg0XQm948RnX2mNORkN4jWNpvOmAQ4uZEFklw4yFCGI=;
 h=From:To:Subject:Date:From;
 b=GgSTc8byGc3+Pnf9S76Xu3nWqXnc8UAB38b9l+3Ta/1r1AeTjXN3TtT1/cStAmtNe
 UIcMD65pKY2G2SYmcVsvguTFqR/xUMEyOghGbJBcItK/IhgpfssD6LsHmAqZidwnkl
 q5YBIJ2gV2jpB815ziytvb6/py4FA1KcPaBDDDJ4=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 132DA2019E; 
 Tue, 23 Feb 2021 09:31:17 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 01/14] staging: comedi: addi_apci_1032: Fix endian problem for
 COS sample
Date: Tue, 23 Feb 2021 14:30:42 +0000
Message-Id: <20210223143055.257402-2-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210223143055.257402-1-abbotti@mev.co.uk>
References: <20210223143055.257402-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: a7362777-437e-4132-9c26-de9af4db62d3-2-1
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

The Change-Of-State (COS) subdevice supports Comedi asynchronous
commands to read 16-bit change-of-state values.  However, the interrupt
handler is calling `comedi_buf_write_samples()` with the address of a
32-bit integer `&s->state`.  On bigendian architectures, it will copy 2
bytes from the wrong end of the 32-bit integer.  Fix it by transferring
the value via a 16-bit integer.

Fixes: 6bb45f2b0c86 ("staging: comedi: addi_apci_1032: use comedi_buf_write_samples()"
Cc: <stable@vger.kernel.org> # 3.19+
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/addi_apci_1032.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_1032.c b/drivers/staging/comedi/drivers/addi_apci_1032.c
index 35b75f0c9200..81a246fbcc01 100644
--- a/drivers/staging/comedi/drivers/addi_apci_1032.c
+++ b/drivers/staging/comedi/drivers/addi_apci_1032.c
@@ -260,6 +260,7 @@ static irqreturn_t apci1032_interrupt(int irq, void *d)
 	struct apci1032_private *devpriv = dev->private;
 	struct comedi_subdevice *s = dev->read_subdev;
 	unsigned int ctrl;
+	unsigned short val;
 
 	/* check interrupt is from this device */
 	if ((inl(devpriv->amcc_iobase + AMCC_OP_REG_INTCSR) &
@@ -275,7 +276,8 @@ static irqreturn_t apci1032_interrupt(int irq, void *d)
 	outl(ctrl & ~APCI1032_CTRL_INT_ENA, dev->iobase + APCI1032_CTRL_REG);
 
 	s->state = inl(dev->iobase + APCI1032_STATUS_REG) & 0xffff;
-	comedi_buf_write_samples(s, &s->state, 1);
+	val = s->state;
+	comedi_buf_write_samples(s, &val, 1);
 	comedi_handle_events(dev, s);
 
 	/* enable the interrupt */
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
