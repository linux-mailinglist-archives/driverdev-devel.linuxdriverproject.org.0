Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 772AC28DF39
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 12:44:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC5E787FCF;
	Wed, 14 Oct 2020 10:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AyKdcPArBJd0; Wed, 14 Oct 2020 10:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C910587FBB;
	Wed, 14 Oct 2020 10:43:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B31841BF575
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFFCE874E2
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9RNBkQayI+9v for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 10:43:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D8D1787FA5
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 10:43:53 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id j8so1416536pjy.5
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 03:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W3D78JnB3JWvtlnY5Ql/e6WWsfNU7jwi9/AJtLMFZTY=;
 b=KapgrmEA/WHaS+v61nXXg+l4GfVSXCqX2Ug4wCHwGwPhucq6YR0P/xSpRHiqE1PCyu
 +PUTqZZwZZa1BXHCtcfw8trIw2476f8furqXqjE5liY/cKGJ7kl9q6l1+oV/One3NXUS
 uDapod6D+kFWsOGSSxPI9jPazns3y13nJCQb5XY1cGZqpqRrGvrgYK3dUtFVfeb2ShxV
 ftPdiXm+/cIuUL0mUDGS77D7XbIWSynYSg7KLfuw1QaslfKEmSYwoQUjM4kTGMKXAZGK
 xepG2P1DqNKNjbUlFBPq5gtGhORIEIt0LbrnCLCLfCVB+eT/GL6tCewXXGIDMfz7f/2O
 l6zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W3D78JnB3JWvtlnY5Ql/e6WWsfNU7jwi9/AJtLMFZTY=;
 b=EMG/1irCJc2KM38MDbM9dJ4vo4reJXG9Ve/RToTIIE48+i8Hbm8fvru40yt4ORmeg3
 +MVImoRrUfFHu/2dzEuI6WyfOHk+qB1Dco8Gg+mtjdpbrDblV5JtnZ9U++DkR0VYLE1V
 ufun1pWa+0pyXbsBoMR30MBeUnS+lLX52zFqVlRKBZWvv3ZQtNduKNOXGP9S55fO+xG3
 rLF0hZ77XcsjPIepHus15b73vnfTcS19iqqq1vCWZLS3+OVKfQhczh3YXr8cQQMMmN0l
 +ApVX04QFM8uHiJcGxnbxu7sR/GhUUD3Ue3eDCyv4SNBjBxgjMLDU89PT7552NVBw8Va
 6Hcw==
X-Gm-Message-State: AOAM533TIaTYDpX7Uu3B2VcG6rNi6BptvcJ0y8+rlhak5l3kSZoMRVzp
 jTs6WIVBH6p8aPTeGHLPmWJjkdTT2AhrKk1w
X-Google-Smtp-Source: ABdhPJw7jmQdaX7le3EDyRuKq9wreKdZDW3zZ7R69YsvFSt7oSLtjF+GN5ZoZvGZXMdOgFowRJ5D6w==
X-Received: by 2002:a17:902:b60f:b029:d3:df34:31e6 with SMTP id
 b15-20020a170902b60fb02900d3df3431e6mr3568673pls.59.1602672233172; 
 Wed, 14 Oct 2020 03:43:53 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id i126sm2932209pfc.48.2020.10.14.03.43.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 03:43:52 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 7/7] staging: qlge: add documentation for debugging qlge
Date: Wed, 14 Oct 2020 18:43:06 +0800
Message-Id: <20201014104306.63756-8-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104306.63756-1-coiby.xu@gmail.com>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
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
 Jonathan Corbet <corbet@lwn.net>,
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
index 05d9b8c00eed..1def89b15913 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14413,6 +14413,12 @@ L:	netdev@vger.kernel.org
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
