Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF4739D08
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:02:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F0D3C21543;
	Sat,  8 Jun 2019 11:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rQygJBJv42iH; Sat,  8 Jun 2019 11:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D9A1921519;
	Sat,  8 Jun 2019 11:02:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE4C71BF94B
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DA8DA83AF8
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzrPkxQrIBZZ for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:02:01 +0000 (UTC)
X-Greylist: delayed 00:05:18 by SQLgrey-1.7.6
Received: from pokefinder.org (sauhun.de [88.99.104.3])
 by whitealder.osuosl.org (Postfix) with ESMTP id D53438601B
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:02:00 +0000 (UTC)
Received: from localhost (p5486CBCC.dip0.t-ipconnect.de [84.134.203.204])
 by pokefinder.org (Postfix) with ESMTPSA id D0A142C3637;
 Sat,  8 Jun 2019 12:56:40 +0200 (CEST)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 00/34] treewide: simplify getting the adapter of an I2C client
Date: Sat,  8 Jun 2019 12:55:39 +0200
Message-Id: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.19.1
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
Cc: devel@driverdev.osuosl.org, linux-rtc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-iio@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-mtd@lists.infradead.org,
 linux-leds@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

While preparing a refactoring series, I noticed that some drivers use a
complicated way of determining the adapter of a client. The easy way is
to use the intended pointer: client->adapter

These drivers do:
	to_i2c_adapter(client->dev.parent);

The I2C core populates the parent pointer as:
	client->dev.parent = &client->adapter->dev;

Now take into consideration that
	to_i2c_adapter(&adapter->dev);

is a complicated way of saying 'adapter', then we can even formally
prove that the complicated expression can be simplified by using
client->adapter.

The conversion was done using a coccinelle script with some manual
indentation fixes applied on top.

To avoid a brown paper bag mistake, I double checked this on a Renesas
Salvator-XS board (R-Car M3N) and verified both expression result in the
same pointer. Other than that, the series is only build tested.

A branch can be found here:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/no_to_adapter

Please apply the patches to the individual subsystem trees. There are no
dependencies.

Thanks and kind regards,

   Wolfram


Wolfram Sang (34):
  clk: clk-cdce706: simplify getting the adapter of a client
  gpu: drm: bridge: sii9234: simplify getting the adapter of a client
  iio: light: bh1780: simplify getting the adapter of a client
  leds: leds-pca955x: simplify getting the adapter of a client
  leds: leds-tca6507: simplify getting the adapter of a client
  media: i2c: ak881x: simplify getting the adapter of a client
  media: i2c: mt9m001: simplify getting the adapter of a client
  media: i2c: mt9m111: simplify getting the adapter of a client
  media: i2c: mt9p031: simplify getting the adapter of a client
  media: i2c: ov2640: simplify getting the adapter of a client
  media: i2c: tw9910: simplify getting the adapter of a client
  misc: fsa9480: simplify getting the adapter of a client
  misc: isl29003: simplify getting the adapter of a client
  misc: tsl2550: simplify getting the adapter of a client
  mtd: maps: pismo: simplify getting the adapter of a client
  power: supply: bq24190_charger: simplify getting the adapter of a client
  power: supply: bq24257_charger: simplify getting the adapter of a client
  power: supply: bq25890_charger: simplify getting the adapter of a client
  power: supply: max14656_charger_detector: simplify getting the adapter
    of a client
  power: supply: max17040_battery: simplify getting the adapter of a client
  power: supply: max17042_battery: simplify getting the adapter of a client
  power: supply: rt5033_battery: simplify getting the adapter of a client
  power: supply: rt9455_charger: simplify getting the adapter of a client
  power: supply: sbs-manager: simplify getting the adapter of a client
  regulator: max8952: simplify getting the adapter of a client
  rtc: fm3130: simplify getting the adapter of a client
  rtc: m41t80: simplify getting the adapter of a client
  rtc: rv8803: simplify getting the adapter of a client
  rtc: rx8010: simplify getting the adapter of a client
  rtc: rx8025: simplify getting the adapter of a client
  staging: media: soc_camera: imx074: simplify getting the adapter of a client
  staging: media: soc_camera: mt9t031: simplify getting the adapter of a client
  staging: media: soc_camera: soc_mt9v022: simplify getting the adapter
    of a client
  usb: typec: tcpm: fusb302: simplify getting the adapter of a client

 drivers/clk/clk-cdce706.c                        | 2 +-
 drivers/gpu/drm/bridge/sii9234.c                 | 4 ++--
 drivers/iio/light/bh1780.c                       | 2 +-
 drivers/leds/leds-pca955x.c                      | 2 +-
 drivers/leds/leds-tca6507.c                      | 2 +-
 drivers/media/i2c/ak881x.c                       | 2 +-
 drivers/media/i2c/mt9m001.c                      | 2 +-
 drivers/media/i2c/mt9m111.c                      | 2 +-
 drivers/media/i2c/mt9p031.c                      | 2 +-
 drivers/media/i2c/ov2640.c                       | 2 +-
 drivers/media/i2c/tw9910.c                       | 3 +--
 drivers/misc/fsa9480.c                           | 2 +-
 drivers/misc/isl29003.c                          | 2 +-
 drivers/misc/tsl2550.c                           | 2 +-
 drivers/mtd/maps/pismo.c                         | 2 +-
 drivers/power/supply/bq24190_charger.c           | 2 +-
 drivers/power/supply/bq24257_charger.c           | 2 +-
 drivers/power/supply/bq25890_charger.c           | 2 +-
 drivers/power/supply/max14656_charger_detector.c | 2 +-
 drivers/power/supply/max17040_battery.c          | 2 +-
 drivers/power/supply/max17042_battery.c          | 2 +-
 drivers/power/supply/rt5033_battery.c            | 2 +-
 drivers/power/supply/rt9455_charger.c            | 2 +-
 drivers/power/supply/sbs-manager.c               | 2 +-
 drivers/regulator/max8952.c                      | 2 +-
 drivers/rtc/rtc-fm3130.c                         | 8 +++-----
 drivers/rtc/rtc-m41t80.c                         | 2 +-
 drivers/rtc/rtc-rv8803.c                         | 2 +-
 drivers/rtc/rtc-rx8010.c                         | 2 +-
 drivers/rtc/rtc-rx8025.c                         | 2 +-
 drivers/staging/media/soc_camera/imx074.c        | 2 +-
 drivers/staging/media/soc_camera/mt9t031.c       | 2 +-
 drivers/staging/media/soc_camera/soc_mt9v022.c   | 2 +-
 drivers/usb/typec/tcpm/fusb302.c                 | 3 +--
 34 files changed, 37 insertions(+), 41 deletions(-)

-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
