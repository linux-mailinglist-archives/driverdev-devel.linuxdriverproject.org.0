Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 165C72720C6
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5DC5D2052F;
	Mon, 21 Sep 2020 10:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q+EncERyxRLZ; Mon, 21 Sep 2020 10:25:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C64E20791;
	Mon, 21 Sep 2020 10:21:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 557421BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52B3E871E1
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i1GQ2ji9vOo0 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 62809871EB
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:14 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a9so12042151wmm.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Go04h4cBZb8oManNnBUCEv0xT9mbFOVFD/8tb3hzAWA=;
 b=B0KJNIujqWSJKiTDeZnTlqwipUX6r3YfWEvq0cg/FTY1nbvCf44+V12zE/P+TK8yc4
 IYJMTjR653cKibE9xcUEnJXi/bcA6biRg626F6nkeixexu3kBXmM+EaMFJ7ex+L6QatM
 IMdqzflT53PYZViuhqE9bVztQ959JmLH6cbkK6lnMv5ayh0JId6a+5gowWauFiivSiPq
 LQsMn/hJtPZ8+hjrO8OVN6MYO+bZNdCWBU43/2biQSM9VxjIutjMrg2pwXkyWM8nP2e0
 lm0zNJTdizABDmwyy6uVAeNjkv6/+HHrAYJi1/rQMyEkxI713J6IcqvUykAl/OR2KR8c
 /BVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Go04h4cBZb8oManNnBUCEv0xT9mbFOVFD/8tb3hzAWA=;
 b=ilrf4fX5Pr40Gh1hDdTZ6ghxU+u1gWoHqLOB8KR4xXfLuK7H1hXotRMjUNywqGZPbO
 /v89M8fTv+erPgJkr0W2Ru0SxIz0UYjLuwtll2x+9oDucbLHOB6gYIDa8Z9U4/PKu77F
 o02BZKUGrDcAFlj3UBYrH6lQYu5C2U+w4OtyfdTX5QjYc9u224q+RHvsXyNQd48iI8qe
 cfAjFSzzUTycpg35LBoEcKHkOic5V6GFm/cBLrkceZY59aZVRqArlmxMtnMiFwa31i1f
 JKfzD1uJ2lcAC6aXFYJarAWPLRsQQwunUmDt8f8gE4VfDmEY3qmyvqJSTsXfzsIwFkOh
 THww==
X-Gm-Message-State: AOAM5331GnfjXoyeMTt6K6kdXgJRIr621etEnGmVHp9yFq82Sb+L4pBE
 ENUhEo64qb7W6Mki99SwhQMcRA==
X-Google-Smtp-Source: ABdhPJznbbQ885WNgPecxK2K2Os4ZRphFdWauz9bE1BZIsLl7gLHwuQXxk1MFKHFhYL5ZQZwL9U6/w==
X-Received: by 2002:a7b:c0ca:: with SMTP id s10mr29337577wmh.103.1600683672894; 
 Mon, 21 Sep 2020 03:21:12 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:12 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 43/49] staging: media: zoran: add vidioc_g_parm
Date: Mon, 21 Sep 2020 10:20:18 +0000
Message-Id: <1600683624-5863-44-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding vidioc_g_parm made v4l compliance happy.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 0b4bfc184b57..46bf8b32d57a 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -2120,6 +2120,14 @@ static int zoran_mmap(struct file *file, struct vm_area_struct *vma)
 	return res;
 }
 
+static int zoran_g_parm(struct file *file, void *priv, struct v4l2_streamparm *parm)
+{
+	if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+		return -EINVAL;
+
+	return 0;
+}
+
 /*
  * Output is disabled temporarily
  * Zoran is picky about jpeg data it accepts. At least it seems to unsupport COM and APPn.
@@ -2127,6 +2135,7 @@ static int zoran_mmap(struct file *file, struct vm_area_struct *vma)
  */
 static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_querycap		    = zoran_querycap,
+	.vidioc_g_parm			    = zoran_g_parm,
 	.vidioc_s_selection		    = zoran_s_selection,
 	.vidioc_g_selection		    = zoran_g_selection,
 	.vidioc_enum_input		    = zoran_enum_input,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
