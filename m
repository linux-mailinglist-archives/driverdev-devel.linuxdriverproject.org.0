Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F23301498
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Jan 2021 11:46:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A44587417;
	Sat, 23 Jan 2021 10:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zu7w3BxuaMvN; Sat, 23 Jan 2021 10:46:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB03F87401;
	Sat, 23 Jan 2021 10:46:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81AD01BF3BE
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70A8F20366
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5FLYT0ilz5Z8 for <devel@linuxdriverproject.org>;
 Sat, 23 Jan 2021 10:46:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B03920348
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 10:46:20 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id p15so5391110pjv.3
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 02:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DUecRvhnwPFIssfFCh3haChT3rHPkZ2qo9gxfjJHSOg=;
 b=tqCVclCRHlBUwpzf4wC8ZEjPESKXt7lIK47g6nW+/swDaqzbdPFS7z5sROGDjnOl+F
 jYB0YGLjNyP99FQ8x0HFjwg4qGtyP/uiFPT2Vdh5UpOx+D5C+g2Ai5FuEcPsN+rGCAuZ
 BJjMATMff+jFUKCyk3Mh24cH8FWAdW8sh8RFn36D1yCsGYpJtcOfbJ0XyAuqINoLYqtP
 1gCavmYTx/8mIgl4COXZfNsz67cGZL8UT42eTgmnySD5HOS8Yd1ku8MnMPH7UBbMwyjd
 SHKT+YLcHQcOAO3dpHYBTtDHX403kT/6nLW/0PCjpgcHzw/6NIXYTb4IZBxwIlUaDx8X
 TGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DUecRvhnwPFIssfFCh3haChT3rHPkZ2qo9gxfjJHSOg=;
 b=B/8RHqK5VPv9Z5xSPMO7IiRx+lKJLOOC4trrFIdIdO+/3cOdQGKDC56y7pzNC+Ig0h
 NuoFX2rj14batCNwtcfjcUA6T48SQJ7G7u6cC8GOa5a8wIQ5bCYIwn1U1fjFgTxyif5r
 AiYmWoj7y93F+tKjRj7eBDaoN5DaTgOP/n3j7/wQlUNEudBx/4UIZ7244l3XylZglVTT
 DhqW6m5zYu257aKTJO5GUL/tnLAKCv4M9sCHMDI3VbhPtOl/P3Q9WwNkAe0hGjyfc9m8
 icIE05MDffEgzgH0WdhgqBlGEPfxtRxxmI23j98SV97WT4LvRPCd5BZy6R0h1XaCkUqG
 Xk/w==
X-Gm-Message-State: AOAM5339xkCqYKe6q4pdrOWtfdhFvM8Vo4Mlv5mYoRl4a64G3VIoc97K
 wzK9U3EOvOvMSpONrAP7TH2Q7VbvM4MgAA==
X-Google-Smtp-Source: ABdhPJxuhF4Bml5nQkRtSXMe1nzeFxysCKhlllrMiIOuMF2SEearIdtrjEjYSsovB0+RovAyWaZlPQ==
X-Received: by 2002:a17:903:22c2:b029:dd:f952:e341 with SMTP id
 y2-20020a17090322c2b02900ddf952e341mr260219plg.67.1611398779252; 
 Sat, 23 Jan 2021 02:46:19 -0800 (PST)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id v9sm8401653pfm.80.2021.01.23.02.46.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Jan 2021 02:46:18 -0800 (PST)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v4 0/8] staging: qlge: Re-writing the debugging features
Date: Sat, 23 Jan 2021 18:46:05 +0800
Message-Id: <20210123104613.38359-1-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: Benjamin Poirier <benjamin.poirier@gmail.com>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 GR-Linux-NIC-Dev@marvell.com, Shung-Hsi Yu <shung-hsi.yu@suse.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set aims to avoid dumping registers, data structures and
coredump to dmesg and also to reduce the code size of the qlge driver.

As pointed out by Benjamin [1],

> At 2000 lines, qlge_dbg.c alone is larger than some entire ethernet
> drivers. Most of what it does is dump kernel data structures or pci
> memory mapped registers to dmesg. There are better facilities for that.
> My thinking is not simply to delete qlge_dbg.c but to replace it, making
> sure that most of the same information is still available. For data
> structures, crash or drgn can be used; possibly with a script for the
> latter which formats the data. For pci registers, they should be
> included in the ethtool register dump and a patch added to ethtool to
> pretty print them. That's what other drivers like e1000e do. For the
> "coredump", devlink health can be used.

So the debugging features are re-written following Benjamin's advice,
   - dump kernel data structures in drgn
   - use devlink to do coredump which also includes device status and
     general registers

For the usage examples of supported devlink commands, please check the
last patch.

The tests have been done successfully following Shung-Hsi's steps[2] on
a machine from Red Hat,
     - build the kernel and this driver with KASAN, UBSAN, DEBUG_ATOMIC_SLEEP,
       PROVE_LOCKING and DEBUG_KMEMLEAK enabled
     - load and unload the driver
     - devlink health dump

[1] https://lkml.org/lkml/2020/6/30/19

[2] https://lore.kernel.org/netdev/20200816025717.GA28176@f3/T/

v3 -> v4
 - remove unnecessary memeset in qlge_init_device [Shung-Hsi Yu]
 - Call qlge_soft_reset_mpi_risc after getting coredump
 - only allow force_coredump for NIC function that owns the firmware

v2 -> v3
- Fix newly introduced resource leak [Dan Carpenter]
- Fix bugs after using struct qlge_adapter as the private data struct of devlink
- Add qlge_ prefix for structures not having a prefix and fix a left-over ql_adapter [Benjamin Poirier]

v1 -> v2
 - Call devlink_free when register_netdev fails [Willem de Bruijn]
 - "scripts/checkpatch.pl --strict" for changes [Dan Carpente]
 - Declares variables in "Reverse Christmas Tree" [Dan Carpente]
 - Use the sizeof() directly  [Dan Carpente]
 - Add SPDX-License-Identifier to qlge_devlink.{c,h}
 - Rename ql_* to qlge_* [Benjamin Poirier]
 - Update drivers/staging/qlge/TODO [Benjamin Poirier]
 - struct qlge_adapter is now used as the private data struct of
   devlink instead of net_device [Benjamin Poirier]

RFC -> v1
 - select NET_DEVLINK in Kconfig [Benjamin Poirier]
 - Don't do a coredump when the interface is down [Shung-Hsi Yu]
 - Remove stray newlines [Benjamin Poirier]
 - force_coredump for devlink
 - Remove mpi_core_to_log which will output the coredump to the kernel
   ring buffer
 - Put drgn script under Documentation [Benjamin Poirier]
 - Rename qlge_health.* to qlge_devlink.*

Coiby Xu (8):
  staging: qlge: use qlge_* prefix to avoid namespace clashes with other
    qlogic drivers
  staging: qlge: Initialize devlink health dump framework
  staging: qlge: re-write qlge_init_device
  staging: qlge: coredump via devlink health reporter
  staging: qlge: support force_coredump option for devlink health dump
  staging: qlge: remove mpi_core_to_log which sends coredump to the
    kernel ring buffer
  staging: qlge: clean up debugging code in the QL_ALL_DUMP ifdef land
  staging: qlge: add documentation for debugging qlge

 .../networking/device_drivers/index.rst       |    1 +
 .../device_drivers/qlogic/index.rst           |   18 +
 .../networking/device_drivers/qlogic/qlge.rst |  118 ++
 MAINTAINERS                                   |    6 +
 drivers/staging/qlge/Kconfig                  |    1 +
 drivers/staging/qlge/Makefile                 |    2 +-
 drivers/staging/qlge/TODO                     |   10 -
 drivers/staging/qlge/qlge.h                   |  244 +--
 drivers/staging/qlge/qlge_dbg.c               | 1650 +++++------------
 drivers/staging/qlge/qlge_devlink.c           |  164 ++
 drivers/staging/qlge/qlge_devlink.h           |    9 +
 drivers/staging/qlge/qlge_ethtool.c           |  233 ++-
 drivers/staging/qlge/qlge_main.c              | 1376 +++++++-------
 drivers/staging/qlge/qlge_mpi.c               |  356 ++--
 14 files changed, 1873 insertions(+), 2315 deletions(-)
 create mode 100644 Documentation/networking/device_drivers/qlogic/index.rst
 create mode 100644 Documentation/networking/device_drivers/qlogic/qlge.rst
 create mode 100644 drivers/staging/qlge/qlge_devlink.c
 create mode 100644 drivers/staging/qlge/qlge_devlink.h

--
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
