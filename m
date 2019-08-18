Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E39915A7
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 10:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5837020346;
	Sun, 18 Aug 2019 08:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fb-0SwquDwei; Sun, 18 Aug 2019 08:57:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2395D20505;
	Sun, 18 Aug 2019 08:57:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3080F1BF484
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 08:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B0B285742
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 08:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJ5NmlTZ89O2 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 08:57:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A5AE85082
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 08:57:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 685952086C;
 Sun, 18 Aug 2019 08:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566118634;
 bh=ZV/DUtof7HJNFG9uunWbxc0XTtWOTUrKrzBU1NZiZzg=;
 h=Date:From:To:Cc:Subject:From;
 b=lMjrzCVYjl64VFd71cC+RT7QQ38qVz3nKbfD4WNiaStDzS4pcLtdhcPxeSkxK+6K4
 sWMXlGFFXtgRj+Z1O26LZ95RKq0W1DGie+JQ2In8NWcVK6c5LhkADQKWwD2Yb4kcP0
 aN19NaVE0JzwBqZV6D+pE1rq7w4f+z65TAF1yKwg=
Date: Sun, 18 Aug 2019 10:57:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.3-rc5
Message-ID: <20190818085712.GA28706@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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

The following changes since commit d45331b00ddb179e291766617259261c112db872:

  Linux 5.3-rc4 (2019-08-11 13:26:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.3-rc5

for you to fetch changes up to 48b30e10bfc20ec6195642cc09ea6f08a8015df7:

  Merge tag 'iio-fixes-for-5.3b' of git://git.kernel.org/pub/scm/linux/kern=
el/git/jic23/iio into staging-linus (2019-08-12 22:47:59 +0200)

----------------------------------------------------------------
Staging/IIO fixes for 5.3-rc5

Here are 4 small staging and iio driver fixes for 5.3-rc5

Two are for the dt3000 comedi driver for some reported problems found in
that codebase, and two are some small iio fixes.

All of these have been in linux-next this week with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.3b' of git://git.kernel.org/.../jic23/iio =
into staging-linus

Ian Abbott (2):
      staging: comedi: dt3000: Fix signed integer overflow 'divider * base'
      staging: comedi: dt3000: Fix rounding up of timer divisor

Jacopo Mondi (1):
      iio: adc: max9611: Fix temperature reading in probe

Nuno S=E1 (1):
      iio: frequency: adf4371: Fix output frequency setting

 drivers/iio/adc/max9611.c               | 2 +-
 drivers/iio/frequency/adf4371.c         | 8 ++++----
 drivers/staging/comedi/drivers/dt3000.c | 8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
