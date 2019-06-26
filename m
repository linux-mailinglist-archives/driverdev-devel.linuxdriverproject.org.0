Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0C256A38
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 15:18:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AF49868F4;
	Wed, 26 Jun 2019 13:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ryn7VdV+lLUs; Wed, 26 Jun 2019 13:18:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7423B8687B;
	Wed, 26 Jun 2019 13:18:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1F9F1BF3C8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 13:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9EE4E87C3F
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 13:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wZ4Wi7aMLOM2 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 13:18:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp97.ord1c.emailsrvr.com (smtp97.ord1c.emailsrvr.com
 [108.166.43.97])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B6EC587C11
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 13:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1561555092;
 bh=uILIgeTCaMZi0ztFfJUtA14tW+iy/tHbUv33HBIXIA4=;
 h=From:To:Subject:Date:From;
 b=NTBdKLnv1rZCnWxqHj9gWXofaRGarvsUVgtFEEkTpI4UWGgWkUVlaP6Q2qWBzph7c
 07Lxma7mLxE0n6kadE1OBnMukXWS9IraTsjdJD+fc4CT33OY+FsVPgpVcy1+XOJxNg
 +xOBE1Qm50OMqWMRgCuC1qhcWXQsDFnKDsi/sk8E=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp21.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 5D1B6C0257; 
 Wed, 26 Jun 2019 09:18:11 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Wed, 26 Jun 2019 09:18:12 -0400
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: comedi: dt282x: fix a null pointer deref on interrupt
Date: Wed, 26 Jun 2019 14:18:04 +0100
Message-Id: <20190626131804.26215-1-abbotti@mev.co.uk>
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

The interrupt handler `dt282x_interrupt()` causes a null pointer
dereference for those supported boards that have no analog output
support.  For these boards, `dev->write_subdev` will be `NULL` and
therefore the `s_ao` subdevice pointer variable will be `NULL`.  In that
case, the following call near the end of the interrupt handler results
in a null pointer dereference:

	comedi_handle_events(dev, s_ao);

Fix it by only calling the above function if `s_ao` is valid.

(There are other uses of `s_ao` by the interrupt handler that may or may
not be reached depending on values of hardware registers.  Trust that
they are reliable for now.)

Note:
commit 4f6f009b204f ("staging: comedi: dt282x: use comedi_handle_events()")
propagates an earlier error from
commit f21c74fa4cfe ("staging: comedi: dt282x: use cfc_handle_events()").

Fixes: 4f6f009b204f ("staging: comedi: dt282x: use comedi_handle_events()")
Cc: <stable@vger.kernel.org> # v3.19+
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
Note: A similar patch will be required for stable v3.16.x, but that
calls cfc_handle_events() instead of comedi_handle_events().
---
 drivers/staging/comedi/drivers/dt282x.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/dt282x.c b/drivers/staging/comedi/drivers/dt282x.c
index 3be927f1d3a9..e15e33ed94ae 100644
--- a/drivers/staging/comedi/drivers/dt282x.c
+++ b/drivers/staging/comedi/drivers/dt282x.c
@@ -557,7 +557,8 @@ static irqreturn_t dt282x_interrupt(int irq, void *d)
 	}
 #endif
 	comedi_handle_events(dev, s);
-	comedi_handle_events(dev, s_ao);
+	if (s_ao)
+		comedi_handle_events(dev, s_ao);
 
 	return IRQ_RETVAL(handled);
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
