Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CA2223EB3
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 16:53:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 231BE87E0A;
	Fri, 17 Jul 2020 14:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 38IEdtD+HffR; Fri, 17 Jul 2020 14:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8912287DB8;
	Fri, 17 Jul 2020 14:53:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A08B61BF359
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 14:53:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D92487DB8
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 14:53:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EcJoQkQIVjxo for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 14:53:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp97.iad3b.emailsrvr.com (smtp97.iad3b.emailsrvr.com
 [146.20.161.97])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C851C87DAD
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 14:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1594997599;
 bh=G1XNZoKUosIczaVLZ/Uz0cf5fBJExUEJ6FXGdrTvYOY=;
 h=From:To:Subject:Date:From;
 b=GrD2fjtvE7CwjH8nqB4dp92/3SxBd+Z2nMh9FLtVppFvg/5r5qVfuw9zZ4xaURyzR
 2DfnmpVPvtkaI0a3uoiOlPixjTc0khvxXk/qOvxpV6oBg5FZSB5IrTjJFBRVvKUN4g
 uNyIqkKogHBw1P0USpjjrPpUu3daTHbiChO8rC9c=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp5.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 35B22400CC; 
 Fri, 17 Jul 2020 10:53:18 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/4] staging: comedi: ni_6527: fix INSN_CONFIG_DIGITAL_TRIG
 support
Date: Fri, 17 Jul 2020 15:52:54 +0100
Message-Id: <20200717145257.112660-2-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200717145257.112660-1-abbotti@mev.co.uk>
References: <20200717145257.112660-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 3cd28aa4-5d40-4a0c-a681-8cbccbead0a1-2-1
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
 Ian Abbott <abbotti@mev.co.uk>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

`ni6527_intr_insn_config()` processes `INSN_CONFIG` comedi instructions
for the "interrupt" subdevice.  When `data[0]` is
`INSN_CONFIG_DIGITAL_TRIG` it is configuring the digital trigger.  When
`data[2]` is `COMEDI_DIGITAL_TRIG_ENABLE_EDGES` it is configuring rising
and falling edge detection for the digital trigger, using a base channel
number (or shift amount) in `data[3]`, a rising edge bitmask in
`data[4]` and falling edge bitmask in `data[5]`.

If the base channel number (shift amount) is greater than or equal to
the number of channels (24) of the digital input subdevice, there are no
changes to the rising and falling edges, so the mask of channels to be
changed can be set to 0, otherwise the mask of channels to be changed,
and the rising and falling edge bitmasks are shifted by the base channel
number before calling `ni6527_set_edge_detection()` to change the
appropriate registers.  Unfortunately, the code is comparing the base
channel (shift amount) to the interrupt subdevice's number of channels
(1) instead of the digital input subdevice's number of channels (24).
Fix it by comparing to 32 because all shift amounts for an `unsigned
int` must be less than that and everything from bit 24 upwards is
ignored by `ni6527_set_edge_detection()` anyway.

Fixes: 110f9e687c1a8 ("staging: comedi: ni_6527: support INSN_CONFIG_DIGITAL_TRIG")
Cc: <stable@vger.kernel.org> # 3.17+
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/ni_6527.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_6527.c b/drivers/staging/comedi/drivers/ni_6527.c
index 4d1eccb5041d..4518c2680b7c 100644
--- a/drivers/staging/comedi/drivers/ni_6527.c
+++ b/drivers/staging/comedi/drivers/ni_6527.c
@@ -332,7 +332,7 @@ static int ni6527_intr_insn_config(struct comedi_device *dev,
 		case COMEDI_DIGITAL_TRIG_ENABLE_EDGES:
 			/* check shift amount */
 			shift = data[3];
-			if (shift >= s->n_chan) {
+			if (shift >= 32) {
 				mask = 0;
 				rising = 0;
 				falling = 0;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
