Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46796343278
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Mar 2021 13:33:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C28E60703;
	Sun, 21 Mar 2021 12:33:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXIldw4lAyxV; Sun, 21 Mar 2021 12:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C22B606E1;
	Sun, 21 Mar 2021 12:33:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 870881BF5F5
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 12:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7703140264
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 12:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id blw8w2BCZXt1 for <devel@linuxdriverproject.org>;
 Sun, 21 Mar 2021 12:33:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A33DB40245
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 12:33:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0822F61944;
 Sun, 21 Mar 2021 12:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616329983;
 bh=9YX9ZY5fp0/7OuGATShnCJr/Yw72fmyNYA+7bQ4KpC0=;
 h=Date:From:To:Cc:Subject:From;
 b=LSrR760XL9Uj2sfDYHygaODUZdu//iK8fADofclD0fJMzfhjPLJIQhiXRht25wJ0v
 uWiwhWf5ma3lcqdO0jXEVvm6twHH8L+xjrSqVE642db359j2h/CAyxzEL5qOLR7v04
 mnIPc+UDvWD0d5dxbF1n+Sqvo6nbWVIoAaw6cPcU=
Date: Sun, 21 Mar 2021 13:33:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.12-rc4
Message-ID: <YFc8/KJBiKVT2Rt1@kroah.com>
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

The following changes since commit 1e28eed17697bcf343c6743f0028cc3b5dd88bf0:

  Linux 5.12-rc3 (2021-03-14 14:41:02 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.12-rc4

for you to fetch changes up to 2cafd46a714af1e55354bc6dcea9dcc13f9475b5:

  staging: vt665x: fix alignment constraints (2021-03-18 10:21:46 +0100)

----------------------------------------------------------------
Staging/IIO driver fixes for 5.12-rc4

Here are some small staging and IIO driver fixes for 5.12-rc4.

They include:
	- MAINTAINERS changes for the move of the staging mailing list
	- comedi driver fixes to get request_irq() to work correctly
	- counter driver fixes for reported issues with iio devices
	- tiny iio driver fixes for reported issues.

All of these have been in linux-next with no reported problems.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Alexandru Ardelean (1):
      iio: adc: adi-axi-adc: add proper Kconfig dependencies

Dan Carpenter (1):
      iio: adis16400: Fix an error code in adis16400_initial_setup()

Dinghao Liu (1):
      iio: gyro: mpu3050: Fix error handling in mpu3050_trigger_handler

Edmundo Carmona Antoranz (1):
      staging: vt665x: fix alignment constraints

Fabrice Gasnier (2):
      counter: stm32-timer-cnt: fix ceiling write max value
      counter: stm32-timer-cnt: fix ceiling miss-alignment with reload register

Greg Kroah-Hartman (3):
      Merge tag 'iio-fixes-for-5.12a' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus
      MAINTAINERS: move some real subsystems off of the staging mailing list
      MAINTAINERS: move the staging subsystem to lists.linux.dev

Jonathan Albrieux (1):
      iio:adc:qcom-spmi-vadc: add default scale to LR_MUX2_BAT_ID channel

Jonathan Cameron (1):
      iio:adc:stm32-adc: Add HAS_IOMEM dependency

Linus Walleij (1):
      iio: adc: ab8500-gpadc: Fix off by 10 to 3

Tong Zhang (2):
      staging: comedi: cb_pcidas: fix request_irq() warn
      staging: comedi: cb_pcidas64: fix request_irq() warn

Wilfried Wessner (1):
      iio: adc: ad7949: fix wrong ADC result due to incorrect bit mask

William Breathitt Gray (1):
      counter: stm32-timer-cnt: Report count function when SLAVE_MODE_DISABLED

Ye Xiang (3):
      iio: hid-sensor-prox: Fix scale not correct issue
      iio: hid-sensor-humidity: Fix alignment issue of timestamp channel
      iio: hid-sensor-temperature: Fix issues of timestamp channel

 MAINTAINERS                                      |  7 ++-
 drivers/counter/stm32-timer-cnt.c                | 55 ++++++++++++++----------
 drivers/iio/adc/Kconfig                          |  3 ++
 drivers/iio/adc/ab8500-gpadc.c                   |  2 +-
 drivers/iio/adc/ad7949.c                         |  2 +-
 drivers/iio/adc/qcom-spmi-vadc.c                 |  2 +-
 drivers/iio/gyro/mpu3050-core.c                  |  2 +
 drivers/iio/humidity/hid-sensor-humidity.c       | 12 +++---
 drivers/iio/imu/adis16400.c                      |  3 +-
 drivers/iio/light/hid-sensor-prox.c              | 13 +++++-
 drivers/iio/temperature/hid-sensor-temperature.c | 14 +++---
 drivers/staging/comedi/drivers/cb_pcidas.c       |  2 +-
 drivers/staging/comedi/drivers/cb_pcidas64.c     |  2 +-
 drivers/staging/vt6655/rxtx.h                    |  4 +-
 14 files changed, 75 insertions(+), 48 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
