Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3632873AB
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 13:58:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F2E786C9D;
	Thu,  8 Oct 2020 11:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PSKtRy6VOBo7; Thu,  8 Oct 2020 11:58:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75ECC86C8F;
	Thu,  8 Oct 2020 11:58:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 104961BF4D5
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DCF7E272DE
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZgdrgUVYqOha for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 11:58:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BC1E720414
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 11:58:17 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id r21so732999pgj.5
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 04:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VvcnSc1DqMYjLEjoaavtmK8GL39gy+fpkbY+Z2S7vvk=;
 b=AmAzk9nCYrg4Au/9/ldFB6Wh8hqGW3mMMoXNx+MvFXW2gBCi6D9E1bBDsx7Xvr0GAX
 5v4LrfhDQQQiZuzvYqgPCgCFzAXCgGey4CuA2XYnL+LPPvDccKCAiCl/MJmJSbCeBWcL
 7Jm4Vi+Pd/aDyLhPnubfcSPOZLs5hyX+T4gf5ms2LaJqsPoeBqjmxz9yO4QwHeMTOxYk
 bHXikeX2YsJYF5hjouFq7d/iw5JwebklXVex7fOJNXaBufR+/jy+ZcEkyBhqE74oRM4R
 y9vVz/TdKa/unXWRsrDZLT7AJ3drEDRLI7aJXDRjLE0tpIVunqJTPIYyjspciiTrd5QA
 zbnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VvcnSc1DqMYjLEjoaavtmK8GL39gy+fpkbY+Z2S7vvk=;
 b=l5Oz4QnH4QvXnhpRpo1yW3SqcLKfVkdF1eZGlILVKPr6Y/diFC7GGuNkyPxpAP3wct
 1K03GpukoscGCwsTbusNzKriY8KAS5EETNlf7jzEF3IBSl0gZjehSJzifUYRY1noJ3Ic
 OkCxlyIUnCeC9+LrMwksAEp+GZrUyocMUCffx+coNuFyo3w/BUx+HAYlIN7ZE7c8ESHM
 8LNWdH9Fv9nt5ZG2zgkVrfQaIGK7Bh663/6PbRcdM6RdZ6HEd8yKSC1Yq95S7IZwDXw+
 HC+ZLh9XVbQdWRDQO0tYpngq6kRP/DqOvhnGIwKnrCOOIsi5G4LY2vfNv24ejXY3mXwP
 rXSw==
X-Gm-Message-State: AOAM533ggHNl9NJkRJ9dygwR8nLMoK9Xig59mjWzM3MIGr8wSCC5ohbq
 d0m9BPwBoH7/IWiqZX8ZVIJDFJpu83+KSQ==
X-Google-Smtp-Source: ABdhPJwojrCyPpcv7p7mFZJrdZYt4bb3JVERNrttTO1dQksidIwrGpQx6oe/7KpC+HMffR5pdIGcuA==
X-Received: by 2002:a65:584a:: with SMTP id s10mr6848008pgr.89.1602158296766; 
 Thu, 08 Oct 2020 04:58:16 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id q8sm7145102pff.18.2020.10.08.04.58.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 04:58:15 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v1 0/6] staging: qlge: Re-writing the debugging features
Date: Thu,  8 Oct 2020 19:58:02 +0800
Message-Id: <20201008115808.91850-1-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
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
 Shung-Hsi Yu <shung-hsi.yu@suse.com>
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

[1] https://lkml.org/lkml/2020/6/30/19

Change since RFC:
 - select NET_DEVLINK in Kconfig [Benjamin Poirier]
 - Don't do a coredump when the interface is down [Shung-Hsi Yu]
 - Remove stray newlines [Benjamin Poirier]
 - force_coredump for devlink
 - Remove mpi_core_to_log which will output the coredump to the kernel
   ring buffer
 - Put drgn script under Documentation [Benjamin Poirier]
 - Rename qlge_health.* to qlge_devlink.*

Coiby Xu (6):
  staging: qlge: Initialize devlink health dump framework for the dlge
    driver
  staging: qlge: coredump via devlink health reporter
  staging: qlge: support force_coredump option for devlink health dump
  staging: qlge: remove mpi_core_to_log which sends coredump to the
    kernel ring buffer
  staging: qlge: clean up debugging code in the QL_ALL_DUMP ifdef land
  staging: qlge: add documentation for debugging qlge

 .../networking/device_drivers/index.rst       |   1 +
 .../device_drivers/qlogic/index.rst           |  18 +
 .../networking/device_drivers/qlogic/qlge.rst | 118 +++
 MAINTAINERS                                   |   6 +
 drivers/staging/qlge/Kconfig                  |   1 +
 drivers/staging/qlge/Makefile                 |   2 +-
 drivers/staging/qlge/qlge.h                   |  94 +--
 drivers/staging/qlge/qlge_dbg.c               | 699 ------------------
 drivers/staging/qlge/qlge_devlink.c           | 164 ++++
 drivers/staging/qlge/qlge_devlink.h           |   8 +
 drivers/staging/qlge/qlge_ethtool.c           |   3 -
 drivers/staging/qlge/qlge_main.c              |  37 +-
 drivers/staging/qlge/qlge_mpi.c               |   6 -
 13 files changed, 355 insertions(+), 802 deletions(-)
 create mode 100644 Documentation/networking/device_drivers/qlogic/index.rst
 create mode 100644 Documentation/networking/device_drivers/qlogic/qlge.rst
 create mode 100644 drivers/staging/qlge/qlge_devlink.c
 create mode 100644 drivers/staging/qlge/qlge_devlink.h

--
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
