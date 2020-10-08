Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4C52873B7
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 13:58:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 474B186EBC;
	Thu,  8 Oct 2020 11:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FWIcknOHTAt; Thu,  8 Oct 2020 11:58:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D89386C59;
	Thu,  8 Oct 2020 11:58:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7051F1BF4D5
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 649302E139
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ocFJuyFEwzFB for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 11:58:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id E7451272DE
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 11:58:47 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id h2so2643452pll.11
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 04:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C16XrUr3EIZoC6wKnJOdQjSS5HIA0XhjmNmgGMQUzM4=;
 b=M6GmYwfbt/kjjUW6kp5B076qsmpCA6NAxj2aoMFmCLiqC6VWEhmwIkeTxTLjaR/BCj
 3iR9bU/ra3dayF4z0WUFKWnNJ5peBgsjjppx5Uk9CZaKeMVGwGVpJGo9b8hx0tklIqdu
 prMZsWNqmRo/buzmThYSm4iKEsbYTH/EZtJ7WczGcl/Rbqdn7UPUo/dpNf4L6mLygsoI
 rGIeSL0ftAreMCxlS4OTBU8g9V1P958rcn5Bg8W3DD2z4CqsAZ43pbSi/vsdJU024AUt
 yxjl+fh02KHA9q0MpzJx5O73kisLHCxKK5bf2Mj5mnAJW70PhVt7Yi1612Y5722HdrAp
 hw6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C16XrUr3EIZoC6wKnJOdQjSS5HIA0XhjmNmgGMQUzM4=;
 b=BuVB/xD3gk32d/WxoNUDU4WUC7UI/ShZK+EPR0bN1+h3eE+GQFeS+0xfXQ2CaJV0DR
 dxgjNdFhFi0LHKA1u04+wuIg4wtMRdimcEW+3U8cyxxQ0KkcYZHpJ5q3NPya3sS28Env
 fEs6b/uo2Mer2nTco6Vnit1MokY6ki2QyvnjXVCCNtA0aRNQEnsLVSQYXidatmRl5kJV
 e6hH6hNWOLXzQJFWG8qCfhpapcIBmPLFyXlrKd+Rn29OaxdZAuuQQIlhA6vpkA5dNyIO
 1Cf4pgVrv87xGJ07h3gVeFoaV/cp/Yd1w/2c7djh2kcxp8kexJY0+PgV5jGAi2ZZg3Mz
 HMug==
X-Gm-Message-State: AOAM530m2FspQhMyStGfsp6wlvI7xbAsSQiGjG1zLhMiLceq/BZ8FBz3
 2iOw04XAhLLX/n1VknxoZnJ6oYZfZfDyQyxy
X-Google-Smtp-Source: ABdhPJxBYQscTqQs3Usj08yzGOuKS+2JWwobVnEXIACwojWNpwWI5RwwKY4148y1cdC1Hg6PHssNQg==
X-Received: by 2002:a17:902:aa04:b029:d3:8b4e:e5ef with SMTP id
 be4-20020a170902aa04b02900d38b4ee5efmr7380941plb.65.1602158327213; 
 Thu, 08 Oct 2020 04:58:47 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id 31sm7027555pgs.59.2020.10.08.04.58.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 04:58:46 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v1 6/6] staging: qlge: add documentation for debugging qlge
Date: Thu,  8 Oct 2020 19:58:08 +0800
Message-Id: <20201008115808.91850-7-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201008115808.91850-1-coiby.xu@gmail.com>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "open list:NETWORKING \[GENERAL\]" <netdev@vger.kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instructions and examples on kernel data structures dumping and coredump.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 .../networking/device_drivers/index.rst       |   1 +
 .../device_drivers/qlogic/index.rst           |  18 +++
 .../networking/device_drivers/qlogic/qlge.rst | 118 ++++++++++++++++++
 MAINTAINERS                                   |   6 +
 4 files changed, 143 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/qlogic/index.rst
 create mode 100644 Documentation/networking/device_drivers/qlogic/qlge.rst

diff --git a/Documentation/networking/device_drivers/index.rst b/Documentation/networking/device_drivers/index.rst
index a3113ffd7a16..d8279de7bf25 100644
--- a/Documentation/networking/device_drivers/index.rst
+++ b/Documentation/networking/device_drivers/index.rst
@@ -15,6 +15,7 @@ Contents:
    ethernet/index
    fddi/index
    hamradio/index
+   qlogic/index
    wan/index
    wifi/index
 
diff --git a/Documentation/networking/device_drivers/qlogic/index.rst b/Documentation/networking/device_drivers/qlogic/index.rst
new file mode 100644
index 000000000000..ad05b04286e4
--- /dev/null
+++ b/Documentation/networking/device_drivers/qlogic/index.rst
@@ -0,0 +1,18 @@
+.. SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+
+QLogic QLGE Device Drivers
+===============================================
+
+Contents:
+
+.. toctree::
+   :maxdepth: 2
+
+   qlge
+
+.. only::  subproject and html
+
+   Indices
+   =======
+
+   * :ref:`genindex`
diff --git a/Documentation/networking/device_drivers/qlogic/qlge.rst b/Documentation/networking/device_drivers/qlogic/qlge.rst
new file mode 100644
index 000000000000..0b888253d152
--- /dev/null
+++ b/Documentation/networking/device_drivers/qlogic/qlge.rst
@@ -0,0 +1,118 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=======================================
+QLogic QLGE 10Gb Ethernet device driver
+=======================================
+
+This driver use drgn and devlink for debugging.
+
+Dump kernel data structures in drgn
+-----------------------------------
+
+To dump kernel data structures, the following Python script can be used
+in drgn:
+
+.. code-block:: python
+
+	def align(x, a):
+	    """the alignment a should be a power of 2
+	    """
+	    mask = a - 1
+	    return (x+ mask) & ~mask
+
+	def struct_size(struct_type):
+	    struct_str = "struct {}".format(struct_type)
+	    return sizeof(Object(prog, struct_str, address=0x0))
+
+	def netdev_priv(netdevice):
+	    NETDEV_ALIGN = 32
+	    return netdevice.value_() + align(struct_size("net_device"), NETDEV_ALIGN)
+
+	name = 'xxx'
+	qlge_device = None
+	netdevices = prog['init_net'].dev_base_head.address_of_()
+	for netdevice in list_for_each_entry("struct net_device", netdevices, "dev_list"):
+	    if netdevice.name.string_().decode('ascii') == name:
+	        print(netdevice.name)
+
+	ql_adapter = Object(prog, "struct ql_adapter", address=netdev_priv(qlge_device))
+
+The struct ql_adapter will be printed in drgn as follows,
+
+    >>> ql_adapter
+    (struct ql_adapter){
+            .ricb = (struct ricb){
+                    .base_cq = (u8)0,
+                    .flags = (u8)120,
+                    .mask = (__le16)26637,
+                    .hash_cq_id = (u8 [1024]){ 172, 142, 255, 255 },
+                    .ipv6_hash_key = (__le32 [10]){},
+                    .ipv4_hash_key = (__le32 [4]){},
+            },
+            .flags = (unsigned long)0,
+            .wol = (u32)0,
+            .nic_stats = (struct nic_stats){
+                    .tx_pkts = (u64)0,
+                    .tx_bytes = (u64)0,
+                    .tx_mcast_pkts = (u64)0,
+                    .tx_bcast_pkts = (u64)0,
+                    .tx_ucast_pkts = (u64)0,
+                    .tx_ctl_pkts = (u64)0,
+                    .tx_pause_pkts = (u64)0,
+                    ...
+            },
+            .active_vlans = (unsigned long [64]){
+                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52780853100545, 18446744073709551615,
+                    18446619461681283072, 0, 42949673024, 2147483647,
+            },
+            .rx_ring = (struct rx_ring [17]){
+                    {
+                            .cqicb = (struct cqicb){
+                                    .msix_vect = (u8)0,
+                                    .reserved1 = (u8)0,
+                                    .reserved2 = (u8)0,
+                                    .flags = (u8)0,
+                                    .len = (__le16)0,
+                                    .rid = (__le16)0,
+                                    ...
+                            },
+                            .cq_base = (void *)0x0,
+                            .cq_base_dma = (dma_addr_t)0,
+                    }
+                    ...
+            }
+    }
+
+coredump via devlink
+--------------------
+
+
+And the coredump obtained via devlink in json format looks like,
+
+.. code:: shell
+
+	$ devlink health dump show DEVICE reporter coredump -p -j
+	{
+	    "Core Registers": {
+	        "segment": 1,
+	        "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
+	    },
+	    "Test Logic Regs": {
+	        "segment": 2,
+	        "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
+	    },
+	    "RMII Registers": {
+	        "segment": 3,
+	        "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
+	    },
+	    ...
+	    "Sem Registers": {
+	        "segment": 50,
+	        "values": [ 0,0,0,0 ]
+	    }
+	}
+
+When the module parameter qlge_force_coredump is set to be true, the MPI
+RISC reset before coredumping. So coredumping will much longer since
+devlink tool has to wait for 5 secs for the resetting to be
+finished.
diff --git a/MAINTAINERS b/MAINTAINERS
index 9ecb727f0a8f..d482078e3e88 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14411,6 +14411,12 @@ L:	netdev@vger.kernel.org
 S:	Supported
 F:	drivers/staging/qlge/
 
+QLOGIC QLGE 10Gb ETHERNET DRIVER
+M:	Coiby Xu <coiby.xu@gmail.com>
+L:	netdev@vger.kernel.org
+S:	Maintained
+F:	Documentation/networking/device_drivers/qlogic/qlge.rst
+
 QM1D1B0004 MEDIA DRIVER
 M:	Akihiro Tsukada <tskd08@gmail.com>
 L:	linux-media@vger.kernel.org
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
