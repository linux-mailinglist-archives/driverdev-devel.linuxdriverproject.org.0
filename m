Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876A71966E1
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 16:16:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F801889B5;
	Sat, 28 Mar 2020 15:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-BBaIcp-g1F; Sat, 28 Mar 2020 15:15:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 64460889A9;
	Sat, 28 Mar 2020 15:15:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C8EE1BF584
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 15:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 25E3B203A0
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 15:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nEUjCiXgJcqW for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 15:15:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 088912039C
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 15:15:54 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id e9so4027071wme.4
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 08:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/c3uFVYUYQl/2XwBUimjSFjQvuiMRfSeEykM9N3l/I8=;
 b=JH8pKoaVaZS2J6ZoIu6qROkA7P8WHyc9ogiGRDBk3Np3vSo3wt0gSEM0W/vx3cIN0t
 /6yWD1DRFKp2WvJmZpxp2XjwVUtdFUqXXrOjgM5rGrcSnKyj3g+75WvT6mKPO/PwMqpS
 fYH6fApK1aslfPnW8GtHi/SrKZdGQg4/VbQoLajkYpLuADKLo2YOEJtV9iJe5kJx5iTr
 Iwz/NRnjTfSwr2ZH9QHnixEgCIJF9SJ1B1yveVIVAFXvc3wCtf52rOJCmjCTicvzo2yU
 A2LrFYcmwWZgAQVD9NhvEUNau9hYi8s80G6MdgXlIpgEuCDiGSHfUZNkmDAsl4btk98I
 j10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/c3uFVYUYQl/2XwBUimjSFjQvuiMRfSeEykM9N3l/I8=;
 b=cY42Vh8lxdxdUi8W+BEehGymhX7thmnoQqAxLUCy4zg3WdNw3syNdIB/M+7voVH+kV
 RHTgZ5PcHsr7yMSC8SpqC/4vbur3WpGqSD3YsM4oZTQF29YQ74JNHtrkUBlC4LtzF228
 eeJKyXeKwCfxJWJNuKwafNhpxTz5+VKErGszZM8f28tuSFmpr0zfEk/fb1RSXLTySjIh
 0D9WgxKWvCMESY/TvJnugmEF8Trx6/BM2w2LiYsaueL+XFvecNq9vpFr55KatbHq+NdY
 c/rrdLFmCCGCxuLS736S+UeSFctABcmwO9Tm8utrOhp2CFv3TncgrMWA5HqNbJoQIVr0
 8ZMA==
X-Gm-Message-State: ANhLgQ2/SceR6wVOe2iSN/FPtcfWa9p/Yl7SJi/N0p3hZPdwL1bckIcn
 5vDvAyN5t20kZtAwP7gRzd4=
X-Google-Smtp-Source: ADFU+vtPbs4QlSi8mM/oGtaMDDmrCshfozdELZ+oX2z1vJJhlFbjHXNTskIEua0Q9Y80pyqtygO7/A==
X-Received: by 2002:a1c:8149:: with SMTP id c70mr4277679wmd.123.1585408552450; 
 Sat, 28 Mar 2020 08:15:52 -0700 (PDT)
Received: from linux.user.selfnet.de ([2001:7c7:212a:d400:d0b1:54e8:4350:d529])
 by smtp.googlemail.com with ESMTPSA id 5sm10321488wrs.20.2020.03.28.08.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 08:15:52 -0700 (PDT)
From: SandeshKenjanaAshok <sandeshkenjanaashok@gmail.com>
To: 
Subject: [PATCH] staging: android: ashmem: Declared file operation with const
 keyword
Date: Sat, 28 Mar 2020 16:15:23 +0100
Message-Id: <20200328151523.17516-1-sandeshkenjanaashok@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 sandeshkenjanaashok@gmail.com,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpatch.pl script.

Signed-off-by: SandeshKenjanaAshok <sandeshkenjanaashok@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 8044510d8ec6..fbb6ac9ba1ab 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static const struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
