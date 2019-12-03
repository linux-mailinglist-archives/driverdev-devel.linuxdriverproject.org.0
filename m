Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193D1110160
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 16:39:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4530B87E78;
	Tue,  3 Dec 2019 15:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T7fT6CHzphrE; Tue,  3 Dec 2019 15:39:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98FEA87DC5;
	Tue,  3 Dec 2019 15:39:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48A241BF378
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 15:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 41F4585D7D
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 15:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rai9PNKrHp2W for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 15:39:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f74.google.com (mail-qv1-f74.google.com
 [209.85.219.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C89D85478
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 15:39:23 +0000 (UTC)
Received: by mail-qv1-f74.google.com with SMTP id bt18so2410907qvb.19
 for <devel@driverdev.osuosl.org>; Tue, 03 Dec 2019 07:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=4jy6twGZA9frX8ztxdk66Iv5FirWeTzZhcy0moRAfHk=;
 b=ob8ZnNMh6QY6qs0JA+hfj+HDt6+gNkgQPtjtwa1ZZjY3CZLcSUTADLRKRhEXzSeCv+
 H6pdo2I6hntlUtUgPdQZafnRzicZVzofx4uleyfeqyF9fl2k/qYLh9IThZ7V4aJwbomB
 G+Hl5HVRzmgWXm/Q1PMnumi1jWf3oFAn0lf2zneKAbhnWOeM7DB/Zf+4Lkv9WjA3vKUS
 IKBGKyqL3IRH+f+RE5DpJMssZiC4jXKyF8cGmXEb9et8HTxa51+VRZvbQsh4MssiyrSO
 7AAodFKvjMgkqSNMcaZ8A081kH21CjlHnXFDGLS47/K0Z83mxB3GQEw6bRGAUuycwYXa
 Jguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=4jy6twGZA9frX8ztxdk66Iv5FirWeTzZhcy0moRAfHk=;
 b=KVr/nMQrdB4Vv4cnzV1B+fYDZiHaZ4Zu/GMwVyYnmZqVbMF7IKfhL8ovQ5z+eNdEt6
 GP2K63vsVDgTIDMIPH7vb1Gj7SUP/8Zlr5nuh3V11Dg34b6DycqxU+R9FRqV71Xh3pWY
 4PZ6uMYkckllKRU0GTmE8Z5TUvuIQkWFUE3cfxKMG6stqQt3/DzIufaYpoGUpAQtGn5Y
 R9munQ8Cky/Kva66DbCi7HePSrQjpfazWJgGS85i9STfIKjSJyhuYHHAGTUaDfV8Ln27
 Zm068JhO1034OtvqEmcoK6uj04puCCdUIbuR/4OZWgtQhvKMwGckSYDH949C7se9wVgo
 CRCA==
X-Gm-Message-State: APjAAAXCJCworerfVAHzwJA+xxrv0bBE2JN3I6oojvjAReFCgO0ywCuK
 osv4OCtpuDOwE+6havk5lZkLc2g/L41vr7I4/LI=
X-Google-Smtp-Source: APXvYqyEiEmEFpR82UJm3zuIuu2cB907/+QSRyOEyJt4OFsHsnVCYZ/3ByRXSkNxN2vYbYrROJYv5pNfjNDeXNvYY+s=
X-Received: by 2002:a0c:8a31:: with SMTP id 46mr5846405qvt.8.1575387562479;
 Tue, 03 Dec 2019 07:39:22 -0800 (PST)
Date: Tue,  3 Dec 2019 10:39:21 -0500
Message-Id: <20191203153921.70540-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH] staging: vchiq: call unregister_chrdev_region() when driver
 registration fails
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, wahrenst@gmx.net, nsaenzjulienne@suse.de
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

This undoes the previous call to alloc_chrdev_region() on failure,
and is probably what was meant originally given the label name.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 02148a24818a..4458c1e60fa3 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3309,7 +3309,7 @@ static int __init vchiq_driver_init(void)
 	return 0;
 
 region_unregister:
-	platform_driver_unregister(&vchiq_driver);
+	unregister_chrdev_region(vchiq_devid, 1);
 
 class_destroy:
 	class_destroy(vchiq_class);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
