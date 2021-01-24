Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D968301BEE
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Jan 2021 13:58:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B37786947;
	Sun, 24 Jan 2021 12:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ELcLjhFQ8BAa; Sun, 24 Jan 2021 12:58:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADFCC868EA;
	Sun, 24 Jan 2021 12:58:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A43C1BF419
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 12:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 438A186F62
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 12:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lqmrap2s3xDm for <devel@linuxdriverproject.org>;
 Sun, 24 Jan 2021 12:58:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 759A7850A3
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 12:58:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 710FB22D2C;
 Sun, 24 Jan 2021 12:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611493086;
 bh=5eDnF12i/gn9txUcrRfZFG6pDa2J2ggsQkJpqfZwI8c=;
 h=Date:From:To:Cc:Subject:From;
 b=up10i3UtUcHONEE1qCRR6JrR0nDyGfu1+VfM+G3rIUGu9VZstd2DqFpayw9DP9BRV
 beNZuWKbAuHHk8gw4fdxzsIgsZKZ5DBbSytJNU1polOI9QAk8/hkQVz0nEY43UustA
 hdRVkNPAloJnza8pRmgDnxwi706oV71hUTAfR5/M=
Date: Sun, 24 Jan 2021 13:58:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.11-rc5
Message-ID: <YA1u24kUPB+B7gKY@kroah.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit 7c53f6b671f4aba70ff15e1b05148b10d58c2837:

  Linux 5.11-rc3 (2021-01-10 14:34:50 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.11-rc5

for you to fetch changes up to a1bfb0ccf94dc79223d0db0d50237d3b3898f0b2:

  Merge tag 'iio-fixes-for-5.11a' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus (2021-01-15 08:16:35 +0100)

----------------------------------------------------------------
Staging/IIO fixes for 5.11-rc5

Here are some IIO driver fixes for 5.11-rc5 to resolve some reported
problems.

Nothing major, just a few small fixes, all of these have been in
linux-next for a while and full details are in the shortlog.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Alexandru Ardelean (1):
      iio: adc: ti_am335x_adc: remove omitted iio_kfifo_free()

Dan Carpenter (1):
      iio: sx9310: Off by one in sx9310_read_thresh()

David Lechner (1):
      counter:ti-eqep: remove floor

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.11a' of https://git.kernel.org/.../jic23/iio into staging-linus

Lars-Peter Clausen (1):
      iio: ad5504: Fix setting power-down state

Lorenzo Bianconi (1):
      iio: common: st_sensors: fix possible infinite loop in st_sensors_irq_thread

Slaveyko Slaveykov (1):
      drivers: iio: temperature: Add delay after the addressed reset command in mlx90632.c

Stephan Gerhold (1):
      dt-bindings: iio: accel: bma255: Fix bmc150/bmi055 compatible

Stephen Boyd (1):
      iio: sx9310: Fix semtech,avg-pos-strength setting when > 16

 .../bindings/iio/accel/bosch,bma255.yaml           |  4 +--
 drivers/counter/ti-eqep.c                          | 35 ----------------------
 drivers/iio/adc/ti_am335x_adc.c                    |  6 +---
 drivers/iio/common/st_sensors/st_sensors_trigger.c | 31 ++++++++++---------
 drivers/iio/dac/ad5504.c                           |  4 +--
 drivers/iio/proximity/sx9310.c                     |  5 ++--
 drivers/iio/temperature/mlx90632.c                 |  6 ++++
 7 files changed, 31 insertions(+), 60 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
