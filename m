Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C20D72AF668
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 17:30:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A0382E0B5;
	Wed, 11 Nov 2020 16:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dseidu8g7Ucc; Wed, 11 Nov 2020 16:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB64E2CD96;
	Wed, 11 Nov 2020 16:30:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BDB9D1BF29D
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B99CD86214
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ykEzXs_Zk7q for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 16:30:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 36CA4860D2
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 16:30:18 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 10so2811138wml.2
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 08:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XGuUtN4IVknkb+lwRB68ysFvPhv+l5uG2dZdrzyDbxM=;
 b=K3JL3N23cLxCnydD3po0sGWLTdktZNPtKZDeq77xo58iqu2twEcWLWY03hZKN8OVn5
 qEdpJ8jFb6yg88O56K1dAiLdD524KQrappzBIYTq6nDskqXppnxK7psrbYFE1V9EJleO
 EDqmTCSgFUsfjclhlUQfJSK/gCV3GhAgKTIGaXB/WHSyVZ/prBv5WHL9cX/ZbNeOhHfj
 gEEg3vIwotXJSYzU5iDQ+uTpB4KVY70wiKU7U389rBoXvz8e6wrqm5vsyPQCwnBMr93R
 kgh8rW1V1SabpR7kJzszSdQOm1zqp2OkrrVqlT6bJTrrVddU/p9du329EGeW8SNanRlk
 Gvxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XGuUtN4IVknkb+lwRB68ysFvPhv+l5uG2dZdrzyDbxM=;
 b=bHRqXM8RHz6Z3obflioVPtZMQhhgSRhFq9G1Trgq/xWhvt+qlhXKPxVa4Q4MeF7EfF
 qCLe/u8QhtUs2Ct0Nj1THYISoC/hZC+5VJ3kepBWTZGliPUhbTi88ciYFHYE7bYIlb8J
 r1dcHcQLOxemd487nrUAeDiLk2Ejh8f2LAKJzffFeKaSWDAONPt3oc5qWMH+mO1ZdLeq
 4txxeUEgYLgRnen1Z5AWSZI/0H1RebDpbpK5owV2u5CpVPqOx+cVQqsi9nq/TO135D8x
 /sxixUF5lWd5wH9th4ALtutGskjStTB/r1sQvsnG9VXllw/b5QzFjCbsr09QfBNZgo+b
 cSlw==
X-Gm-Message-State: AOAM533ZIAbPDv3o4YjSyQebPIZhgUllNNezYZGhMGsVZsiNdX9MO1Bo
 c6q1ruuo97SQ++iALfmX924=
X-Google-Smtp-Source: ABdhPJxvkeDKgStqfGw18+d7w57tBjQmKyn2wrOi7vyyg6iYmYfDHwFtAY7vradA/RZ3ObsFOk8S1Q==
X-Received: by 2002:a1c:3907:: with SMTP id g7mr4962791wma.176.1605112216468; 
 Wed, 11 Nov 2020 08:30:16 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id w186sm3196753wmb.26.2020.11.11.08.30.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 08:30:15 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH 0/7] MIPS: ralink: add CPU clock detection and clock gate
 driver for MT7621
Date: Wed, 11 Nov 2020 17:30:06 +0100
Message-Id: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: hackpascal@gmail.com, devicetree@vger.kernel.org, tsbogend@alpha.franken.de,
 sboyd@kernel.org, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, jiaxun.yang@flygoat.com,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset ports CPU clock detection for MT7621 from OpenWrt
and adds a complete clock plan for the mt7621 SOC.

The documentation for this SOC only talks about two registers
regarding to the clocks:
* SYSC_REG_CPLL_CLKCFG0 - provides some information about boostrapped
refclock. PLL and dividers used for CPU and some sort of BUS (AHB?).
* SYSC_REG_CPLL_CLKCFG1 - a banch of gates to enable/disable clocks for
all or some ip cores. 

No documentation about a probably existant set of dividers for each ip
core is included in the datasheets. So we cannot make anything better,
AFAICT.

Looking into driver code, there is another frequency which is used in
some drivers (uart, sd...) which for any reason is always hardcoded to
50 MHz. Taking this into account this patchset provides three main fixed
clocks to the SOC in 'mt7621-pll' which are:
  - "cpu": with detected frequency (900 MHz in my board).
  - "ahb": cpu / 4 = 225 Mhz.
  - "apb": 50 Mhz.

PLL controller cannot be manipulatedbecause there is no info about
how to do it. Because of this, there is nothing related with registers
in the included binding.

It also provides a clock gate driver 'mt7621-clk' as a platform driver
to allow to enable and disable some clocks in the different ip cores.
The parent clocks for this clock gates have also set taking into account
existant device tree and driver code resulting in the followings:
  - "hsdma": "ahb"
  - "fe": "ahb"
  - "sp_divtx": "ahb"
  - "timer": "cpu"
  - "int": "cpu"
  - "mc": "ahb"
  - "pcm": "ahb"
  - "pio": "ahb"
  - "gdma": "ahb"
  - "nand": "ahb"
  - "i2c": "ahb"
  - "i2s": "ahb"
  - "spi": "ahb"
  - "uart1": "apb"
  - "uart2": "apb"
  - "uart3": "apb"
  - "eth": "ahb"
  - "pcie0": "ahb"
  - "pcie1": "ahb"
  - "pcie2": "ahb"
  - "crypto": "ahb"
  - "shxc": "ahb"

There was a previous attempt of doing this here[0] but the author
did not wanted to make assumptions of a clock plan for the platform.

I do really want this to be upstreamed so according to the comments
in previous attempt[0] from Oleksij Rempel I have tried to do this
by myself.

All of this patches have been tested in a GNUBee PC1 resulting in a
working platform.

[0]: https://www.lkml.org/lkml/2019/7/23/1044

Sergio Paracuellos (7):
  dt-bindings: clock: add dt binding header for mt7621 clocks
  dt: bindings: add mt7621-pll device tree binding documentation
  dt: bindings: add mt7621-clk device tree binding documentation
  MIPS: ralink: add clock device providing cpu/ahb/apb clock for mt7621
  clk: ralink: add clock gate driver for mt7621 SoC
  staging: mt7621-dts: make use of new 'mt7621-pll' and 'mt7621-clk'
  MAINTAINERS: add MT7621 CLOCK maintainer

 .../bindings/clock/mediatek,mt7621-clk.yaml   |  52 ++++
 .../bindings/clock/mediatek,mt7621-pll.yaml   |  51 ++++
 MAINTAINERS                                   |   8 +
 arch/mips/include/asm/mach-ralink/mt7621.h    |  20 ++
 arch/mips/ralink/mt7621.c                     |  87 ++++++
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/ralink/Kconfig                    |  14 +
 drivers/clk/ralink/Makefile                   |   2 +
 drivers/clk/ralink/clk-mt7621.c               | 258 ++++++++++++++++++
 drivers/staging/mt7621-dts/gbpc1.dts          |  11 -
 drivers/staging/mt7621-dts/mt7621.dtsi        |  71 +++--
 include/dt-bindings/clock/mt7621-clk.h        |  39 +++
 13 files changed, 567 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.yaml
 create mode 100644 drivers/clk/ralink/Kconfig
 create mode 100644 drivers/clk/ralink/Makefile
 create mode 100644 drivers/clk/ralink/clk-mt7621.c
 create mode 100644 include/dt-bindings/clock/mt7621-clk.h

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
