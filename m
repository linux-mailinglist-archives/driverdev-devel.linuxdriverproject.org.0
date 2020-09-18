Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD28826F9A8
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 11:55:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5CC5877E4;
	Fri, 18 Sep 2020 09:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Ra3we845T6L; Fri, 18 Sep 2020 09:55:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26FDA877DA;
	Fri, 18 Sep 2020 09:55:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D68CF1BF2A3
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF0A22E1F4
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eITyfT6TidPA for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 09:55:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by silver.osuosl.org (Postfix) with ESMTPS id 421542E1F2
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 09:55:11 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MZCSt-1jxbbx2VX7-00V5LE; Fri, 18 Sep 2020 11:54:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-rpi-kernel@lists.infradead.org,
	nsaenzjulienne@suse.de
Subject: [PATCH 1/5] staging: vchiq: rework compat handling
Date: Fri, 18 Sep 2020 11:54:37 +0200
Message-Id: <20200918095441.1446041-2-arnd@arndb.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200918095441.1446041-1-arnd@arndb.de>
References: <20200918095441.1446041-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:AXDyUvFJw2DyJsOPhLYVgH/4OvJMTVEn+LtheYL0JPjwAHUp0Du
 +vAy5Q2G6zyNv7kxlcE6R6Dj9BG6c4YA4EwD3JYS64j/PJwTEsvrexvnOxMkmqQxLRdxK6T
 QZcxsWVEMnqHmtr++uZsCLntjAay1e+ZkQszrXYEX88CrCfoxtVPgloLoB8eWuTiGueP2s/
 vwaRLl9DGj1xCTUVbYWfw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:hncp2bSKLws=:88OagQPM7B75K8RNpdMKx8
 JiTt1Ww4rF4Ilx5rugsUk7vxZuHsMDsn3nL/E4chBg0r9Tk8wo5Z7xN4a4NbAoQ6ifXfRrLqs
 AKQhgTWwn9SdljJaMumjOF07WUMg4NbRMz5ueHhYNQy9KPf+3bVXNp7g7RMvEBq6crrBwQCz7
 1IYxw+qo+VtQzMwtrz+oCxsfO9b87lUFuwn6Mw3ZFXD0df4J9jty74Yrb346vlNTditskRC56
 FbHoK/79WrZHqWzlFZ9M+CCmgibl6I9N9LEPj+W8H23xUVj8JgKCrF7u/NurwRBof+TqdZ8Pu
 21xs2XJ9wOKpuLjUpz61hnwRjuVgCZuPC8FX+wXTeV9rUw1qxS+XdsKXmSliXGX83NEG5qs1m
 6jT/5ir4hir4WwLqyLLlHrwyzNhlgOzhALw7l6staPfGz2COcqxHNc72vPy5RrhzsY5EdMr0Y
 Jd4yxml0DYvt7Ll7WN5oTrZklU/b7Rm7FNk4EusebTttWuiN3TGbLdHjQXu7ZgGYyjiRfDcDX
 2D/PHMNgNRhGfXVF5ugl0Pqkbt6n5lRzqDGPWjoACuS0ooi2SzC85wJOenYM9jaoonolqYUTR
 Tp7NDjpvLgXVWPQCQFzk/tuAxfR+whBh6tPMpsctDmp73kmYYVlZcGfwmUW+sBMmgFiadMBXj
 avAYO/Mb1tMggM/l+4J/pAXdlV8N9H6ndnaC5YYEyMu0LuW5+VhYyW3UjzVFK9zujKLbxgWKs
 5l9DozeHVO06VuK+REUiwA0clhnVJIvGh7BCDO+rkCDeFT0wjRqBO2CBTtTFI881HhGHIlUg0
 HPauzL39bvgpaBDsDemduwCdQsF1sWdW1sVGDoVz8gU04tE1ha53/InuFiw9KcKhTUQNrZq
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
Cc: devel@driverdev.osuosl.org, stefan.wahren@i2se.com,
 Arnd Bergmann <arnd@arndb.de>, gregkh@linuxfoundation.org,
 marcgonzalez@google.com, linux-kernel@vger.kernel.org, hch@lst.de,
 bcm-kernel-feedback-list@broadcom.com, jamal.k.shareef@gmail.com,
 inf.braun@fau.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The compat handlers for VCHIQ_IOC_QUEUE_MESSAGE32 and
VCHIQ_IOC_GET_CONFIG32 can simply call the underlying implementations
that are already separate functions rather than using copy_in_user to
simulate the native 64-bit interface for the full ioctl handler.

vchiq_ioc_queue_message gets a small update to the calling
conventions to simplify the compat version by directly
returning a normal errno value.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 109 +++++++++---------
 1 file changed, 56 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index d4d811884861..56a38bec848a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -765,12 +765,13 @@ static ssize_t vchiq_ioc_copy_element_data(void *context, void *dest,
  *   vchiq_ioc_queue_message
  *
  **************************************************************************/
-static enum vchiq_status
+static int
 vchiq_ioc_queue_message(unsigned int handle,
 			struct vchiq_element *elements,
 			unsigned long count)
 {
 	struct vchiq_io_copy_callback_context context;
+	enum vchiq_status status = VCHIQ_SUCCESS;
 	unsigned long i;
 	size_t total_size = 0;
 
@@ -785,8 +786,14 @@ vchiq_ioc_queue_message(unsigned int handle,
 		total_size += elements[i].size;
 	}
 
-	return vchiq_queue_message(handle, vchiq_ioc_copy_element_data,
-				   &context, total_size);
+	status = vchiq_queue_message(handle, vchiq_ioc_copy_element_data,
+				     &context, total_size);
+
+	if (status == VCHIQ_ERROR)
+		return -EIO;
+	else if (status == VCHIQ_RETRY)
+		return -EINTR;
+	return 0;
 }
 
 /****************************************************************************
@@ -1020,9 +1027,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 			if (copy_from_user(elements, args.elements,
 				args.count * sizeof(struct vchiq_element)) == 0)
-				status = vchiq_ioc_queue_message
-					(args.handle,
-					elements, args.count);
+				ret = vchiq_ioc_queue_message(args.handle, elements,
+							      args.count);
 			else
 				ret = -EFAULT;
 		} else {
@@ -1550,55 +1556,53 @@ struct vchiq_queue_message32 {
 static long
 vchiq_compat_ioctl_queue_message(struct file *file,
 				 unsigned int cmd,
-				 unsigned long arg)
+				 struct vchiq_queue_message32 __user *arg)
 {
-	struct vchiq_queue_message __user *args;
-	struct vchiq_element __user *elements;
+	struct vchiq_queue_message args;
 	struct vchiq_queue_message32 args32;
-	unsigned int count;
-
-	if (copy_from_user(&args32,
-			   (struct vchiq_queue_message32 __user *)arg,
-			   sizeof(args32)))
-		return -EFAULT;
-
-	args = compat_alloc_user_space(sizeof(*args) +
-				       (sizeof(*elements) * MAX_ELEMENTS));
+	struct vchiq_service *service;
+	int ret;
 
-	if (!args)
+	if (copy_from_user(&args32, arg, sizeof(args32)))
 		return -EFAULT;
 
-	if (put_user(args32.handle, &args->handle) ||
-	    put_user(args32.count, &args->count) ||
-	    put_user(compat_ptr(args32.elements), &args->elements))
-		return -EFAULT;
+	args = (struct vchiq_queue_message) {
+		.handle   = args32.handle,
+		.count    = args32.count,
+		.elements = compat_ptr(args32.elements),
+	};
 
 	if (args32.count > MAX_ELEMENTS)
 		return -EINVAL;
 
-	if (args32.elements && args32.count) {
-		struct vchiq_element32 tempelement32[MAX_ELEMENTS];
+	service = find_service_for_instance(file->private_data, args.handle);
+	if (!service)
+		return -EINVAL;
 
-		elements = (struct vchiq_element __user *)(args + 1);
+	if (args32.elements && args32.count) {
+		struct vchiq_element32 element32[MAX_ELEMENTS];
+		struct vchiq_element elements[MAX_ELEMENTS];
+		unsigned int count;
 
-		if (copy_from_user(&tempelement32,
-				   compat_ptr(args32.elements),
-				   sizeof(tempelement32)))
+		if (copy_from_user(&element32, args.elements,
+				   sizeof(element32))) {
+			unlock_service(service);
 			return -EFAULT;
+		}
 
 		for (count = 0; count < args32.count; count++) {
-			if (put_user(compat_ptr(tempelement32[count].data),
-				     &elements[count].data) ||
-			    put_user(tempelement32[count].size,
-				     &elements[count].size))
-				return -EFAULT;
+			elements[count].data =
+				compat_ptr(element32[count].data);
+			elements[count].size = element32[count].size;
 		}
-
-		if (put_user(elements, &args->elements))
-			return -EFAULT;
+		ret = vchiq_ioc_queue_message(args.handle, elements,
+					      args.count);
+	} else {
+		ret = -EINVAL;
 	}
+	unlock_service(service);
 
-	return vchiq_ioctl(file, VCHIQ_IOC_QUEUE_MESSAGE, (unsigned long)args);
+	return ret;
 }
 
 struct vchiq_queue_bulk_transfer32 {
@@ -1866,35 +1870,34 @@ struct vchiq_get_config32 {
 static long
 vchiq_compat_ioctl_get_config(struct file *file,
 			      unsigned int cmd,
-			      unsigned long arg)
+			      struct vchiq_get_config32 __user *arg)
 {
-	struct vchiq_get_config __user *args;
 	struct vchiq_get_config32 args32;
+	struct vchiq_config config;
+	void __user *ptr;
 
-	args = compat_alloc_user_space(sizeof(*args));
-	if (!args)
-		return -EFAULT;
-
-	if (copy_from_user(&args32,
-			   (struct vchiq_get_config32 __user *)arg,
-			   sizeof(args32)))
+	if (copy_from_user(&args32, arg, sizeof(args32)))
 		return -EFAULT;
+	if (args32.config_size > sizeof(config))
+		return -EINVAL;
 
-	if (put_user(args32.config_size, &args->config_size) ||
-	    put_user(compat_ptr(args32.pconfig), &args->pconfig))
+	vchiq_get_config(&config);
+	ptr = compat_ptr(args32.pconfig);
+	if (copy_to_user(ptr, &config, args32.config_size))
 		return -EFAULT;
 
-	return vchiq_ioctl(file, VCHIQ_IOC_GET_CONFIG, (unsigned long)args);
+	return 0;
 }
 
 static long
 vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 {
+	void __user *argp = compat_ptr(arg);
 	switch (cmd) {
 	case VCHIQ_IOC_CREATE_SERVICE32:
 		return vchiq_compat_ioctl_create_service(file, cmd, arg);
 	case VCHIQ_IOC_QUEUE_MESSAGE32:
-		return vchiq_compat_ioctl_queue_message(file, cmd, arg);
+		return vchiq_compat_ioctl_queue_message(file, cmd, argp);
 	case VCHIQ_IOC_QUEUE_BULK_TRANSMIT32:
 	case VCHIQ_IOC_QUEUE_BULK_RECEIVE32:
 		return vchiq_compat_ioctl_queue_bulk(file, cmd, arg);
@@ -1903,9 +1906,9 @@ vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	case VCHIQ_IOC_DEQUEUE_MESSAGE32:
 		return vchiq_compat_ioctl_dequeue_message(file, cmd, arg);
 	case VCHIQ_IOC_GET_CONFIG32:
-		return vchiq_compat_ioctl_get_config(file, cmd, arg);
+		return vchiq_compat_ioctl_get_config(file, cmd, argp);
 	default:
-		return vchiq_ioctl(file, cmd, arg);
+		return vchiq_ioctl(file, cmd, (unsigned long)argp);
 	}
 }
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
