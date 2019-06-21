Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AD74E090
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:40:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA4E987F44;
	Fri, 21 Jun 2019 06:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qKsZbfXpefqZ; Fri, 21 Jun 2019 06:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68E9787EC4;
	Fri, 21 Jun 2019 06:40:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE2E61BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BBC4087EC5
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjPpXFnqtTBk for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:40:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DD9787EC4
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:40:08 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id e5so2484955pls.13
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/1SimtDPI1dJLadUf0NpQzlpwGxTOlWps829IULnfiw=;
 b=gh0qaAbzRY/dSltwDrlfc4KjwgwWVj4oqeHdjR0QjJP+qpJToPmMTJ7rBjpE5VGlJL
 3gRZ8QrYDD2Tq3ssQbW5WY0ahTD1jn9mpmjiXTuavJbRHE7KICsc7Kfz/LT88Q7Y5HKn
 pHdE4urJbTGNpIzTCUY/EvrDGFqy/VEW/q5KyxW6j3ykgMGBeix8gqTypDMIM7A3SDJH
 CfKFFS/yl7VpvqtZwLZF+SvUS2uvQOoSaCswXtlifuK9c1GQBsrHPrspOYb45gn18+jg
 xOVeWKpXyM5TBypadtLcU/xofUVWjC78/8PXe9iliOMih8bwqwMs13ctNGCmeZV2I0cv
 PYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/1SimtDPI1dJLadUf0NpQzlpwGxTOlWps829IULnfiw=;
 b=XFXom4W/RnO+6SRBkPqG0SOzr1HEpViMj639jgoY7XnntOF+cN+F1afobdv9yqUnvM
 /E1euHhtim+e6ORKAFgO51B05Gv5cTTuXown5ID8GWv57F//Q8tye5s7sdv7eHFr76AQ
 nsbuaKVR2RGhbS+0j9ZWVaRvEd/fL6y3cTSPeZ0bs57QaPgabVWUHanMZ9h6IN362MKz
 PvKMklAr2f9NhpuvcurvQKwmj0YpYiLtHX66j1gDaCF4bpvqtba3VxYoOipgoUFhEpVs
 SM+70Ibw6jA/Shdm05x29ndsAyvrBAsgLgOSpF2ZD5FKdUtHRQxaLyDGCKClDsn7QzWL
 bNPg==
X-Gm-Message-State: APjAAAV6PcCdt5Wz59DxEkCCrc5JJQNlGO3Iv1GXu/pyqt3KOd0R6Vbx
 pTJV5zuRWBEs+64uehX1AXey0KOWFUACOw==
X-Google-Smtp-Source: APXvYqxnim4Yjzcfqh8Yo9BHZVI7KFkWIx8u0OHYiZ4zLF0NCdI1SdEhz8/HUcCKMjYManxzIWjICg==
X-Received: by 2002:a17:902:8546:: with SMTP id
 d6mr118697326plo.207.1561099207849; 
 Thu, 20 Jun 2019 23:40:07 -0700 (PDT)
Received: from AHMCPU1978.einfochips.com ([219.65.62.52])
 by smtp.gmail.com with ESMTPSA id i14sm2327103pfk.0.2019.06.20.23.40.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 23:40:07 -0700 (PDT)
From: Aliasgar Surti <aliasgar.surti500@gmail.com>
X-Google-Original-From: Aliasgar Surti
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com, hverkuil-cisco@xs4all.nl,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] staging: media: fix style problem
Date: Fri, 21 Jun 2019 12:09:52 +0530
Message-Id: <1561099192-19638-1-git-send-email-aliasgar.surti500@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Aliasgar Surti <aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Aliasgar Surti <aliasgar.surti500@gmail.com>

checkpatch reported "WARNING: line over 80 characters".
This patch fixes the warning for file soc_camera/soc_ov5642.c

Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
---
 drivers/staging/media/soc_camera/soc_ov5642.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/soc_camera/soc_ov5642.c b/drivers/staging/media/soc_camera/soc_ov5642.c
index 94696d7..39ae24dc 100644
--- a/drivers/staging/media/soc_camera/soc_ov5642.c
+++ b/drivers/staging/media/soc_camera/soc_ov5642.c
@@ -687,7 +687,8 @@ static int reg_write16(struct i2c_client *client, u16 reg, u16 val16)
 }
 
 #ifdef CONFIG_VIDEO_ADV_DEBUG
-static int ov5642_get_register(struct v4l2_subdev *sd, struct v4l2_dbg_register *reg)
+static int ov5642_get_register(struct v4l2_subdev *sd,
+			       struct v4l2_dbg_register *reg)
 {
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret;
@@ -705,7 +706,8 @@ static int ov5642_get_register(struct v4l2_subdev *sd, struct v4l2_dbg_register
 	return ret;
 }
 
-static int ov5642_set_register(struct v4l2_subdev *sd, const struct v4l2_dbg_register *reg)
+static int ov5642_set_register(struct v4l2_subdev *sd,
+			       const struct v4l2_dbg_register *reg)
 {
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
