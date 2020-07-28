Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7645B231127
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 20:00:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 110DA86135;
	Tue, 28 Jul 2020 17:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7jdohKmfgeTe; Tue, 28 Jul 2020 17:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FCBC8480D;
	Tue, 28 Jul 2020 17:59:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2BD31BF232
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 17:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 677382039C
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 17:59:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CMV6G6bYY1Dx for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 17:59:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A2362037B
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 17:59:52 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id k18so4139449pfp.7
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 10:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1CuR54gMeaVLFpH/ii6AIR06fUc7GcpAwE4BlLar214=;
 b=ea2mUzTqB0NNb90vADy/ykGFBld0CZrTogIlU/fbQucYUMl6NoCOerMw/VtAhIkLbv
 dW78rlPhehg0esQzTuOynId+vTaisvn/6y9ldNO6mjnxhegXmyDrWbiAt23bIWFfmWEK
 Bo2/P1HoRVzMp2w54IbBh3ydHSSzVquK/2ZsXPaSBEdUJmLuruAqBIQ2nYw2iNxWUMK5
 1iY/c23K18Tsy1U4UlyB17FJlahhjGKM5rGzdAslbIQPNTNQQ1/rryqyVTi4WR4GwlcM
 S8auaLAVs+Lo77dqe2C3ksBeODWTeaQj48f3n9mNdI33YTgP7RHaDCwkMd6uEiRB36ln
 Jq8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1CuR54gMeaVLFpH/ii6AIR06fUc7GcpAwE4BlLar214=;
 b=O7eVzdsna3NJpgbRstTIj5LQ0RPJaSRJKwePhqPMK/kHJXmSEcaeESI30eOLedbl/G
 SXM0WO31wpRu7RwKLlyNXBPwdfyxILDitIUc96RRMlrk5LjTAuzdASCPTj/V6u7cMC4B
 W0cyXU413oQD/+R9CpnAndjRq1hTEeD6aINmB5YugDQDDOSpEwmRUFHaFRpNXH1ZvGsb
 oitt0P/ZX1JGh/UrVcgqirsYbqxetj5yv4loRnOIrylkmoeMqCmybXU8hbm8hqTGqg3Y
 dXCAkhzAMuo046XcUbTaMBKV0oMDnSjqzie9AFAqE8trg6p5aNjpHun4MAqhpV5JnGD7
 tzvQ==
X-Gm-Message-State: AOAM533mIEE2GSmv/8VmFTfd/Q516Jlj0oleE8o6Tve85m5v8tuJ/wKF
 T/oFxu4VXjH3W88YwyD5Crw=
X-Google-Smtp-Source: ABdhPJxk9Pu/1J38jTEqDbP43EL492G7ozhLG2/AJBBatUyuF/mhrP+oaqvBLLzDl7+C3IW09tHVwA==
X-Received: by 2002:a63:8b42:: with SMTP id j63mr26038216pge.131.1595959192115; 
 Tue, 28 Jul 2020 10:59:52 -0700 (PDT)
Received: from localhost.localdomain ([132.154.123.243])
 by smtp.gmail.com with ESMTPSA id s4sm5519263pfh.128.2020.07.28.10.59.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 10:59:51 -0700 (PDT)
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 hridya@google.com, surenb@google.com
Subject: [PATCH] staging: android: ashmem: used const keyword
Date: Tue, 28 Jul 2020 23:29:35 +0530
Message-Id: <20200728175935.2130-1-dhiraj.sharma0024@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Dhiraj Sharma <dhiraj.sharma0024@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I ran checkpatch.pl script which reported a warning to use const keyword
on line 370.Therefore I made this change.

Signed-off-by: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index c05a214191da..f9cfa15b785f 100644
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
