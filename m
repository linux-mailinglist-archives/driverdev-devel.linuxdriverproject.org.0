Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA84019F7CE
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 16:20:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D44E72344A;
	Mon,  6 Apr 2020 14:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id de-QPzrt8-DX; Mon,  6 Apr 2020 14:20:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6AF2F23340;
	Mon,  6 Apr 2020 14:20:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71A761BF3D7
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 14:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C38687EA9
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 14:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmuyEjTdaBKA for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 14:20:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp76.iad3a.emailsrvr.com (smtp76.iad3a.emailsrvr.com
 [173.203.187.76])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A757845CF
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 14:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1586182835;
 bh=IXqX3F/z+CAt7tsmt1NR5FY1/oDvfyAWhQLCbYCHVr8=;
 h=From:To:Subject:Date:From;
 b=A6A+hw2vkrBzg4VtAq8MUCYjl5YHOT9OmHkXkyo45WVyAk4dg+oMtJGHJaOfOmCZr
 BElPApt7r7jjrqcjfcaoZJP9jHxJ3j9u4yB2VajrBba98m+Cqle8mBU70XZWkqZgUm
 3ZXqmANE5fYLib01xV99OWG7H5jzkH5eN4Up44IU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp26.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id ACAC354E7; 
 Mon,  6 Apr 2020 10:20:34 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 06 Apr 2020 10:20:35 -0400
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: comedi: dt2815: fix writing hi byte of analog output
Date: Mon,  6 Apr 2020 15:20:15 +0100
Message-Id: <20200406142015.126982-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Classification-ID: dee1a059-f926-4030-9b69-c7ea7a34e1a6-1-1
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
 Ian Abbott <abbotti@mev.co.uk>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The DT2815 analog output command is 16 bits wide, consisting of the
12-bit sample value in bits 15 to 4, the channel number in bits 3 to 1,
and a voltage or current selector in bit 0.  Both bytes of the 16-bit
command need to be written in turn to a single 8-bit data register.
However, the driver currently only writes the low 8-bits.  It is broken
and appears to have always been broken.

Electronic copies of the DT2815 User's Manual seem impossible to find
online, but looking at the source code, a best guess for the sequence
the driver intended to use to write the analog output command is as
follows:

1. Wait for the status register to read 0x00.
2. Write the low byte of the command to the data register.
3. Wait for the status register to read 0x80.
4. Write the high byte of the command to the data register.

Step 4 is missing from the driver.  Add step 4 to (hopefully) fix the
driver.

Also add a "FIXME" comment about setting bit 0 of the low byte of the
command.  Supposedly, it is used to choose between voltage output and
current output, but the current driver always sets it to 1.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/dt2815.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/comedi/drivers/dt2815.c b/drivers/staging/comedi/drivers/dt2815.c
index 83026ba63d1c..78a7c1b3448a 100644
--- a/drivers/staging/comedi/drivers/dt2815.c
+++ b/drivers/staging/comedi/drivers/dt2815.c
@@ -92,6 +92,7 @@ static int dt2815_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
 	int ret;
 
 	for (i = 0; i < insn->n; i++) {
+		/* FIXME: lo bit 0 chooses voltage output or current output */
 		lo = ((data[i] & 0x0f) << 4) | (chan << 1) | 0x01;
 		hi = (data[i] & 0xff0) >> 4;
 
@@ -105,6 +106,8 @@ static int dt2815_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
 		if (ret)
 			return ret;
 
+		outb(hi, dev->iobase + DT2815_DATA);
+
 		devpriv->ao_readback[chan] = data[i];
 	}
 	return i;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
