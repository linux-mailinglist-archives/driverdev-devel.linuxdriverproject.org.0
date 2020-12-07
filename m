Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7AC2D142C
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 15:58:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1480870A1;
	Mon,  7 Dec 2020 14:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ql0o5y6lvLvB; Mon,  7 Dec 2020 14:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BB5E870A3;
	Mon,  7 Dec 2020 14:58:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A40871BF3F7
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 14:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C7FF2E257
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 14:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9T4yzphzv9X8 for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 14:58:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp85.iad3a.emailsrvr.com (smtp85.iad3a.emailsrvr.com
 [173.203.187.85])
 by silver.osuosl.org (Postfix) with ESMTPS id BB8822E255
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 14:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1607353108;
 bh=YcCxsxOfPO6UHXXPtFWvbo8Y59EzcSwClxJ/pTXEQXk=;
 h=From:To:Subject:Date:From;
 b=qv8lQ3ETEoUcUS/1ntSzwoTejOWzFaR56BDX9dQGos3O2LHMnx7H1DCrSOvWW34J3
 mbAJDOsiIAJJ24wJlJ6L530BR5iA9OTgp4L4fG/OMYn9YPPk5ciEHeEQtruShi3Mop
 bqwvnrNq06lmnmUhJQcqG2aZZExVlIBDnW4XpCK4=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1607353108;
 bh=YcCxsxOfPO6UHXXPtFWvbo8Y59EzcSwClxJ/pTXEQXk=;
 h=From:To:Subject:Date:From;
 b=CGuL3ZqsZlUJsHoD47/zpBYT7xuIyLNDAuzKMsj42XLbrT74eDPthdoMkU6YInHjo
 lPkCt/enujH2iETKEo/l89XTCnoCrdRYb19rEg78D/3DLyhCD5ogQN38SMLnE4dNUO
 8SFriPulVBefdV6Bgy2u+8aaV862aKQhtvZDb7G4=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp3.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id EDB7A22FA6; 
 Mon,  7 Dec 2020 09:58:27 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: comedi: mf6x4: Fix AI end-of-conversion detection
Date: Mon,  7 Dec 2020 14:58:06 +0000
Message-Id: <20201207145806.4046-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Classification-ID: 547b1621-c35d-4a06-be47-8b7791185542-1-1
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
 Ian Abbott <abbotti@mev.co.uk>, Rostislav Lisovy <lisovy@gmail.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I have had reports from two different people that attempts to read the
analog input channels of the MF624 board fail with an `ETIMEDOUT` error.

After triggering the conversion, the code calls `comedi_timeout()` with
`mf6x4_ai_eoc()` as the callback function to check if the conversion is
complete.  The callback returns 0 if complete or `-EBUSY` if not yet
complete.  `comedi_timeout()` returns `-ETIMEDOUT` if it has not
completed within a timeout period which is propagated as an error to the
user application.

The existing code considers the conversion to be complete when the EOLC
bit is high.  However, according to the user manuals for the MF624 and
MF634 boards, this test is incorrect because EOLC is an active low
signal that goes high when the conversion is triggered, and goes low
when the conversion is complete.  Fix the problem by inverting the test
of the EOLC bit state.

Fixes: 04b565021a83 ("comedi: Humusoft MF634 and MF624 DAQ cards driver")
Cc: <stable@vger.kernel.org> # v4.4+
Cc: Rostislav Lisovy <lisovy@gmail.com>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/mf6x4.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/mf6x4.c b/drivers/staging/comedi/drivers/mf6x4.c
index ea430237efa7..9da8dd748078 100644
--- a/drivers/staging/comedi/drivers/mf6x4.c
+++ b/drivers/staging/comedi/drivers/mf6x4.c
@@ -112,8 +112,9 @@ static int mf6x4_ai_eoc(struct comedi_device *dev,
 	struct mf6x4_private *devpriv = dev->private;
 	unsigned int status;
 
+	/* EOLC goes low at end of conversion. */
 	status = ioread32(devpriv->gpioc_reg);
-	if (status & MF6X4_GPIOC_EOLC)
+	if ((status & MF6X4_GPIOC_EOLC) == 0)
 		return 0;
 	return -EBUSY;
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
