Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A4B22F2D
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A29A854C0;
	Mon, 20 May 2019 08:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qAEqFk3F6cWW; Mon, 20 May 2019 08:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BDB58527D;
	Mon, 20 May 2019 08:47:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D771B1BF83A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:47:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D45A38528B
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMiKQQVAOqeu for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:47:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F7568527D
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:47:24 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73DD6206BA;
 Mon, 20 May 2019 08:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342043;
 bh=yXYoy7XmLbyvweKTqswcGJIpJCuyytcq+G2zpsUpj70=;
 h=From:To:Cc:Subject:Date:From;
 b=meC3Pq94MlQ4/WSbRtItu5fmdqEVY/PntqK4dKK6Sh/8qcMmD5mHr/jl6QlvS3RaU
 2iudaYjYOcPvdmVGcB8v2cCpQpxA07+YFbKyrCSc2No0sjdJvmRQSPq2WRoNRBXTmh
 cHkZVtk/4hVqcoSahamCS1FhPPzEKrdhGT8nFq0o=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 0/7] staging: kpc2000: fix a bunch of orginization and
 header file issues
Date: Mon, 20 May 2019 10:47:09 +0200
Message-Id: <20190520084716.28063-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Second try at some kpc2000 patches to clean up some header file issues
and move things around to make it a bit cleaner.
Some of the v1 series have already been applied to the tree, and this
series builds on some other patches that have also been merged from
other developers.

v2: fix build issues found by kbuild when removing the fileops.c file
    rebase on latest tree

Greg Kroah-Hartman (7):
  staging: kpc2000: remove fileops.c file.
  staging: kpc2000: fix coding style in pcie.h
  staging: kpc2000: remove spi_parts.h
  staging: kpc2000: move the spi driver out of its subdirectory
  staging: kpc2000: move the i2c driver out of its subdirectory
  staging: kpc2000: dma_common_defs.h: remove unused inline functions
  staging: kpc2000: remove SetBackEndControl() function

 drivers/staging/kpc2000/Makefile              |   4 +-
 drivers/staging/kpc2000/kpc2000/Makefile      |   2 +-
 drivers/staging/kpc2000/kpc2000/core.c        | 129 +++++++++++++++++-
 .../staging/kpc2000/kpc2000/dma_common_defs.h |  19 ---
 drivers/staging/kpc2000/kpc2000/fileops.c     | 123 -----------------
 drivers/staging/kpc2000/kpc2000/pcie.h        | 109 +++++++--------
 .../{kpc_i2c/i2c_driver.c => kpc2000_i2c.c}   |   2 +-
 .../{kpc_spi/spi_driver.c => kpc2000_spi.c}   |  45 +++++-
 drivers/staging/kpc2000/kpc_i2c/Makefile      |   4 -
 drivers/staging/kpc2000/kpc_spi/Makefile      |   4 -
 drivers/staging/kpc2000/kpc_spi/spi_parts.h   |  48 -------
 11 files changed, 223 insertions(+), 266 deletions(-)
 delete mode 100644 drivers/staging/kpc2000/kpc2000/fileops.c
 rename drivers/staging/kpc2000/{kpc_i2c/i2c_driver.c => kpc2000_i2c.c} (99%)
 rename drivers/staging/kpc2000/{kpc_spi/spi_driver.c => kpc2000_spi.c} (90%)
 delete mode 100644 drivers/staging/kpc2000/kpc_i2c/Makefile
 delete mode 100644 drivers/staging/kpc2000/kpc_spi/Makefile
 delete mode 100644 drivers/staging/kpc2000/kpc_spi/spi_parts.h

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
