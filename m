Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 440A3189845
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Mar 2020 10:44:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FBFB88A57;
	Wed, 18 Mar 2020 09:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mDWGEehbjETw; Wed, 18 Mar 2020 09:44:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 967D888A38;
	Wed, 18 Mar 2020 09:44:53 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91EF91BF304
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 09:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E31B88A0E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 09:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M7t7w2IAWGAf
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 09:44:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6C6888A09
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 09:44:49 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id d1so889262wmb.2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 02:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lPF/RIqGeTagWJXXq4jVyYIvhv8diqaNvLDsOctOEuo=;
 b=qXzU2oJNZjGJocpIrlzWl+b4NIDKLM0Pvechr9qlWUbEd9CaCjUhyFopiz9+H7G0by
 m02J6glA/u0icOwmxMSxbpVF1MMrxrxOUDw2TxAOCYNbLKT9KWYZnHXMMBZcGpVNZ9EO
 arw59JypeT2LNejAXcNo2fHIxCEUaWYlrQFH5qUjfdIQ3vjg+uHJk8LeKqbZuIPDke/5
 j6vUAHinm1EoVJIXLpW/Nf9AoKnYv7pAeha13CVkSvKTobJwf0LprbBnjENRBtCSbwNx
 IQhZSqshlIz5a17NbHCTQhhQqN/pkE+plmJetw1SQh5Jqkfv86fYksQ03PH4cnXiYQfi
 jG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lPF/RIqGeTagWJXXq4jVyYIvhv8diqaNvLDsOctOEuo=;
 b=QJKtnor/MaW+g3hs2jcJlxzDndgGG4KUZE1IkMJayfJE+lUk86LWgHg127y8FMOd8+
 s26Za0+T8UekGtoD3bq+9+2ZLB3OGrVQkpJCcPo8xMeHeyNgcPNisJf2OfK3TNzW7+Ow
 Ujv9Tu0AvAXFzrIFDWcqFTnIRD3cDBpjYsgBzgCKXraLD1yBD/wCadLjNZZgKugjQB0U
 zJ5dF2m3BMl5bW2eA3GEcpDiicweD8shH+BaMPa6aBKaL52yUlmBMMbEAqdKowa9bfa1
 zaTJjKgLPoE2SBVb8vizSvXTEehnSBdSPavUqd/CHB9y+tXM1fX5lxgzT73Ld2mqQ0Us
 E8wQ==
X-Gm-Message-State: ANhLgQ0+iY7eH8GpQbobhBcv5DN8eoqAQ+dAtTkLRgp9NW0Jj/+ZatXX
 D5uRMJ7vwizXGhyOkwA2B4LHrqEt
X-Google-Smtp-Source: ADFU+vtX2txPK9XT27RbT00LIgBUH79P7yJT5Nqsdq5eg6qa5JO0YXQZjWdWiD9euTC8HMNo5qk/fw==
X-Received: by 2002:a7b:c770:: with SMTP id x16mr4151698wmk.159.1584524687920; 
 Wed, 18 Mar 2020 02:44:47 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id i67sm8701044wri.50.2020.03.18.02.44.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Mar 2020 02:44:47 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: fix io space and properly set resource
 limits
Date: Wed, 18 Mar 2020 10:44:45 +0100
Message-Id: <20200318094445.19669-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function 'mt7621_pci_parse_request_of_pci_ranges' is using
'of_pci_range_to_resource' to get both mem and io resources.
Internally this function calls to 'pci_address_to_pio' which
returns -1 if io space address is an address > IO_SPACE_LIMIT
which is 0xFFFF for mips. This mt7621 soc has io space in physical
address 0x1e160000. In order to fix this, overwrite invalid io
0xffffffff  with properly values from the device tree and set
mapped address of this resource as io port base memory address
calling 'set_io_port_base' function. There is also need to properly
setup resource limits and io and memory windows with properly
parsed values instead of set them as 'no limit' which it is wrong.
For any reason I don't really know legacy driver sets up mem window
as 0xFFFFFFFF and any other value seems to does not work as expected,
so set up also here with same values.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---

Io resources seems to be ok with this changes (tested on gnubee PC1):

[   16.629599] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
[   16.640715] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
[   16.651828] mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
[   16.762828] mt7621-pci 1e140000.pcie: PCIE0 enabled
[   16.772546] mt7621-pci 1e140000.pcie: PCIE1 enabled
[   16.782263] mt7621-pci 1e140000.pcie: PCIE2 enabled
[   16.791990] mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
[   16.810725] mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
[   16.823414] pci_bus 0000:00: root bus resource [io  0x1e160000-0x1e16ffff]
[   16.837111] pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
[   16.850809] pci_bus 0000:00: root bus resource [bus 00-ff]
[   16.861797] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
[   16.873807] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   16.886296] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   16.898867] pci 0000:00:00.0: supports D1
[   16.906860] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[   16.918729] pci 0000:00:01.0: [0e8d:0801] type 01 class 0x060400
[   16.930741] pci 0000:00:01.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   16.943239] pci 0000:00:01.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   16.955795] pci 0000:00:01.0: supports D1
[   16.963790] pci 0000:00:01.0: PME# supported from D0 D1 D3hot
[   16.975590] pci 0000:00:02.0: [0e8d:0801] type 01 class 0x060400
[   16.987596] pci 0000:00:02.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   17.000088] pci 0000:00:02.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   17.012642] pci 0000:00:02.0: supports D1
[   17.020634] pci 0000:00:02.0: PME# supported from D0 D1 D3hot
[   17.033310] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[   17.049284] pci 0000:00:01.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[   17.065236] pci 0000:00:02.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[   17.081408] pci 0000:01:00.0: [1b21:0611] type 00 class 0x010185
[   17.093429] pci 0000:01:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.104544] pci 0000:01:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.115655] pci 0000:01:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.126767] pci 0000:01:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.137877] pci 0000:01:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.148991] pci 0000:01:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.161627] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 4.000 Gb/s with 5 GT/s x1 link)
[   17.190393] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
[   17.200842] pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
[   17.212985] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
[   17.226512] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff pref]
[   17.240905] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
[   17.254335] pci 0000:02:00.0: [1b21:0611] type 00 class 0x010185
[   17.266360] pci 0000:02:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.277472] pci 0000:02:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.288584] pci 0000:02:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.299695] pci 0000:02:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.310806] pci 0000:02:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.321917] pci 0000:02:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.334555] pci 0000:02:00.0: 2.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s x1 link at 0000:00:01.0 (capable of 4.000 Gb/s with 5 GT/s x1 link)
[   17.363326] pci 0000:00:01.0: PCI bridge to [bus 02-ff]
[   17.373781] pci 0000:00:01.0:   bridge window [io  0x0000-0x0fff]
[   17.385922] pci 0000:00:01.0:   bridge window [mem 0x00000000-0x000fffff]
[   17.399445] pci 0000:00:01.0:   bridge window [mem 0x00000000-0x000fffff pref]
[   17.413838] pci_bus 0000:02: busn_res: [bus 02-ff] end is updated to 02
[   17.427246] pci 0000:03:00.0: [1b21:0611] type 00 class 0x010185
[   17.439270] pci 0000:03:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.450382] pci 0000:03:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.461496] pci 0000:03:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.472613] pci 0000:03:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.483723] pci 0000:03:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.494837] pci 0000:03:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.507471] pci 0000:03:00.0: 2.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s x1 link at 0000:00:02.0 (capable of 4.000 Gb/s with 5 GT/s x1 link)
[   17.536234] pci 0000:00:02.0: PCI bridge to [bus 03-ff]
[   17.546669] pci 0000:00:02.0:   bridge window [io  0x0000-0x0fff]
[   17.558810] pci 0000:00:02.0:   bridge window [mem 0x00000000-0x000fffff]
[   17.572333] pci 0000:00:02.0:   bridge window [mem 0x00000000-0x000fffff pref]
[   17.586724] pci_bus 0000:03: busn_res: [bus 03-ff] end is updated to 03
[   17.599971] pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
[   17.613150] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
[   17.627021] pci 0000:00:01.0: BAR 0: no space for [mem size 0x80000000]
[   17.640197] pci 0000:00:01.0: BAR 0: failed to assign [mem size 0x80000000]
[   17.654067] pci 0000:00:02.0: BAR 0: no space for [mem size 0x80000000]
[   17.667243] pci 0000:00:02.0: BAR 0: failed to assign [mem size 0x80000000]
[   17.681116] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x600fffff]
[   17.694643] pci 0000:00:00.0: BAR 9: assigned [mem 0x60100000-0x601fffff pref]
[   17.709034] pci 0000:00:01.0: BAR 8: assigned [mem 0x60200000-0x602fffff]
[   17.722565] pci 0000:00:01.0: BAR 9: assigned [mem 0x60300000-0x603fffff pref]
[   17.736962] pci 0000:00:02.0: BAR 8: assigned [mem 0x60400000-0x604fffff]
[   17.750491] pci 0000:00:02.0: BAR 9: assigned [mem 0x60500000-0x605fffff pref]
[   17.764882] pci 0000:00:00.0: BAR 1: assigned [mem 0x60600000-0x6060ffff]
[   17.778415] pci 0000:00:01.0: BAR 1: assigned [mem 0x60610000-0x6061ffff]
[   17.791944] pci 0000:00:02.0: BAR 1: assigned [mem 0x60620000-0x6062ffff]
[   17.805473] pci 0000:00:00.0: BAR 7: assigned [io  0x1e160000-0x1e160fff]
[   17.818999] pci 0000:00:01.0: BAR 7: assigned [io  0x1e161000-0x1e161fff]
[   17.832525] pci 0000:00:02.0: BAR 7: assigned [io  0x1e162000-0x1e162fff]
[   17.846064] pci 0000:01:00.0: BAR 5: assigned [mem 0x60000000-0x600001ff]
[   17.859596] pci 0000:01:00.0: BAR 4: assigned [io  0x1e160000-0x1e16000f]
[   17.873131] pci 0000:01:00.0: BAR 0: assigned [io  0x1e160010-0x1e160017]
[   17.886662] pci 0000:01:00.0: BAR 2: assigned [io  0x1e160018-0x1e16001f]
[   17.900192] pci 0000:01:00.0: BAR 1: assigned [io  0x1e160020-0x1e160023]
[   17.913722] pci 0000:01:00.0: BAR 3: assigned [io  0x1e160024-0x1e160027]
[   17.927254] pci 0000:00:00.0: PCI bridge to [bus 01]
[   17.937150] pci 0000:00:00.0:   bridge window [io  0x1e160000-0x1e160fff]
[   17.950675] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x600fffff]
[   17.964199] pci 0000:00:00.0:   bridge window [mem 0x60100000-0x601fffff pref]
[   17.978600] pci 0000:02:00.0: BAR 5: assigned [mem 0x60200000-0x602001ff]
[   17.992133] pci 0000:02:00.0: BAR 4: assigned [io  0x1e161000-0x1e16100f]
[   18.005668] pci 0000:02:00.0: BAR 0: assigned [io  0x1e161010-0x1e161017]
[   18.019199] pci 0000:02:00.0: BAR 2: assigned [io  0x1e161018-0x1e16101f]
[   18.032729] pci 0000:02:00.0: BAR 1: assigned [io  0x1e161020-0x1e161023]
[   18.046259] pci 0000:02:00.0: BAR 3: assigned [io  0x1e161024-0x1e161027]
[   18.059788] pci 0000:00:01.0: PCI bridge to [bus 02]
[   18.069682] pci 0000:00:01.0:   bridge window [io  0x1e161000-0x1e161fff]
[   18.083207] pci 0000:00:01.0:   bridge window [mem 0x60200000-0x602fffff]
[   18.096730] pci 0000:00:01.0:   bridge window [mem 0x60300000-0x603fffff pref]
[   18.111128] pci 0000:03:00.0: BAR 5: assigned [mem 0x60400000-0x604001ff]
[   18.124659] pci 0000:03:00.0: BAR 4: assigned [io  0x1e162000-0x1e16200f]
[   18.138196] pci 0000:03:00.0: BAR 0: assigned [io  0x1e162010-0x1e162017]
[   18.151729] pci 0000:03:00.0: BAR 2: assigned [io  0x1e162018-0x1e16201f]
[   18.165261] pci 0000:03:00.0: BAR 1: assigned [io  0x1e162020-0x1e162023]
[   18.178792] pci 0000:03:00.0: BAR 3: assigned [io  0x1e162024-0x1e162027]
[   18.192321] pci 0000:00:02.0: PCI bridge to [bus 03]
[   18.202216] pci 0000:00:02.0:   bridge window [io  0x1e162000-0x1e162fff]
[   18.215739] pci 0000:00:02.0:   bridge window [mem 0x60400000-0x604fffff]
[   18.229270] pci 0000:00:02.0:   bridge window [mem 0x60500000-0x605fffff pref]

 drivers/staging/mt7621-pci/pci-mt7621.c | 43 ++++++++++++++-----------
 1 file changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 973be9aa7bb2..7ef2099b01c5 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -118,6 +118,7 @@ struct mt7621_pcie_port {
  * @busn: bus range
  * @offset: IO / Memory offset
  * @dev: Pointer to PCIe device
+ * @io_map_base: virtual memory base address for io
  * @ports: pointer to PCIe port information
  * @resets_inverted: depends on chip revision
  * reset lines are inverted.
@@ -132,6 +133,7 @@ struct mt7621_pcie {
 		resource_size_t mem;
 		resource_size_t io;
 	} offset;
+	unsigned long io_map_base;
 	struct list_head ports;
 	bool resets_inverted;
 };
@@ -291,22 +293,21 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 	}
 
 	for_each_of_pci_range(&parser, &range) {
-		struct resource *res = NULL;
-
 		switch (range.flags & IORESOURCE_TYPE_BITS) {
 		case IORESOURCE_IO:
-			ioremap(range.cpu_addr, range.size);
-			res = &pcie->io;
+			pcie->io_map_base =
+				(unsigned long)ioremap(range.cpu_addr,
+						       range.size);
+			of_pci_range_to_resource(&range, node, &pcie->io);
+			pcie->io.start = range.cpu_addr;
+			pcie->io.end = range.cpu_addr + range.size - 1;
 			pcie->offset.io = 0x00000000UL;
 			break;
 		case IORESOURCE_MEM:
-			res = &pcie->mem;
+			of_pci_range_to_resource(&range, node, &pcie->mem);
 			pcie->offset.mem = 0x00000000UL;
 			break;
 		}
-
-		if (res)
-			of_pci_range_to_resource(&range, node, res);
 	}
 
 	err = of_pci_parse_bus_range(node, &pcie->busn);
@@ -318,6 +319,8 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 		pcie->busn.flags = IORESOURCE_BUS;
 	}
 
+	set_io_port_base(pcie->io_map_base);
+
 	return 0;
 }
 
@@ -548,6 +551,10 @@ static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
 	u32 slot;
 	u32 val;
 
+	/* Setup MEMWIN and IOWIN */
+	pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
+	pcie_write(pcie, pcie->io.start, RALINK_PCI_IOBASE);
+
 	list_for_each_entry(port, &pcie->ports, list) {
 		if (port->enabled) {
 			mt7621_pcie_port_clk_enable(port);
@@ -668,11 +675,17 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		return err;
 	}
 
+	err = mt7621_pci_parse_request_of_pci_ranges(pcie);
+	if (err) {
+		dev_err(dev, "Error requesting pci resources from ranges");
+		goto out_release_gpios;
+	}
+
 	/* set resources limits */
-	iomem_resource.start = 0;
-	iomem_resource.end = ~0UL; /* no limit */
-	ioport_resource.start = 0;
-	ioport_resource.end = ~0UL; /* no limit */
+	iomem_resource.start = pcie->mem.start;
+	iomem_resource.end = pcie->mem.end;
+	ioport_resource.start = pcie->io.start;
+	ioport_resource.end = pcie->io.end;
 
 	mt7621_pcie_init_ports(pcie);
 
@@ -685,12 +698,6 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 
 	mt7621_pcie_enable_ports(pcie);
 
-	err = mt7621_pci_parse_request_of_pci_ranges(pcie);
-	if (err) {
-		dev_err(dev, "Error requesting pci resources from ranges");
-		goto out_release_gpios;
-	}
-
 	setup_cm_memory_region(pcie);
 
 	err = mt7621_pcie_request_resources(pcie, &res);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
