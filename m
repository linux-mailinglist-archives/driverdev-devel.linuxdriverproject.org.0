Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 752B62EAE12
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 16:18:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76CAD8699C;
	Tue,  5 Jan 2021 15:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bgy-xozJVgW8; Tue,  5 Jan 2021 15:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82C568697A;
	Tue,  5 Jan 2021 15:17:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E62601BF30A
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 15:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E039520367
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 15:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IVA1tHRwET4l for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 15:17:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B34072155D
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 15:17:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E5ECD22B49;
 Tue,  5 Jan 2021 15:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609859874;
 bh=irQygi6EvZrTMaE6JE63Szsm7qjq4eGXgtSGOOy0O1A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JdYFMdA557WzVA4mPcb1qYuVFGAkOrTngu3g6o+98ovFTKcFwQ/08lJji21EKmhPA
 evlpcBBnjSMnF0l+1EiH/SAVUmOLJyYI3McaEuTrARn+0l+kh6iu5/nD5TcK4JaQtm
 QFUvUdFNorNveuTo/X79GRb78w+yZ67dYM525jLQ=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: greybus-dev@lists.linaro.org
Subject: [PATCH 2/2] greybus: vibrator: rip out custom sysfs api
Date: Tue,  5 Jan 2021 16:19:03 +0100
Message-Id: <20210105151903.1761635-2-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210105151903.1761635-1-gregkh@linuxfoundation.org>
References: <20210105151903.1761635-1-gregkh@linuxfoundation.org>
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

No need for a custom sysfs api for the greybus vibrator driver now that
it is hooked up to the kernel's input layer, so rip it out.

Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/greybus/vibrator.c | 125 ++---------------------------
 1 file changed, 5 insertions(+), 120 deletions(-)

diff --git a/drivers/staging/greybus/vibrator.c b/drivers/staging/greybus/vibrator.c
index 94110cadb5bd..d93c8f7e1bd6 100644
--- a/drivers/staging/greybus/vibrator.c
+++ b/drivers/staging/greybus/vibrator.c
@@ -19,9 +19,6 @@
 struct gb_vibrator_device {
 	struct gb_connection	*connection;
 	struct input_dev	*input;
-	struct device		*dev;
-	int			minor;		/* vibrator minor number */
-	struct delayed_work     delayed_work;
 	bool			running;
 	bool			on;
 	struct work_struct	play_work;
@@ -45,7 +42,7 @@ static int turn_off(struct gb_vibrator_device *vib)
 	return ret;
 }
 
-static int turn_on(struct gb_vibrator_device *vib, u16 timeout_ms)
+static int turn_on(struct gb_vibrator_device *vib)
 {
 	struct gb_bundle *bundle = vib->connection->bundle;
 	int ret;
@@ -54,10 +51,6 @@ static int turn_on(struct gb_vibrator_device *vib, u16 timeout_ms)
 	if (ret)
 		return ret;
 
-	/* Vibrator was switched ON earlier */
-	if (cancel_delayed_work_sync(&vib->delayed_work))
-		turn_off(vib);
-
 	ret = gb_operation_sync(vib->connection, GB_VIBRATOR_TYPE_ON,
 				NULL, 0, NULL, 0);
 	if (ret) {
@@ -66,8 +59,6 @@ static int turn_on(struct gb_vibrator_device *vib, u16 timeout_ms)
 	}
 
 	vib->on = true;
-	schedule_delayed_work(&vib->delayed_work, msecs_to_jiffies(timeout_ms));
-
 	return 0;
 }
 
@@ -79,7 +70,7 @@ static void gb_vibrator_play_work(struct work_struct *work)
 	if (vib->running)
 		turn_off(vib);
 	else
-		turn_on(vib, 100);
+		turn_on(vib);
 }
 
 static int gb_vibrator_play_effect(struct input_dev *input, void *data,
@@ -101,68 +92,17 @@ static void gb_vibrator_close(struct input_dev *input)
 {
 	struct gb_vibrator_device *vib = input_get_drvdata(input);
 
-	cancel_delayed_work_sync(&vib->delayed_work);
 	cancel_work_sync(&vib->play_work);
 	turn_off(vib);
 	vib->running = false;
 }
 
-static void gb_vibrator_worker(struct work_struct *work)
-{
-	struct delayed_work *delayed_work = to_delayed_work(work);
-	struct gb_vibrator_device *vib =
-		container_of(delayed_work,
-			     struct gb_vibrator_device,
-			     delayed_work);
-
-	turn_off(vib);
-}
-
-static ssize_t timeout_store(struct device *dev, struct device_attribute *attr,
-			     const char *buf, size_t count)
-{
-	struct gb_vibrator_device *vib = dev_get_drvdata(dev);
-	unsigned long val;
-	int retval;
-
-	retval = kstrtoul(buf, 10, &val);
-	if (retval < 0) {
-		dev_err(dev, "could not parse timeout value %d\n", retval);
-		return retval;
-	}
-
-	if (val)
-		retval = turn_on(vib, (u16)val);
-	else
-		retval = turn_off(vib);
-	if (retval)
-		return retval;
-
-	return count;
-}
-static DEVICE_ATTR_WO(timeout);
-
-static struct attribute *vibrator_attrs[] = {
-	&dev_attr_timeout.attr,
-	NULL,
-};
-ATTRIBUTE_GROUPS(vibrator);
-
-static struct class vibrator_class = {
-	.name		= "vibrator",
-	.owner		= THIS_MODULE,
-	.dev_groups	= vibrator_groups,
-};
-
-static DEFINE_IDA(minors);
-
 static int gb_vibrator_probe(struct gb_bundle *bundle,
 			     const struct greybus_bundle_id *id)
 {
 	struct greybus_descriptor_cport *cport_desc;
 	struct gb_connection *connection;
 	struct gb_vibrator_device *vib;
-	struct device *dev;
 	int retval;
 
 	if (bundle->num_cports != 1)
@@ -192,26 +132,6 @@ static int gb_vibrator_probe(struct gb_bundle *bundle,
 	if (retval)
 		goto err_connection_destroy;
 
-	/*
-	 * For now we create a device in sysfs for the vibrator, but odds are
-	 * there is a "real" device somewhere in the kernel for this, but I
-	 * can't find it at the moment...
-	 */
-	vib->minor = ida_simple_get(&minors, 0, 0, GFP_KERNEL);
-	if (vib->minor < 0) {
-		retval = vib->minor;
-		goto err_connection_disable;
-	}
-	dev = device_create(&vibrator_class, &bundle->dev,
-			    MKDEV(0, 0), vib, "vibrator%d", vib->minor);
-	if (IS_ERR(dev)) {
-		retval = -EINVAL;
-		goto err_ida_remove;
-	}
-	vib->dev = dev;
-
-	INIT_DELAYED_WORK(&vib->delayed_work, gb_vibrator_worker);
-
 	INIT_WORK(&vib->play_work, gb_vibrator_play_work);
 	vib->input->name = "greybus-vibrator";
 	vib->input->close = gb_vibrator_close;
@@ -224,16 +144,12 @@ static int gb_vibrator_probe(struct gb_bundle *bundle,
 	retval = input_ff_create_memless(vib->input, NULL,
 					 gb_vibrator_play_effect);
 	if (retval)
-		goto err_device_remove;
+		goto err_connection_disable;
 
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	return 0;
 
-err_device_remove:
-	device_unregister(vib->dev);
-err_ida_remove:
-	ida_simple_remove(&minors, vib->minor);
 err_connection_disable:
 	gb_connection_disable(connection);
 err_connection_destroy:
@@ -253,11 +169,8 @@ static void gb_vibrator_disconnect(struct gb_bundle *bundle)
 	if (ret)
 		gb_pm_runtime_get_noresume(bundle);
 
-	if (cancel_delayed_work_sync(&vib->delayed_work))
-		turn_off(vib);
+	turn_off(vib);
 
-	device_unregister(vib->dev);
-	ida_simple_remove(&minors, vib->minor);
 	gb_connection_disable(vib->connection);
 	gb_connection_destroy(vib->connection);
 	kfree(vib);
@@ -275,34 +188,6 @@ static struct greybus_driver gb_vibrator_driver = {
 	.disconnect	= gb_vibrator_disconnect,
 	.id_table	= gb_vibrator_id_table,
 };
-
-static __init int gb_vibrator_init(void)
-{
-	int retval;
-
-	retval = class_register(&vibrator_class);
-	if (retval)
-		return retval;
-
-	retval = greybus_register(&gb_vibrator_driver);
-	if (retval)
-		goto err_class_unregister;
-
-	return 0;
-
-err_class_unregister:
-	class_unregister(&vibrator_class);
-
-	return retval;
-}
-module_init(gb_vibrator_init);
-
-static __exit void gb_vibrator_exit(void)
-{
-	greybus_deregister(&gb_vibrator_driver);
-	class_unregister(&vibrator_class);
-	ida_destroy(&minors);
-}
-module_exit(gb_vibrator_exit);
+module_greybus_driver(gb_vibrator_driver);
 
 MODULE_LICENSE("GPL v2");
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
