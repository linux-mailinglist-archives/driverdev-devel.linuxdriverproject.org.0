Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6185E10450F
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 21:29:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6A90524E7D;
	Wed, 20 Nov 2019 20:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DNtf1Y8KENdG; Wed, 20 Nov 2019 20:29:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B779724CEB;
	Wed, 20 Nov 2019 20:29:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C20461BF296
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 20:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE5AD878B4
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 20:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qAyGAknudecf for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 20:29:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f73.google.com (mail-qv1-f73.google.com
 [209.85.219.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C936887858
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 20:29:07 +0000 (UTC)
Received: by mail-qv1-f73.google.com with SMTP id g33so630394qvd.7
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 12:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=uPmLZZCejalz8A54ySd1wPnJCHxor2YXnOmkuoyaQOU=;
 b=jvp+499mVebR2dUuEDOMyy856eSyTT90BV1Ic4Az23KAO8eaObr16mHJRJ/uE5qWBo
 j6E20sKyACUTqyzt50hB+2XgaMcg61++rEy6XshG9kgkExnUuHYdw0j2RnZv/h/U0MgU
 rR7FSt5lpDjy1EJwKeXQNTFcIXVoeOIMQE8vTEztMG6/kCfbiyAVmqwl+1DqIZlIyG2a
 9dpCGk+np0yJdyHHC063RNfh7p5iSwB7TdanWBt3EQ0koKIJoYB0E6Fl71vcjAJfXi9W
 2ue3lBA34kEMPUj9kfSx1uWsUElj9Duz0Fro7mI/1rCUrIsF1xXfBzejoK+eIu0Lox1K
 iV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=uPmLZZCejalz8A54ySd1wPnJCHxor2YXnOmkuoyaQOU=;
 b=WPAdZCOIxA6nARkbQwrw0G0QauJM6rx1v9s6ft0Fhw13/9/yut8HedXqv4r9xwfBEf
 gR54qgkL+EuV00LZMVpIrbEVMM97cvwm0ElNRbOjbMhNjevkuofUP9UWhB2pRV580pN/
 wxG8tudW8iVbLtbFFjRAhVRQGDmzMiWuGmcqSWiL3RAZKGBUjZWv2zt7IJYDeUYg9cOP
 ajavlgBzttx3UI8D7uVWWnhOye/raz7T8EWGtq0G0fqg91Vy4h4T/wtRjYaqSOd2fdNJ
 xn5eQPGikeZVwLaSyolGyEXAl7u6Orq6D7Fu61EVyGCf3xwjsxs+yEgM5zIDSfNLb8yz
 qE6A==
X-Gm-Message-State: APjAAAU1k9mfwoaAwT5E50VwOi1Pvy4SbWguInDfauqpa6r5i8R0y0kM
 9zvqjyfxh2yIopLT4S1ZPF6W8WOmKaDqelF6XZs=
X-Google-Smtp-Source: APXvYqxDFFCxPc0Q3Yw//PHQplyRnZWFoYyUKRG/tZkj0B6DcDvf/WMg3xV38ZEAwXqBNvme6ij1Y/7m5PZZ5Dl/4uk=
X-Received: by 2002:a37:9d0:: with SMTP id 199mr4363375qkj.356.1574281267199; 
 Wed, 20 Nov 2019 12:21:07 -0800 (PST)
Date: Wed, 20 Nov 2019 15:21:01 -0500
In-Reply-To: <20191120202102.249121-1-marcgonzalez@google.com>
Message-Id: <20191120202102.249121-4-marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2 3/4] staging: vchiq: Refactor indentation in vchiq_dump_*
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
2.24.0.432.g9d3f5f5b63-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
