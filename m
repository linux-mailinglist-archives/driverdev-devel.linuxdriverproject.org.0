Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CCF30149D
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Jan 2021 11:47:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAB6A87432;
	Sat, 23 Jan 2021 10:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uVfhO282KJqS; Sat, 23 Jan 2021 10:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 375A8873BE;
	Sat, 23 Jan 2021 10:47:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5EE81BF3BE
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF88687404
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02Qv23Xm39QJ for <devel@linuxdriverproject.org>;
 Sat, 23 Jan 2021 10:47:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C71C387401
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 10:47:19 +0000 (UTC)
Received: by mail-pf1-f169.google.com with SMTP id 11so5495684pfu.4
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 02:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qBbuWWuvn/SG2w43vbI4VPqGlPTRg3jqDlvja9eltTs=;
 b=S6QzKFI0ju282I9hPcwJFwav3mGuMy6pQ+qAxMSTLYAUWPWFwrN4JvfDIq1ce6qBVY
 3KKiSezNyY+5LN5h1frn/jQgR7smKbdH1pAlSQoYcKLTRbP0OowLeQKFwV975yNdzDTY
 WzS8aL+sWU9md0CO+0q+tXErE7ln2DJc0vP71v6k1lhjvZL9/qcafjWsel5xD76d10Tz
 k3r5RbqMWYy/jqeDH85l5LpFmNwbWa2sQdRu4X+IPtGane7QctN82Nq679PFJb1CAhLQ
 xcUueitVOGF0PmxdtfYY4EwAGgfjq4GC9afUEC2r9OYIo+gziCumnzqSxbZ4zrWgtDje
 Ciug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qBbuWWuvn/SG2w43vbI4VPqGlPTRg3jqDlvja9eltTs=;
 b=GwPKJvOMMR/pjg0IkG4pmN5Em1EEWKU/D/fPqPAgI7Dz4X7kATkOZ077jMa9duZT6Y
 /SV9NBh8wHHmm810vx+4TXdo+cAuIk0UTEHF3pfJUWBSs56xUGXvqEvbFmo3p0dLkm+3
 seIOfSupZJnG1oJ01tZGGU6trbNBYNVLYdCwVPff08sveh0wTm5+iwJ2gOBSq6B/5LMm
 +g+kSxHGtafUWOhRtEnY4ixYxL03RFdBhXO3BZuPtxsMiXr1At9o1UP1OzBSi/8WqY+G
 dxL0lSMnNYKTJAHGD1x6lju3zfgQvLFkhDqXuusGsV97L6ThmwbBVJOIMmdQYGfcHR+7
 AlLA==
X-Gm-Message-State: AOAM5312KjYZlvXS/fkLVfR5bnt+6Th9DJ12nUPWQhNKlGPZ5Wuv+/iH
 X0npPYzdHeDgpZnwEVxue9gj/YZe6hBtd71Y
X-Google-Smtp-Source: ABdhPJw6Z8JTi/+AeY7zYtjKUoE2tmR12os+pkrUF8O/m8TRLSNRv7rsxrB0hdoSBjr8Qgv+EhdQ/w==
X-Received: by 2002:a62:8c85:0:b029:1bd:5441:6cb8 with SMTP id
 m127-20020a628c850000b02901bd54416cb8mr1423072pfd.29.1611398838973; 
 Sat, 23 Jan 2021 02:47:18 -0800 (PST)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id k5sm6334035pfi.31.2021.01.23.02.47.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Jan 2021 02:47:18 -0800 (PST)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v4 8/8] staging: qlge: add documentation for debugging qlge
Date: Sat, 23 Jan 2021 18:46:13 +0800
Message-Id: <20210123104613.38359-9-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210123104613.38359-1-coiby.xu@gmail.com>
References: <20210123104613.38359-1-coiby.xu@gmail.com>
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 GR-Linux-NIC-Dev@marvell.com, Jonathan Corbet <corbet@lwn.net>,
 "open list:NETWORKING \[GENERAL\]" <netdev@vger.kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instructions and examples on kernel data structures dumping and
coredump.

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
index 79b400c97059..b8ab9340670b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14606,6 +14606,12 @@ L:	netdev@vger.kernel.org
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
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
