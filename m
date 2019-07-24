Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D2B7246D
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 04:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1709185D4C;
	Wed, 24 Jul 2019 02:24:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QYu09q63Z3ct; Wed, 24 Jul 2019 02:24:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D593E85CAA;
	Wed, 24 Jul 2019 02:24:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 107641BF3BA
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B46781CA3
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bypbsDeB8OGG for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 02:24:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8FC5181AEE
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 02:24:11 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id t16so20066667pfe.11
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 19:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0WMoTaUEzf2i0/9+THzPuZXCIUe+ekMzc88lMAn0PGM=;
 b=Htgu23gviBJDprRFajzRkyIgxs8zf4w1ZNqqoXGAaftgFuT1oDR17PvgSnH87ucKoO
 ZtQ2blOutSQbiWoH5NT7N6vyt5MIBdRQGQE2j3VTEUp2fofLXasXEBoXiYWVNZ8TqL1t
 52OAJj6DHABQZMDHlTEBkeEOuqZKI/lN2zdg+snMOFPKYnPcdM/CL7Kw0vfXSzor9fsI
 PDZ6MPqWdzagqKxEXec3Wp6AGA4cgH2XPnFAEHLCsC0E9ZTcRdQt9nR8kNkYAhfK1QHd
 q3SRpbYkxep6kggIlNOdTbPiXR2Gace1SIOOhcn7wWCrv7zSVHwu8flsN+cwPnh1+YMB
 zegw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0WMoTaUEzf2i0/9+THzPuZXCIUe+ekMzc88lMAn0PGM=;
 b=ChNMjlvJArTjQFBwCSzDD0bnkpDV5NoP3Fwh9Ev2IYUUk/9vk/JGUYshVs7MU+4TQg
 plvIk8akGRDWdE6e4AcvKncInxKlPdyTwsDwia67ccASMzhR7UzRtOGi1Ao3rdC7U0HL
 MfWPdqQOcARmUnLZaTGnaedldnhpGtLzb/B2xZpGmWVr3Y6nHBz/2NmQLDg9teM2YkyJ
 hyHYuQTMmliHOxqEMQhLebveFSZ8dFr0gpfgfUuoXj0aYjQzdAsMw4OLGdAmMClPSFVW
 an5P3/rA/jwEsvbx42lqYpDE3vSbUm3zBzDB3S/g5DU5Xx41iQSuyK0CVTnD5y0+fyPB
 N9Kg==
X-Gm-Message-State: APjAAAWYyfhBRz4p/oUX1OakMbSWepD+9PR85dcq6Udcs9KCDEfXM8ws
 omCZyYrBVAypA87HQStAfRQ=
X-Google-Smtp-Source: APXvYqxUYEkM9XBDBboLoJOWeoCUeXs/SaDnGfKPq806XSURPgFa31xYTKVVDHaTF3ZqJBL9b6oguQ==
X-Received: by 2002:a65:6495:: with SMTP id e21mr80068044pgv.359.1563935051079; 
 Tue, 23 Jul 2019 19:24:11 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([107.151.139.128])
 by smtp.gmail.com with ESMTPSA id s185sm63468029pgs.67.2019.07.23.19.24.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 19:24:10 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH v2 0/6] MIPS: ralink: add CPU clock detection for MT7621
Date: Wed, 24 Jul 2019 10:23:04 +0800
Message-Id: <20190724022310.28010-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset ports CPU clock detection for MT7621 from OpenWrt.

Last time I sent this, I forgot to add an binding include which
caused a compile error and the patch doesn't stay in linux-next.

This patchset resent the first two commits and also added binding
documentation for mt7621-pll and used it in mt7621-dts at
drivers/staging.

Changes since v1:
1. changed commit title prefix for dt include
2. split the patch adding clock node (details in that patch body)
3. drop useless syscon in dt documentation
4. drop cpuclock node for gbpc1

Chuanhong Guo (6):
  dt-bindings: clock: add dt binding header for mt7621-pll
  MIPS: ralink: drop ralink_clk_init for mt7621
  MIPS: ralink: add clock device providing cpu/bus clock for mt7621
  dt: bindings: add mt7621-pll dt binding documentation
  staging: mt7621-dts: fix register range of memc node in mt7621.dtsi
  staging: mt7621-dts: add dt nodes for mt7621-pll

 .../bindings/clock/mediatek,mt7621-pll.txt    | 18 ++++
 arch/mips/include/asm/mach-ralink/mt7621.h    | 20 ++++
 arch/mips/ralink/mt7621.c                     | 98 +++++++++++++------
 drivers/staging/mt7621-dts/gbpc1.dts          |  5 -
 drivers/staging/mt7621-dts/mt7621.dtsi        | 17 ++--
 include/dt-bindings/clock/mt7621-clk.h        | 14 +++
 6 files changed, 126 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
 create mode 100644 include/dt-bindings/clock/mt7621-clk.h

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
