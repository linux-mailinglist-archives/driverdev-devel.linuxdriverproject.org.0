Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A6112763E
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 08:08:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5E7A8881C;
	Fri, 20 Dec 2019 07:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6Ocp7WueFgu; Fri, 20 Dec 2019 07:08:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C01C88744;
	Fri, 20 Dec 2019 07:08:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60B6C1BF391
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 07:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D78B88761
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 07:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iBTQdbIU3HEk for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 07:08:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 846F288744
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 07:08:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE2C824679;
 Fri, 20 Dec 2019 07:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576825690;
 bh=ShcbXlpFdXilKh58f9Dmtn2A8cXnIYIsKLvamhRUsQU=;
 h=Date:From:To:Cc:Subject:From;
 b=X8932mrlA4KqrE33D0NO1+bWX1GSbKRYyA1kIi5eFcID5yezP95okCEruFFpKXfPW
 NpaYKFbxOS26/LKFNQXZnaxaPF7u6VQA83jjZHeEHqXN+wGrfs9GwyitsVX05R/Viq
 4su0K1aFz4ZBHtgplyhN/1VrfQWKdmVr6aj75mdY=
Date: Fri, 20 Dec 2019 08:08:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.5-rc3
Message-ID: <20191220070808.GA2190290@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@linuxdriverproject.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit d1eef1c619749b2a57e514a3fa67d9a516ffa919:

  Linux 5.5-rc2 (2019-12-15 15:16:08 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.5-rc3

for you to fetch changes up to c05c403b1d123031f86e65e867be2c2e9ee1e7e3:

  staging: wfx: fix wrong error message (2019-12-18 15:51:06 +0100)

----------------------------------------------------------------
Staging driver fixes for 5.5-rc3

Here are some small staging driver fixes for a number of reported
issues.

The majority here are some fixes for the wfx driver, but also in here is
a comedi driver fix found during some code review, and an axis-fifo
build dependancy issue to resolve some reported testing problems.

All of these have been in linux-next with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Brendan Higgins (1):
      staging: axis-fifo: add unspecified HAS_IOMEM dependency

Ian Abbott (1):
      staging: comedi: gsc_hpdi: check dma_alloc_coherent() return value

J=E9r=F4me Pouiller (10):
      staging: wfx: fix the cache of rate policies on interface reset
      staging: wfx: fix case of lack of tx_retry_policies
      staging: wfx: fix counter overflow
      staging: wfx: use boolean appropriately
      staging: wfx: firmware does not support more than 32 total retries
      staging: wfx: fix rate control handling
      staging: wfx: ensure that retry policy always fallbacks to MCS0 / 1Mb=
ps
      staging: wfx: detect race condition in WEP authentication
      staging: wfx: fix hif_set_mfp() with big endian hosts
      staging: wfx: fix wrong error message

 drivers/staging/axis-fifo/Kconfig         |  2 +-
 drivers/staging/comedi/drivers/gsc_hpdi.c | 10 +++++++++
 drivers/staging/wfx/data_tx.c             | 35 ++++++++++++++++++++++-----=
----
 drivers/staging/wfx/data_tx.h             |  5 +++--
 drivers/staging/wfx/hif_tx_mib.h          |  1 -
 drivers/staging/wfx/main.c                |  2 +-
 drivers/staging/wfx/queue.c               |  1 +
 drivers/staging/wfx/sta.c                 |  6 +++++-
 8 files changed, 46 insertions(+), 16 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
