Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 535332EAE11
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 16:17:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3415B2226B;
	Tue,  5 Jan 2021 15:17:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PZvNfgAO6xah; Tue,  5 Jan 2021 15:17:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A6BD521FA9;
	Tue,  5 Jan 2021 15:17:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B8121BF30A
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 15:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1397085EEF
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 15:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZL9oGyRpFkhf for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 15:17:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8059385EBE
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 15:17:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BCDE722B45;
 Tue,  5 Jan 2021 15:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609859866;
 bh=1quZ02Rl4RLIVryVUi4lomipM7LHcE1w60tEywlJ3kc=;
 h=From:To:Cc:Subject:Date:From;
 b=bmkv4SKel/D4QTk3d4rWmD4OvlA/yVc6FLctPFlMpoZGKwpz1valZdUMiDG0TMkvk
 mnXNAehcKjC8DS3lnQmuezq6H63ZhiOV0oNydGuQEf4nroBN5q1g6UFVuhjmx2n9qh
 tnWkybwYgfBU9nF7ShS7QhFCjzMZf2HwsHB2DjD8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: greybus-dev@lists.linaro.org
Subject: [PATCH 1/2] staging: greybus: vibrator: use proper API for vibrator
 devices
Date: Tue,  5 Jan 2021 16:19:02 +0100
Message-Id: <20210105151903.1761635-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, linus-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The correct user/kernel api for vibrator devices is the Input rumble
api, not a random sysfs file like the greybus vibrator driver currently
uses.

Add support for the correct input api to the vibrator driver so that it
hooks up to the kernel and userspace correctly.

Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/greybus/vibrator.c | 59 ++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/staging/greybus/vibrator.c b/drivers/staging/greybus/vibrator.c
index 0e2b188e5ca3..94110cadb5bd 100644
--- a/drivers/staging/greybus/vibrator.c
+++ b/drivers/staging/greybus/vibrator.c
@@ -13,13 +13,18 @@
 #include <linux/kdev_t.h>
 #include <linux/idr.h>
 #include <linux/pm_runtime.h>
+#include <linux/input.h>
 #include <linux/greybus.h>
 
 struct gb_vibrator_device {
 	struct gb_connection	*connection;
+	struct input_dev	*input;
 	struct device		*dev;
 	int			minor;		/* vibrator minor number */
 	struct delayed_work     delayed_work;
+	bool			running;
+	bool			on;
+	struct work_struct	play_work;
 };
 
 /* Greybus Vibrator operation types */
@@ -36,6 +41,7 @@ static int turn_off(struct gb_vibrator_device *vib)
 
 	gb_pm_runtime_put_autosuspend(bundle);
 
+	vib->on = false;
 	return ret;
 }
 
@@ -59,11 +65,48 @@ static int turn_on(struct gb_vibrator_device *vib, u16 timeout_ms)
 		return ret;
 	}
 
+	vib->on = true;
 	schedule_delayed_work(&vib->delayed_work, msecs_to_jiffies(timeout_ms));
 
 	return 0;
 }
 
+static void gb_vibrator_play_work(struct work_struct *work)
+{
+	struct gb_vibrator_device *vib =
+		container_of(work, struct gb_vibrator_device, play_work);
+
+	if (vib->running)
+		turn_off(vib);
+	else
+		turn_on(vib, 100);
+}
+
+static int gb_vibrator_play_effect(struct input_dev *input, void *data,
+				   struct ff_effect *effect)
+{
+	struct gb_vibrator_device *vib = input_get_drvdata(input);
+	int level;
+
+	level = effect->u.rumble.strong_magnitude;
+	if (!level)
+		level = effect->u.rumble.weak_magnitude;
+
+	vib->running = level;
+	schedule_work(&vib->play_work);
+	return 0;
+}
+
+static void gb_vibrator_close(struct input_dev *input)
+{
+	struct gb_vibrator_device *vib = input_get_drvdata(input);
+
+	cancel_delayed_work_sync(&vib->delayed_work);
+	cancel_work_sync(&vib->play_work);
+	turn_off(vib);
+	vib->running = false;
+}
+
 static void gb_vibrator_worker(struct work_struct *work)
 {
 	struct delayed_work *delayed_work = to_delayed_work(work);
@@ -169,10 +212,26 @@ static int gb_vibrator_probe(struct gb_bundle *bundle,
 
 	INIT_DELAYED_WORK(&vib->delayed_work, gb_vibrator_worker);
 
+	INIT_WORK(&vib->play_work, gb_vibrator_play_work);
+	vib->input->name = "greybus-vibrator";
+	vib->input->close = gb_vibrator_close;
+	vib->input->dev.parent = &bundle->dev;
+	vib->input->id.bustype = BUS_HOST;
+
+	input_set_drvdata(vib->input, vib);
+	input_set_capability(vib->input, EV_FF, FF_RUMBLE);
+
+	retval = input_ff_create_memless(vib->input, NULL,
+					 gb_vibrator_play_effect);
+	if (retval)
+		goto err_device_remove;
+
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	return 0;
 
+err_device_remove:
+	device_unregister(vib->dev);
 err_ida_remove:
 	ida_simple_remove(&minors, vib->minor);
 err_connection_disable:
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
