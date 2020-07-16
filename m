Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B948D2226FC
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 17:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48C9B8AA89;
	Thu, 16 Jul 2020 15:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HDvBqwhoDR5y; Thu, 16 Jul 2020 15:29:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BADF88AA33;
	Thu, 16 Jul 2020 15:29:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11B701BF38D
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D89C875DF
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oZh6bWjOcH9o for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 15:29:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B307E875B6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:29:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B77D2065F;
 Thu, 16 Jul 2020 15:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594913385;
 bh=W80dXnsx8xCpD4ZJDZiVreuYHVetErKPCjXzs3QZiGQ=;
 h=Date:From:To:Cc:Subject:From;
 b=nhMKkuL8h1iFlTPmdvCAYA7hY4RttU7BKfsBtwtmAruEV190ao2fY2n8Kam/p67Az
 HcomLt91gviNdfpgNpTOWos7VSNNYRnn4hPEGVvKBg0qcsdZIVKCCtGNizP6SKqjM6
 ITnzp68hCPggpIfPHWn2mvgVAaI4L0uYZK0KTgxA=
Date: Thu, 16 Jul 2020 17:29:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.8-rc6
Message-ID: <20200716152939.GA2378914@kroah.com>
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

The following changes since commit 9ebcfadb0610322ac537dd7aa5d9cbc2b2894c68:

  Linux 5.8-rc3 (2020-06-28 15:00:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.8-rc6

for you to fetch changes up to ef75e14a6c935eec82abac07ab68e388514e39bc:

  staging: comedi: verify array index is correct before using it (2020-07-1=
0 14:03:00 +0200)

----------------------------------------------------------------
IIO/Staging driver fixes for 5.8-rc6

Here are some IIO and staging driver fixes for 5.8-rc6.

The majority of fixes are for IIO drivers, resolving a number of small
reported issues, and there are some counter fixes in here too that were
tied to the IIO fixes.  There's only one staging driver fix here, a
comedi fix found by code inspection.

All of these have been in linux-next for a while with no reported
issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Christophe JAILLET (1):
      iio: adc: ad7780: Fix a resource handling path in 'ad7780_probe()'

Chuhong Yuan (1):
      iio: mma8452: Add missed iio_device_unregister() call in mma8452_prob=
e()

Dan Carpenter (1):
      staging: comedi: verify array index is correct before using it

Dinghao Liu (1):
      iio: magnetometer: ak8974: Fix runtime PM imbalance on error

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.8a' of git://git.kernel.org/.../jic23/iio =
into staging-linus

Jonathan Cameron (6):
      iio:health:afe4403 Fix timestamp alignment and prevent data leak.
      iio:health:afe4404 Fix timestamp alignment and prevent data leak.
      iio:magnetometer:ak8974: Fix alignment and data leak issues
      iio:humidity:hdc100x Fix alignment and data leak issues
      iio:humidity:hts221 Fix alignment and data leak issues
      iio:pressure:ms5611 Fix buffer element alignment

Matt Ranostay (1):
      iio: core: add missing IIO_MOD_H2/ETHANOL string identifiers

Navid Emamdoost (1):
      iio: pressure: zpa2326: handle pm_runtime_get_sync failure

Nuno S=E1 (1):
      iio: adc: adi-axi-adc: Fix object reference counting

Syed Nayyar Waris (2):
      counter: 104-quad-8: Add lock guards - differential encoder
      counter: 104-quad-8: Add lock guards - filter clock prescaler

 drivers/counter/104-quad-8.c                    | 22 ++++++++++++++++---
 drivers/iio/accel/mma8452.c                     |  5 ++++-
 drivers/iio/adc/ad7780.c                        |  2 +-
 drivers/iio/adc/adi-axi-adc.c                   |  4 ++--
 drivers/iio/health/afe4403.c                    |  9 +++++---
 drivers/iio/health/afe4404.c                    |  8 ++++---
 drivers/iio/humidity/hdc100x.c                  | 10 ++++++---
 drivers/iio/humidity/hts221.h                   |  7 ++++--
 drivers/iio/humidity/hts221_buffer.c            |  9 ++++----
 drivers/iio/industrialio-core.c                 |  2 ++
 drivers/iio/magnetometer/ak8974.c               | 29 +++++++++++++++------=
----
 drivers/iio/pressure/ms5611_core.c              | 11 +++++++---
 drivers/iio/pressure/zpa2326.c                  |  4 +++-
 drivers/staging/comedi/drivers/addi_apci_1500.c | 10 ++++++---
 14 files changed, 91 insertions(+), 41 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
