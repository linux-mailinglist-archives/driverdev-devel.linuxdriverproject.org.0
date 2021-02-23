Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 549C8322C58
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 15:32:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE5E185DFD;
	Tue, 23 Feb 2021 14:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VZlNsjIxbsVQ; Tue, 23 Feb 2021 14:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3CD4B85F51;
	Tue, 23 Feb 2021 14:32:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6A611BF36B
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1C7660621
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BKtg-VH2tSxS for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 14:31:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp69.ord1c.emailsrvr.com (smtp69.ord1c.emailsrvr.com
 [108.166.43.69])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E64C76061D
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 14:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614090689;
 bh=jzq5UFI8j04L1IDKYH2XmCWomf69AHPUPwcLbZPHMnY=;
 h=From:To:Subject:Date:From;
 b=VjCRAsVOSqX80E/pNa6R0vIna3UXQJxFQT2DB0URtaO2DccBklDn5hxnYln++CZ0G
 77wZScq3gc47jyqC530Lt0uYKhbWXumcWL/8DgTAEvk4aHKIg+7i7epsPCVRhmlDdk
 VFU1fWQkvVO3LvDKXSJL7266rGvbEzRrDDtljymo=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 8854A20184; 
 Tue, 23 Feb 2021 09:31:28 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 10/14] staging: comedi: amplc_pc236_common: Use 16-bit 0 for
 interrupt data
Date: Tue, 23 Feb 2021 14:30:51 +0000
Message-Id: <20210223143055.257402-11-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210223143055.257402-1-abbotti@mev.co.uk>
References: <20210223143055.257402-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: a7362777-437e-4132-9c26-de9af4db62d3-11-1
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

The Amplicon PC36AT/PCI236 common driver has an "interrupt" subdevice
that supports Comedi asynchronous commands, placing a value in the
Comedi buffer for each interrupt.  The subdevice uses Comedi's 16-bit
sample format but the interrupt handler is calling
`comedi_buf_write_samples()` with the address of a 32-bit integer
`&s->state`.  On bigendian machines, this will copy 2 bytes from the
wrong end of the 32-bit integer.  This isn't really a problem since
`s->state` will always be 0 for this subdevice, but clean it up by using
a 16-bit variable initialized to 0 to pass the value.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/amplc_pc236_common.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pc236_common.c b/drivers/staging/comedi/drivers/amplc_pc236_common.c
index 043752663188..981d281e87a1 100644
--- a/drivers/staging/comedi/drivers/amplc_pc236_common.c
+++ b/drivers/staging/comedi/drivers/amplc_pc236_common.c
@@ -126,7 +126,9 @@ static irqreturn_t pc236_interrupt(int irq, void *d)
 
 	handled = pc236_intr_check(dev);
 	if (dev->attached && handled) {
-		comedi_buf_write_samples(s, &s->state, 1);
+		unsigned short val = 0;
+
+		comedi_buf_write_samples(s, &val, 1);
 		comedi_handle_events(dev, s);
 	}
 	return IRQ_RETVAL(handled);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
