Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4481F56A34
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 15:18:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2C9687C9A;
	Wed, 26 Jun 2019 13:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U94Zmv8YvMll; Wed, 26 Jun 2019 13:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BBAB87C17;
	Wed, 26 Jun 2019 13:18:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B84B61BF3C8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 13:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD5082155C
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 13:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3OmzfdMk46Px for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 13:18:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp89.ord1c.emailsrvr.com (smtp89.ord1c.emailsrvr.com
 [108.166.43.89])
 by silver.osuosl.org (Postfix) with ESMTPS id 5881B21563
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 13:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1561555068;
 bh=p8NBrC7TcB3r94Ss7ixIGRBlzw0oSkFVKI7xMPI0ZBY=;
 h=From:To:Subject:Date:From;
 b=NCPMkYM8lPgmjLBc7sD3P4+NsovJcXautuM69pPOrEJiZQk5BLw+xA6TlRDR4M0SF
 II/ECIPigrMr1Vfb45A0khHeJf6/374zXPOlLVQg8KVqlLd602Cv99hE0nf9k3CDKS
 syfwezCuawVDLMxZ74HkUFtV/Kpoo5DX+nADs0MQ=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp28.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id C642340148; 
 Wed, 26 Jun 2019 09:17:47 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Wed, 26 Jun 2019 09:17:48 -0400
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: comedi: amplc_pci230: fix null pointer deref on
 interrupt
Date: Wed, 26 Jun 2019 14:17:39 +0100
Message-Id: <20190626131739.26022-1-abbotti@mev.co.uk>
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
 Ian Abbott <abbotti@mev.co.uk>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The interrupt handler `pci230_interrupt()` causes a null pointer
dereference for a PCI260 card.  There is no analog output subdevice for
a PCI260.  The `dev->write_subdev` subdevice pointer and therefore the
`s_ao` subdevice pointer variable will be `NULL` for a PCI260.  The
following call near the end of the interrupt handler results in the null
pointer dereference for a PCI260:

	comedi_handle_events(dev, s_ao);

Fix it by only calling the above function if `s_ao` is valid.

Note that the other uses of `s_ao` in the calls
`pci230_handle_ao_nofifo(dev, s_ao);` and `pci230_handle_ao_fifo(dev,
s_ao);` will never be reached for a PCI260, so they are safe.

Fixes: 39064f23284c ("staging: comedi: amplc_pci230: use comedi_handle_events()")
Cc: <stable@vger.kernel.org> # v3.19+
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/amplc_pci230.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 65f60c2b702a..f7e673121864 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -2330,7 +2330,8 @@ static irqreturn_t pci230_interrupt(int irq, void *d)
 	devpriv->intr_running = false;
 	spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);
 
-	comedi_handle_events(dev, s_ao);
+	if (s_ao)
+		comedi_handle_events(dev, s_ao);
 	comedi_handle_events(dev, s_ai);
 
 	return IRQ_HANDLED;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
