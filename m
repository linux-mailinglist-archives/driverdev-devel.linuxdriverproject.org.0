Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7F0215A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:50:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 501E6876F0;
	Fri, 17 May 2019 08:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vuO6R5RIbqUK; Fri, 17 May 2019 08:49:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A883C86767;
	Fri, 17 May 2019 08:49:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A34761BF327
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9FEC68832C
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WYF4oRn2-Gjh for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:49:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 97C9388329
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:49:53 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E71042082E;
 Fri, 17 May 2019 08:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558082993;
 bh=6jJFzutLeiniWUkeI1KxCgU/DU/9A4mDatcqQTHlOz8=;
 h=From:To:Cc:Subject:Date:From;
 b=cSG++z4NBKDIdrLl0/xJAc+v0gwLpil8sGjvVlAD12S/AMC9CgDRQO7e8EDh8/UQJ
 WGs6G4GEbojUi+QEKPH/X3BTIYEFJBUbtdRAdVrtuJ14x4aqiJwHF/w5STM71uWWMZ
 tKL+gyDvO338GnUz+8QzxZO3A0yNHVQhnVdHHts8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 00/10] staging: kpc2000: fix a bunch of orginization and
 header file issues
Date: Fri, 17 May 2019 10:49:34 +0200
Message-Id: <20190517084945.2810-1-gregkh@linuxfoundation.org>
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

Here's a short series of patches to fix up some header file issues in
the kpc2000 drivers, as well as move them from subdirectories for
individual files, to live in the "main" directory, saving some linking
and directory traversal steps in the build.

Greg Kroah-Hartman (10):
  staging: kpc2000: fix coding style in uapi.h
  staging: kpc2000: remove kp200_module.c file
  staging: kpc2000: remove fileops.c file.
  staging: kpc2000: remove lock_card/unlock_card functions
  staging: kpc2000: fix coding style in pcie.h
  staging: kpc2000: remove spi_parts.h
  staging: kpc2000: move the spi driver out of its subdirectory
  staging: kpc2000: move the i2c driver out of its subdirectory
  staging: kpc2000: dma_common_defs.h: remove unused inline functions
  staging: kpc2000: remove SetBackEndControl() function

 drivers/staging/kpc2000/Makefile              |   4 +-
 drivers/staging/kpc2000/kpc2000/Makefile      |   2 +-
 drivers/staging/kpc2000/kpc2000/cell_probe.c  |   4 +-
 drivers/staging/kpc2000/kpc2000/core.c        | 177 ++++++++++++++++--
 .../staging/kpc2000/kpc2000/dma_common_defs.h |  19 --
 drivers/staging/kpc2000/kpc2000/fileops.c     | 123 ------------
 .../staging/kpc2000/kpc2000/kp2000_module.c   |  54 ------
 drivers/staging/kpc2000/kpc2000/pcie.h        | 125 ++++++-------
 drivers/staging/kpc2000/kpc2000/uapi.h        |  22 +--
 .../{kpc_i2c/i2c_driver.c => kpc2000_i2c.c}   |   2 +-
 .../{kpc_spi/spi_driver.c => kpc2000_spi.c}   |  45 ++++-
 drivers/staging/kpc2000/kpc_i2c/Makefile      |   4 -
 drivers/staging/kpc2000/kpc_spi/Makefile      |   4 -
 drivers/staging/kpc2000/kpc_spi/spi_parts.h   |  48 -----
 14 files changed, 277 insertions(+), 356 deletions(-)
 delete mode 100644 drivers/staging/kpc2000/kpc2000/fileops.c
 delete mode 100644 drivers/staging/kpc2000/kpc2000/kp2000_module.c
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
