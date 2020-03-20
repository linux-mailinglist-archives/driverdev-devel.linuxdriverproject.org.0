Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B04A18CC13
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:01:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BBB7588AD3;
	Fri, 20 Mar 2020 11:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MObPSZdXlbg; Fri, 20 Mar 2020 11:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F57188A83;
	Fri, 20 Mar 2020 11:01:33 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 681A01BF307
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 61E4D88A1F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HBcayuFiY7yf
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DF0FE88A2D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:27 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 11so6013211wmo.2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 04:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ClMoDY4x5cvNS0a5oP8MAGjGwKQ6T5u2eEVoRbuLA2I=;
 b=uOE1Uz2HQGh4kcrv9rjs8C+8UF617m1O5X77qfn4AmNMJiY2oHDvfyvDa8dJucv7Vd
 r0qSmnItmYkU4Y+fA0LQCG23jFUOcT9iZOicPl2LRc4dixhOMFsCHs4Ze/Qv8Ew9Yq0G
 yRyLTZ8GC6PeaokUc10ynQ9OgaS25HzQ7eREqhug7CBxjyw8xzhUn/volrpoVgcLX9g+
 2Rpx982CVXYZW1mkJc7Lvl1CJbq+D1ZDXHp474I9Cl8qzyjadsXw1ATakWGfh257Nvdv
 eLfjNPttSZKZzMwy7o1zBWZ81mbZKM1ID8nFQyMyEWXzrEIhS31bPjlwvThHiXE7kn+C
 glOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ClMoDY4x5cvNS0a5oP8MAGjGwKQ6T5u2eEVoRbuLA2I=;
 b=SQhFoDN/8snhQyh+E9P801Evymh8PSIdUkyUBRiBptd5FkC6Q7ekA7vspkY2zPG0Qn
 EdG0qiprRJja0G+0mD2ceom43FkxVgqZObKgCrKIatnRE4JFGEG2clKvBiHIh+30+9ok
 +ggHhuLBPeJs0t6t/6wndGX73WQSoYZ/abq2SU14ExVUi8biZmZcltZCDgBeKZVM34Ui
 Lpyu1jYWIoaeqf1hoD2zaSI3ir5zdh/ZF0kKGp/0kwrO379VJzKHoav86g5J2kawAqbu
 rZ3xWJQCU8Tg2jKyHJ4+f96KhlyrPN28p7Ra7Ixx+eKdwWk21B5OOMnNl1e7hFyq0ZUv
 1bQA==
X-Gm-Message-State: ANhLgQ0v6bQ+iPsnvEPuISL4xYekCFY89L9SygDq8N1ElG2fBKVeOE+z
 eKsKCEz7iLgsxPqD4dp+C2Q=
X-Google-Smtp-Source: ADFU+vvZVZX+TifyshWudPvVPxgTLO+RHqbcaeYRBCWN/BjepeUjQoOjXuzwO9ZXHizyQGR0Owiriw==
X-Received: by 2002:a1c:cc06:: with SMTP id h6mr9741617wmb.118.1584702086000; 
 Fri, 20 Mar 2020 04:01:26 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id e6sm7488584wrn.29.2020.03.20.04.01.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 20 Mar 2020 04:01:25 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/5] staging: mt7621-pci-phy: Use only two phys to avoid
 unstable pcie links
Date: Fri, 20 Mar 2020 12:01:18 +0100
Message-Id: <20200320110123.9907-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Mt7621 soc has two phy's for the pcie one of them using just a different
register for settig it up but sharing all the rest of the config. Until
now we was presenting this schema as three different phy's in the device
tree using the 'phy-cells' node property to discriminate an index and setting
up a complete phy for the dual port index. This sometimes worked properly
but reconfiguring the same registers twice presents sometimes some unstable
pcie links and the ports was not properly being detected. The problems
only appears on hard resets and soft resets was properly working. Instead
of having this schema just set two phy's in the device tree and use the
'phy-cells' property to say if the port has or not a dual port. Doing
this configuration and set up becomes easier, LOC is decreased and the
behaviour also gets deterministic with properly and stable pcie links in
both hard and soft resets.

Device tree and controller driver have been also updated to be aligned with
this changes.

Other minor two patches are included in this series:
* One changing a variable in a prunt trace.
* Other to set to NULL gpio descriptor if getting it failed for some reason.

This changes have been tested in gnubee PC1 resulting in a totally working
PCI system without any incidence in more that ten hard resets:

Trace:

[   16.543950] mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000 (dual port = 1)
[   16.558831] mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000 (dual port = 0)
[   16.673539] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
[   16.684656] mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
[   16.795657] mt7621-pci 1e140000.pcie: PCIE0 enabled
[   16.805374] mt7621-pci 1e140000.pcie: PCIE1 enabled
[   16.815091] mt7621-pci 1e140000.pcie: PCIE2 enabled
[   16.824816] mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
[   16.843544] mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
[   16.856224] pci_bus 0000:00: root bus resource [io  0x1e160000-0x1e16ffff]
[   16.869922] pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
[   16.883619] pci_bus 0000:00: root bus resource [bus 00-ff]
[   16.894613] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
[   16.906615] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   16.919106] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   16.931676] pci 0000:00:00.0: supports D1
[   16.939668] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[   16.951486] pci 0000:00:01.0: [0e8d:0801] type 01 class 0x060400
[   16.963496] pci 0000:00:01.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   16.975989] pci 0000:00:01.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   16.988546] pci 0000:00:01.0: supports D1
[   16.996538] pci 0000:00:01.0: PME# supported from D0 D1 D3hot
[   17.008296] pci 0000:00:02.0: [0e8d:0801] type 01 class 0x060400
[   17.020305] pci 0000:00:02.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   17.032802] pci 0000:00:02.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   17.045359] pci 0000:00:02.0: supports D1
[   17.053325] pci 0000:00:02.0: PME# supported from D0 D1 D3hot
[   17.065945] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[   17.081913] pci 0000:00:01.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[   17.097858] pci 0000:00:02.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[   17.114063] pci 0000:01:00.0: [1b21:0611] type 00 class 0x010185
[   17.126080] pci 0000:01:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.137192] pci 0000:01:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.148308] pci 0000:01:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.159426] pci 0000:01:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.170538] pci 0000:01:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.181656] pci 0000:01:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.194293] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 4.000 Gb/s with 5 GT/s x1 link)
[   17.223008] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
[   17.233445] pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
[   17.245593] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
[   17.259119] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff pref]
[   17.273510] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
[   17.286904] pci 0000:02:00.0: [1b21:0611] type 00 class 0x010185
[   17.298927] pci 0000:02:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.310039] pci 0000:02:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.321150] pci 0000:02:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.332262] pci 0000:02:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.343372] pci 0000:02:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.354484] pci 0000:02:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.367118] pci 0000:02:00.0: 2.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s x1 link at 0000:00:01.0 (capable of 4.000 Gb/s with 5 GT/s x1 link)
[   17.395830] pci 0000:00:01.0: PCI bridge to [bus 02-ff]
[   17.406265] pci 0000:00:01.0:   bridge window [io  0x0000-0x0fff]
[   17.418411] pci 0000:00:01.0:   bridge window [mem 0x00000000-0x000fffff]
[   17.431935] pci 0000:00:01.0:   bridge window [mem 0x00000000-0x000fffff pref]
[   17.446325] pci_bus 0000:02: busn_res: [bus 02-ff] end is updated to 02
[   17.459716] pci 0000:03:00.0: [1b21:0611] type 00 class 0x010185
[   17.471731] pci 0000:03:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.482844] pci 0000:03:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.493958] pci 0000:03:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.505069] pci 0000:03:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.516180] pci 0000:03:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.527291] pci 0000:03:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.539922] pci 0000:03:00.0: 2.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s x1 link at 0000:00:02.0 (capable of 4.000 Gb/s with 5 GT/s x1 link)
[   17.568645] pci 0000:00:02.0: PCI bridge to [bus 03-ff]
[   17.579079] pci 0000:00:02.0:   bridge window [io  0x0000-0x0fff]
[   17.591220] pci 0000:00:02.0:   bridge window [mem 0x00000000-0x000fffff]
[   17.604744] pci 0000:00:02.0:   bridge window [mem 0x00000000-0x000fffff pref]
[   17.619136] pci_bus 0000:03: busn_res: [bus 03-ff] end is updated to 03
[   17.632385] pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
[   17.645563] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
[   17.659436] pci 0000:00:01.0: BAR 0: no space for [mem size 0x80000000]
[   17.672612] pci 0000:00:01.0: BAR 0: failed to assign [mem size 0x80000000]
[   17.686482] pci 0000:00:02.0: BAR 0: no space for [mem size 0x80000000]
[   17.699665] pci 0000:00:02.0: BAR 0: failed to assign [mem size 0x80000000]
[   17.713537] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x600fffff]
[   17.727064] pci 0000:00:00.0: BAR 9: assigned [mem 0x60100000-0x601fffff pref]
[   17.741455] pci 0000:00:01.0: BAR 8: assigned [mem 0x60200000-0x602fffff]
[   17.754981] pci 0000:00:01.0: BAR 9: assigned [mem 0x60300000-0x603fffff pref]
[   17.769372] pci 0000:00:02.0: BAR 8: assigned [mem 0x60400000-0x604fffff]
[   17.782899] pci 0000:00:02.0: BAR 9: assigned [mem 0x60500000-0x605fffff pref]
[   17.797290] pci 0000:00:00.0: BAR 1: assigned [mem 0x60600000-0x6060ffff]
[   17.810823] pci 0000:00:01.0: BAR 1: assigned [mem 0x60610000-0x6061ffff]
[   17.824359] pci 0000:00:02.0: BAR 1: assigned [mem 0x60620000-0x6062ffff]
[   17.837888] pci 0000:00:00.0: BAR 7: assigned [io  0x1e160000-0x1e160fff]
[   17.851414] pci 0000:00:01.0: BAR 7: assigned [io  0x1e161000-0x1e161fff]
[   17.864940] pci 0000:00:02.0: BAR 7: assigned [io  0x1e162000-0x1e162fff]
[   17.878482] pci 0000:01:00.0: BAR 5: assigned [mem 0x60000000-0x600001ff]
[   17.892012] pci 0000:01:00.0: BAR 4: assigned [io  0x1e160000-0x1e16000f]
[   17.905543] pci 0000:01:00.0: BAR 0: assigned [io  0x1e160010-0x1e160017]
[   17.919073] pci 0000:01:00.0: BAR 2: assigned [io  0x1e160018-0x1e16001f]
[   17.932604] pci 0000:01:00.0: BAR 1: assigned [io  0x1e160020-0x1e160023]
[   17.946134] pci 0000:01:00.0: BAR 3: assigned [io  0x1e160024-0x1e160027]
[   17.959671] pci 0000:00:00.0: PCI bridge to [bus 01]
[   17.969566] pci 0000:00:00.0:   bridge window [io  0x1e160000-0x1e160fff]
[   17.983090] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x600fffff]
[   17.996614] pci 0000:00:00.0:   bridge window [mem 0x60100000-0x601fffff pref]
[   18.011012] pci 0000:02:00.0: BAR 5: assigned [mem 0x60200000-0x602001ff]
[   18.024542] pci 0000:02:00.0: BAR 4: assigned [io  0x1e161000-0x1e16100f]
[   18.038073] pci 0000:02:00.0: BAR 0: assigned [io  0x1e161010-0x1e161017]
[   18.051604] pci 0000:02:00.0: BAR 2: assigned [io  0x1e161018-0x1e16101f]
[   18.065134] pci 0000:02:00.0: BAR 1: assigned [io  0x1e161020-0x1e161023]
[   18.078666] pci 0000:02:00.0: BAR 3: assigned [io  0x1e161024-0x1e161027]
[   18.092200] pci 0000:00:01.0: PCI bridge to [bus 02]
[   18.102095] pci 0000:00:01.0:   bridge window [io  0x1e161000-0x1e161fff]
[   18.115617] pci 0000:00:01.0:   bridge window [mem 0x60200000-0x602fffff]
[   18.129142] pci 0000:00:01.0:   bridge window [mem 0x60300000-0x603fffff pref]
[   18.143540] pci 0000:03:00.0: BAR 5: assigned [mem 0x60400000-0x604001ff]
[   18.157074] pci 0000:03:00.0: BAR 4: assigned [io  0x1e162000-0x1e16200f]
[   18.170606] pci 0000:03:00.0: BAR 0: assigned [io  0x1e162010-0x1e162017]
[   18.184136] pci 0000:03:00.0: BAR 2: assigned [io  0x1e162018-0x1e16201f]
[   18.197667] pci 0000:03:00.0: BAR 1: assigned [io  0x1e162020-0x1e162023]
[   18.211196] pci 0000:03:00.0: BAR 3: assigned [io  0x1e162024-0x1e162027]
[   18.224734] pci 0000:00:02.0: PCI bridge to [bus 03]
[   18.234630] pci 0000:00:02.0:   bridge window [io  0x1e162000-0x1e162fff]
[   18.248153] pci 0000:00:02.0:   bridge window [mem 0x60400000-0x604fffff]
[   18.261675] pci 0000:00:02.0:   bridge window [mem 0x60500000-0x605fffff pref]


Sergio Paracuellos (5):
  staging: mt7621-pci-phy: avoid to create to different phys for a dual
    port one
  staging: mt7621-dts: set up only two pcie phys
  staging: mt7621-pci: use only two phys from device tree
  staging: mt7621-pci: change variable to print for slot
  staging: mt7621-pci: be sure gpio descriptor is null on fails

 drivers/staging/mt7621-dts/mt7621.dtsi        |   6 +-
 .../staging/mt7621-pci-phy/pci-mt7621-phy.c   | 144 +++++++-----------
 drivers/staging/mt7621-pci/pci-mt7621.c       |  13 +-
 3 files changed, 72 insertions(+), 91 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
