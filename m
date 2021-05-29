Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE56394C7F
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 May 2021 16:27:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0D2E40F33;
	Sat, 29 May 2021 14:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ywc1vX94c65m; Sat, 29 May 2021 14:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DF0840EF5;
	Sat, 29 May 2021 14:27:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 713DC1BF575
 for <devel@linuxdriverproject.org>; Sat, 29 May 2021 14:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C67240EF5
 for <devel@linuxdriverproject.org>; Sat, 29 May 2021 14:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iIrteFXVUvU4 for <devel@linuxdriverproject.org>;
 Sat, 29 May 2021 14:27:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6111640EEB
 for <devel@linuxdriverproject.org>; Sat, 29 May 2021 14:27:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 543B061157;
 Sat, 29 May 2021 14:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1622298430;
 bh=oFtbwDI1AyvLbbJIuZMSthbSfn24iCR/EAVxWaL1CIo=;
 h=Date:From:To:Cc:Subject:From;
 b=ZLHa+XpkNXyW63cp8JSL8L156p1Uk8zeAcJ3SB/tOAUJBu3Ar5jhyyRS3740SQfy+
 D4VzeEHoZRqzC7UTCzdMwoXmDpBvIqYKfaxsyVmbQX8bqKlKgihYLjJtxf731VNmel
 T1gl1AelgwVNXaWuzvEYMtDOK1F89Z4LOPQNJIjU=
Date: Sat, 29 May 2021 16:27:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.13-rc4
Message-ID: <YLJPPF9wg6b1Cssj@kroah.com>
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
Cc: devel@linuxdriverproject.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit d07f6ca923ea0927a1024dfccafc5b53b61cfecc:

  Linux 5.13-rc2 (2021-05-16 15:27:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.13-rc4

for you to fetch changes up to 54732a5322ff1fe0f42f2527fa6f5901a4de5111:

  Merge tag 'iio-fixes-5.13b-take2' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus (2021-05-22 09:49:59 +0200)

----------------------------------------------------------------
Staging / IIO driver fixes for 5.13-rc4

Here are some small IIO and staging driver fixes for reported issues for
5.13-rc4.

Nothing major here, tiny changes for reported problems, full details are
in the shortlog if people are curious.

All have been in linux-next for a while with no reported problems.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Alexandru Ardelean (1):
      iio: adc: ad7192: handle regulator voltage error first

Andy Shevchenko (1):
      iio: dac: ad5770r: Put fwnode in error case during ->probe()

Dan Carpenter (1):
      staging: emxx_udc: fix loop in _nbu2ss_nuke()

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-5.13b-take2' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus

Jonathan Cameron (5):
      iio: adc: ad7124: Fix missbalanced regulator enable / disable on error.
      iio: adc: ad7124: Fix potential overflow due to non sequential channel numbers
      iio: adc: ad7192: Avoid disabling a clock that was never enabled.
      iio: adc: ad7768-1: Fix too small buffer passed to iio_push_to_buffers_with_timestamp()
      iio: adc: ad7923: Fix undersized rx buffer.

Lucas Stankus (1):
      staging: iio: cdc: ad7746: avoid overwrite of num_channels

Rui Miguel Silva (1):
      iio: gyro: fxas21002c: balance runtime power in error path

YueHaibing (1):
      iio: adc: ad7793: Add missing error code in ad7793_setup()

 drivers/iio/adc/ad7124.c            | 36 ++++++++++++++++++++----------------
 drivers/iio/adc/ad7192.c            | 19 ++++++++++---------
 drivers/iio/adc/ad7768-1.c          |  8 ++++++--
 drivers/iio/adc/ad7793.c            |  1 +
 drivers/iio/adc/ad7923.c            |  4 +++-
 drivers/iio/dac/ad5770r.c           | 16 +++++++++++-----
 drivers/iio/gyro/fxas21002c_core.c  |  2 ++
 drivers/staging/emxx_udc/emxx_udc.c |  4 ++--
 drivers/staging/iio/cdc/ad7746.c    |  1 -
 9 files changed, 55 insertions(+), 36 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
