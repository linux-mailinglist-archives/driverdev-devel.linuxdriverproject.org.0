Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EF2103F98
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 16:45:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A18386D6A;
	Wed, 20 Nov 2019 15:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G1_J44KuvvQo; Wed, 20 Nov 2019 15:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C83486D52;
	Wed, 20 Nov 2019 15:45:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90C111BF97F
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8CB0288496
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IbE3vk+oVND for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 15:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com
 [209.85.214.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA48988466
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 15:45:06 +0000 (UTC)
Received: by mail-pl1-f201.google.com with SMTP id q1so100782pll.22
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 07:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=PwlClLLzHlXjf5eFZEfYM9gM2VVZrKncA56wpIlNj5Q=;
 b=WdCkicJU+St3RlVN+d0kgDJaEMPqPoTboNp7vliwcbJpLxJ0vWoP6e/3LBC4/uQew9
 fV/vZol1B3NR32pyug9e20UaF5Vk04625LSSz3KZyUIYR43d6kdiHL737S0cFxrCNrN/
 OcFSb5tL6pTMKp9f42uk6LIrctTqA7HxiTs9R54bpaWzR949wv2mMw/lX6PzEUMT1Q9b
 d7mYt9ng+vHPnEFddtXS3AKGnm4uCNESAsi7+opnIBWz2Czt+LDQNuwa7xYKxICCuWeT
 IAjPbgESF8kx8n4tvluuYKEv9p8eqM+tulP9r3c4UwFGBM0f3hrGH4IBsi2HMul0Cdum
 h7Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=PwlClLLzHlXjf5eFZEfYM9gM2VVZrKncA56wpIlNj5Q=;
 b=sgUzQ+DlukodCANR2YZkrhyAsQx2PpuYYBUGzz9/kQ+J3JpxQivsQ6hWQZi7sOT2eF
 aW71V9pj51mrBgQkuPPlL5Mf9wEToFe35c8z46nV1bzVcl2sY2sIWT7ybITaNAjU3+WY
 Q5WGMtJsRTiMbkkDMgnMEBukO1LJDMz7Hj5QWiOTmJikLa1Q4lWJue+nYx8FaA5r9OtW
 DUSA3SkIy7GIsxBT/gzU+O5VNVmQ/UoX0QY0fohGdoimnB6Eegb+C2jTJ7cxBoRER7io
 dsD5JBJRsln5nlmD4xYRUXNn0OHYrh31y+ILRei3KR6UE+J6c5ejTtpP3bL2YsKRFuUP
 rHuw==
X-Gm-Message-State: APjAAAWp0JxYEJ7uEYEgRURaGEr1psoIpZcThqAmuMbi9AtidxNYm+oy
 bLe69qhKf3FOwMfsHKCsPrmIs2I8SJSGnwc1cvo=
X-Google-Smtp-Source: APXvYqyyrl48IB0MISkZAYi9grHAw0sH6/UqguoAu0QRll1UqGBom35yQl4ueVnxR7n7uUp8bdeMQ8UDz9Ft/IUgmH0=
X-Received: by 2002:a0c:fecc:: with SMTP id z12mr3044504qvs.189.1574264211694; 
 Wed, 20 Nov 2019 07:36:51 -0800 (PST)
Date: Wed, 20 Nov 2019 10:36:47 -0500
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Message-Id: <7c0baa2888cef348b96dab65f2726f1e1d8c0a27.1574253964.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 2/3] staging: vchiq: Refactor indentation in vchiq_dump_*
 functions
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Doing this helps with readability, and makes
the logic easier to follow.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 104 +++++++++---------
 1 file changed, 53 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 942b4768c88e..8f9cfa083264 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2076,40 +2076,40 @@ void
 vchiq_dump(void *dump_context, const char *str, int len)
 {
 	struct dump_context *context = (struct dump_context *)dump_context;
+	int copy_bytes;
 
-	if (context->actual < context->space) {
-		int copy_bytes;
+	if (context->actual >= context->space)
+		return;
 
-		if (context->offset > 0) {
-			int skip_bytes = min_t(int, len, context->offset);
+	if (context->offset > 0) {
+		int skip_bytes = min_t(int, len, context->offset);
 
-			str += skip_bytes;
-			len -= skip_bytes;
-			context->offset -= skip_bytes;
-			if (context->offset > 0)
-				return;
-		}
-		copy_bytes = min_t(int, len, context->space - context->actual);
-		if (copy_bytes == 0)
+		str += skip_bytes;
+		len -= skip_bytes;
+		context->offset -= skip_bytes;
+		if (context->offset > 0)
 			return;
-		if (copy_to_user(context->buf + context->actual, str,
-			copy_bytes))
+	}
+	copy_bytes = min_t(int, len, context->space - context->actual);
+	if (copy_bytes == 0)
+		return;
+	if (copy_to_user(context->buf + context->actual, str,
+			 copy_bytes))
+		context->actual = -EFAULT;
+	context->actual += copy_bytes;
+	len -= copy_bytes;
+
+	/*
+	 * If the terminating NUL is included in the length, then it
+	 * marks the end of a line and should be replaced with a
+	 * carriage return.
+	 */
+	if ((len == 0) && (str[copy_bytes - 1] == '\0')) {
+		char cr = '\n';
+
+		if (copy_to_user(context->buf + context->actual - 1,
+				 &cr, 1))
 			context->actual = -EFAULT;
-		context->actual += copy_bytes;
-		len -= copy_bytes;
-
-		/*
-		 * If the terminating NUL is included in the length, then it
-		 * marks the end of a line and should be replaced with a
-		 * carriage return.
-		 */
-		if ((len == 0) && (str[copy_bytes - 1] == '\0')) {
-			char cr = '\n';
-
-			if (copy_to_user(context->buf + context->actual - 1,
-				&cr, 1))
-				context->actual = -EFAULT;
-		}
 	}
 }
 
@@ -2134,34 +2134,36 @@ vchiq_dump_platform_instances(void *dump_context)
 		struct vchiq_service *service = state->services[i];
 		struct vchiq_instance *instance;
 
-		if (service && (service->base.callback == service_callback)) {
-			instance = service->instance;
-			if (instance)
-				instance->mark = 0;
-		}
+		if (!service || service->base.callback != service_callback)
+			continue;
+
+		instance = service->instance;
+		if (instance)
+			instance->mark = 0;
 	}
 
 	for (i = 0; i < state->unused_service; i++) {
 		struct vchiq_service *service = state->services[i];
 		struct vchiq_instance *instance;
 
-		if (service && (service->base.callback == service_callback)) {
-			instance = service->instance;
-			if (instance && !instance->mark) {
-				len = snprintf(buf, sizeof(buf),
-					"Instance %pK: pid %d,%s completions %d/%d",
-					instance, instance->pid,
-					instance->connected ? " connected, " :
-						"",
-					instance->completion_insert -
-						instance->completion_remove,
-					MAX_COMPLETIONS);
-
-				vchiq_dump(dump_context, buf, len + 1);
-
-				instance->mark = 1;
-			}
-		}
+		if (!service || service->base.callback != service_callback)
+			continue;
+
+		instance = service->instance;
+		if (!instance || instance->mark)
+			continue;
+
+		len = snprintf(buf, sizeof(buf),
+			       "Instance %pK: pid %d,%s completions %d/%d",
+			       instance, instance->pid,
+			       instance->connected ? " connected, " :
+			       "",
+			       instance->completion_insert -
+			       instance->completion_remove,
+			       MAX_COMPLETIONS);
+
+		vchiq_dump(dump_context, buf, len + 1);
+		instance->mark = 1;
 	}
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
