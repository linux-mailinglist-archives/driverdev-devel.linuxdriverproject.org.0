Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A73A290478
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 13:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E93088C78;
	Fri, 16 Oct 2020 11:56:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yR9Rs1+ZiFrH; Fri, 16 Oct 2020 11:56:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFD4688C22;
	Fri, 16 Oct 2020 11:56:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 914A81BF3EF
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 11:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8D99888C35
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 11:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4uJ-jlIygmjh for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 11:56:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ACFDA88C22
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 11:56:28 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id y14so1292310pgf.12
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 04:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9hLdx/TnVP/mD9gbG7OtHnTOdENtQTbT+ieyQgOA9zc=;
 b=tBJksPk7NYgg/AFKV4S9c0JGHPVpn2NWjcyXhPDCIxC0M490qTgQA8wHuYzkI6FEWi
 6hidJouFzy79caT3r5vymN3MfbPGsz/upx11RfbC2ASb99IeVQn3Ya0+x0odV+uBDiWJ
 egZ8Tg5X7ZpZOMD4FKYz12UFnnDirxC8WHypoB6kLTdRShtGy5FD2IGaSvvw5imgJgIs
 ai/wJ/xSU3Url28/TnQKM+KxvAk+Z2jo0qVOHxBXHVD9xNDvTfVBORcCuM4TvvkFiD+H
 CU+xiIUl7tWZCpv8BskwuPnrIfeuJ/O/pi4sSn8NJNp6p1q22q6k7BPUMsN679zWusQ+
 8Wow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9hLdx/TnVP/mD9gbG7OtHnTOdENtQTbT+ieyQgOA9zc=;
 b=chBPiDDEm3Pp5hVmIXKlaCGC/6//QBk0fm0zdvw457a2DUdMCxGjtLRlTeefHytvrg
 DZBUz2YHmtufpNmNxEqSAXqZE0e/a3inH/yhsLbiI+QfSMjhrYj2poe+PC03QFqLwb4v
 U6Qu+eUZ2oXa5Pg4pI1qjeUCwSISTudotOCymBwpTZNj1V2CDHrbctnODmqiVxQzRIdG
 c253FG8WufETFUAJVEyImZeZBERhrGjTbD/MxWgdxJ5+0Z6IsPq0mCiPluwaRCTYsu1q
 OyCw1NeuLMLlQsQUWnWmxRLMuBsCIFqaWqnYIM0Uub9Ma0oZhWAB0uRg2vykEvFQAKqL
 rLSw==
X-Gm-Message-State: AOAM530aCffRav+MEom61ZCGO8E6OJW0HQvFCnu/Nd4V0sOf3En23YIp
 BDgfdAkNgy9qWGPUAEgX++gw1CgyNQee6A==
X-Google-Smtp-Source: ABdhPJy9DcD9sFv+20n/YDE+Jgi7wvajoHR8baixc4kHfnYucAjJ8YWq7A7X1yvGa1T8vQqgSukaKQ==
X-Received: by 2002:a62:7b4a:0:b029:152:4310:a909 with SMTP id
 w71-20020a627b4a0000b02901524310a909mr3191211pfc.37.1602849387983; 
 Fri, 16 Oct 2020 04:56:27 -0700 (PDT)
Received: from localhost ([160.16.113.140])
 by smtp.gmail.com with ESMTPSA id l18sm2651955pfd.210.2020.10.16.04.56.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 04:56:27 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v3 0/8] staging: qlge: Re-writing the debugging features
Date: Fri, 16 Oct 2020 19:53:59 +0800
Message-Id: <20201016115407.170821-1-coiby.xu@gmail.com>
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

For the usage examples of supported devlink commands, please check the
last patch.

[1] https://lkml.org/lkml/2020/6/30/19

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
 drivers/staging/qlge/qlge_devlink.c           |  156 ++
 drivers/staging/qlge/qlge_devlink.h           |    9 +
 drivers/staging/qlge/qlge_ethtool.c           |  234 ++-
 drivers/staging/qlge/qlge_main.c              | 1375 +++++++-------
 drivers/staging/qlge/qlge_mpi.c               |  356 ++--
 14 files changed, 1866 insertions(+), 2314 deletions(-)
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
