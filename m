Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5789167D77
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 13:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7A8D873B8;
	Fri, 21 Feb 2020 12:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AP6VFGF7zkIk; Fri, 21 Feb 2020 12:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF7FA86EAC;
	Fri, 21 Feb 2020 12:26:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3EF801BF2B4
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 12:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 39CD322053
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 12:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EX9dLuURWNr1 for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 12:26:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
 by silver.osuosl.org (Postfix) with ESMTPS id 3367022011
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 12:26:46 +0000 (UTC)
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id 5QMi220065USYZQ01QMiBQ; Fri, 21 Feb 2020 13:21:42 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j57JO-0002E2-53; Fri, 21 Feb 2020 13:21:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j57JO-0008LK-2Q; Fri, 21 Feb 2020 13:21:42 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Marcus Wolf <linux@Wolf-Entwicklungen.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
 Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/3] staging: pi433: overlay: Convert to sugar syntax
Date: Fri, 21 Feb 2020 13:21:30 +0100
Message-Id: <20200221122133.32024-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

	Hi all,

This patch series fixes common errors in the overlay DTS for the Pi433
radio module, and converts it to overlay sugar syntax.

This has not been run-tested due to lack of hardware, but I did look at
the resulting changes using scripts/dtc/dtx_diff.

Thanks for your comments!

Geert Uytterhoeven (3):
  staging: pi433: overlay: Fix Broadcom vendor prefix
  staging: pi433: overlay: Fix reg-related warnings
  staging: pi433: overlay: Convert to sugar syntax

 .../devicetree/pi433-overlay.dts              | 73 +++++++++----------
 1 file changed, 34 insertions(+), 39 deletions(-)

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
