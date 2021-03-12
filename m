Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9AD338CAE
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 13:25:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2FADA4ED55;
	Fri, 12 Mar 2021 12:25:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUktZHXC0Vlm; Fri, 12 Mar 2021 12:25:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C66924ED1C;
	Fri, 12 Mar 2021 12:25:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 613A81BF59A
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 12:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50D8B43269
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 12:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wHhpWpyCpBT3 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 12:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04CB143027
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 12:25:18 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id C8322B0AE;
 Fri, 12 Mar 2021 12:25:16 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de
Subject: [PATCH v8 00/11] Raspberry Pi PoE HAT fan support
Date: Fri, 12 Mar 2021 13:24:43 +0100
Message-Id: <20210312122454.24480-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-input@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The aim of this series is to add support to the fan found on RPi's PoE
HAT. Some commentary on the design can be found below. But the important
part to the people CC'd here not involved with PWM is that, in order to
achieve this properly, we also have to fix the firmware interface the
driver uses to communicate with the PWM bus (and many other low level
functions). Specifically, we have to make sure the firmware interface
isn't unbound while consumers are still up. So, patch #1 & #2 introduce
reference counting in the firmware interface driver and patches #3 to #8
update all firmware users. Patches #9 to #11 introduce the new PWM
driver.

I sent everything as a single series as the final version of the PWM
drivers depends on the firmware fixes, but I'll be happy to split this
into two separate series if you think it's better.

--- Original cover letter below ---

This series aims at adding support to RPi's official PoE HAT fan[1].

The HW setup is the following:

| Raspberry Pi                               | PoE HAT                    |
 arm core -> Mailbox -> RPi co-processor -> I2C -> Atmel MCU -> PWM -> FAN

The arm cores have only access to the mailbox interface, as i2c0, even if
physically accessible, is to be used solely by the co-processor
(VideoCore 4/6).

This series implements a PWM bus, and has pwm-fan sitting on top of it as per
this discussion: https://lkml.org/lkml/2018/9/2/486. Although this design has a
series of shortcomings:

- It depends on a DT binding: it's not flexible if a new hat shows up with new
  functionality, we're not 100% sure we'll be able to expand it without
  breaking backwards compatibility. But without it we can't make use of DT
  thermal-zones, which IMO is overkill.

- We're using pwm-fan, writing a hwmon driver would, again, give us more
  flexibility, but it's not really needed at the moment.

I personally think that it's not worth the effort, it's unlikely we'll get
things right in advance. And ultimately, if the RPi people come up with
something new, we can always write a new driver/bindings from scratch (as in
not reusing previous code).

That said, I'm more than happy to change things if there is a consensus that
another design will do the trick.

[1] https://www.raspberrypi.org/blog/introducing-power-over-ethernet-poe-hat/

---

Changes since v7:
 - Remove unwarranted RPI_PWM_DEF_DUTY_REG usage

Changes since v6:
 - Address PWM driver comments

Changes since v5:
 - Small cleanups
 - Add extra code comments

Changes since v4:
 - Cleanup devm calls
 - Rename compatible string so it's unique to the PoE HAT

Changes since v3:
 - Split first patch, #1 introduces refcount, then #2 the devm function
 - Fix touchscreen function
 - Use kref

Changes since v2:
 - Introduce devm_rpi_firmware_get()
 - Small cleanups in PWM driver

Changes since v1:
 - Address PWM driver changes
 - Fix binding, now with 2 cells

Nicolas Saenz Julienne (11):
  firmware: raspberrypi: Keep count of all consumers
  firmware: raspberrypi: Introduce devm_rpi_firmware_get()
  clk: bcm: rpi: Release firmware handle on unbind
  gpio: raspberrypi-exp: Release firmware handle on unbind
  reset: raspberrypi: Release firmware handle on unbind
  soc: bcm: raspberrypi-power: Release firmware handle on unbind
  staging: vchiq: Release firmware handle on unbind
  input: raspberrypi-ts: Release firmware handle when not needed
  dt-bindings: pwm: Add binding for RPi firmware PWM bus
  DO NOT MERGE: ARM: dts: Add RPi's official PoE hat support
  pwm: Add Raspberry Pi Firmware based PWM bus

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml |  20 ++
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts         |  54 +++++
 drivers/clk/bcm/clk-raspberrypi.c             |   2 +-
 drivers/firmware/raspberrypi.c                |  69 +++++-
 drivers/gpio/gpio-raspberrypi-exp.c           |   2 +-
 drivers/input/touchscreen/raspberrypi-ts.c    |   2 +-
 drivers/pwm/Kconfig                           |   9 +
 drivers/pwm/Makefile                          |   1 +
 drivers/pwm/pwm-raspberrypi-poe.c             | 206 ++++++++++++++++++
 drivers/reset/reset-raspberrypi.c             |   2 +-
 drivers/soc/bcm/raspberrypi-power.c           |   2 +-
 .../interface/vchiq_arm/vchiq_arm.c           |   2 +-
 .../pwm/raspberrypi,firmware-poe-pwm.h        |  13 ++
 include/soc/bcm2835/raspberrypi-firmware.h    |  10 +
 14 files changed, 385 insertions(+), 9 deletions(-)
 create mode 100644 drivers/pwm/pwm-raspberrypi-poe.c
 create mode 100644 include/dt-bindings/pwm/raspberrypi,firmware-poe-pwm.h

-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
