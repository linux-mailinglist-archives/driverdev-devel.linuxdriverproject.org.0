Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E66528DF29
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 12:43:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E82187B70;
	Wed, 14 Oct 2020 10:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r0fIQc9hUj0h; Wed, 14 Oct 2020 10:43:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFD1587B6A;
	Wed, 14 Oct 2020 10:43:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B7A11BF575
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:43:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB867874BB
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1D8TZod9yowN for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 10:43:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F135A874B6
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 10:43:17 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id h4so1431934pjk.0
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 03:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TLlS80C3+IxXz+Inv9FiSZ2p7DJpQkNfvWuR9ezYtIU=;
 b=fMuOhrH0AccXWVujZxlpWdXwZsc/c8buUEDYDG4ZLPMtl/Oe6xCGGnBWeM0MYWNXoq
 Ip/JbZlKTQyG3McaSoIU9pEkmYeEtm0xWa6sJXII2YTdg8FufSi0NEVlJCTs1SNhwF3j
 j2nkWKrypQoE+na4fD87RkjJypFZAP1VxDBhEGhotK0aOSmrcDfpWpyn7uI70AXbRvGk
 bauqaxZu9eUulIv9nwBGY3vA+UDnqrWJ79Jxl2ITeEnJtSGFU6FT4jguBnEtcWX6fLaY
 1droOycAhxMg5QEO+8Vl/ZsHrnGdELdptvJQ9IDmZiKECOCCSNZsVUUJQqZ0fpMHrTip
 dCPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TLlS80C3+IxXz+Inv9FiSZ2p7DJpQkNfvWuR9ezYtIU=;
 b=bB4/EZRY6Alg8KISSk0j6HfVGsU2J2yG7qq8r3Cf1j06G6Yk1OGH4E/GKLyX+g5oCg
 MP4Xk8ibnUHZIuzdn8Pt5cyvXpZB28kM05oq+/8ufPcn2PeSi4sSTvff9s81xRKMxWty
 OB8ciJIm6MSxZOR9aXKdnbfBMMC5V4DY5PLVVcbyXOs6ZjZsWBK+PqTyYlaRp9gD0YcI
 Lds3pasOx6/vzqxTg6IVxfUEPlYamq3xSMBXCn/K8EN2px/a+47B5bnQJAL0Q2tYoAwm
 7JXKEbBh0DimSUWTNCKntI46j8AB083adCkFqHgULzAaV1zbFRJNkWd3oomd7+9UqzZ0
 Itqw==
X-Gm-Message-State: AOAM5322TWKrbj87fouHwKIUG1sNI02LwV4E7z8zNev+rjVK0CusopUS
 hHN873OBYe6ZGmutd5kYdsGWdPlHB3wj6VHq
X-Google-Smtp-Source: ABdhPJx3SVxvRPT+7/Bjix7zziN668MSxpKiyLkWZpIHRVgqTjyAV6TRQBWL0TSZhaq3tRe8HAdSbg==
X-Received: by 2002:a17:90b:1496:: with SMTP id
 js22mr2973264pjb.20.1602672197276; 
 Wed, 14 Oct 2020 03:43:17 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id gd14sm2700856pjb.31.2020.10.14.03.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 03:43:16 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 0/7] staging: qlge: Re-writing the debugging features
Date: Wed, 14 Oct 2020 18:42:59 +0800
Message-Id: <20201014104306.63756-1-coiby.xu@gmail.com>
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
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, Dan Carpenter <dan.carpenter@oracle.com>
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

Coiby Xu (7):
  staging: qlge: replace ql_* with qlge_* to avoid namespace clashes
    with other qlogic drivers
  staging: qlge: Initialize devlink health dump framework
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
 drivers/staging/qlge/qlge.h                   |  216 +--
 drivers/staging/qlge/qlge_dbg.c               | 1650 +++++------------
 drivers/staging/qlge/qlge_devlink.c           |  156 ++
 drivers/staging/qlge/qlge_devlink.h           |    9 +
 drivers/staging/qlge/qlge_ethtool.c           |  234 ++-
 drivers/staging/qlge/qlge_main.c              | 1302 ++++++-------
 drivers/staging/qlge/qlge_mpi.c               |  356 ++--
 14 files changed, 1802 insertions(+), 2277 deletions(-)
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
