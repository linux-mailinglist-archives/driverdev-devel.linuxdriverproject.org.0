Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EAC1D119B
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 13:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60A0387F7C;
	Wed, 13 May 2020 11:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVA4UtveiF0D; Wed, 13 May 2020 11:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4047F86A4D;
	Wed, 13 May 2020 11:41:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DE181BF4DB
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 11:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9A1CD86303
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 11:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Df1n3VpPzOPs for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 11:41:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3D32686228
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 11:41:30 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id x2so7886946pfx.7
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 04:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jvvYDsDzRmhFLM4A9oVavXTflTQql5yNcbzYUVmhfHM=;
 b=LcjCZBTk984pSAqEaQLI7C5L6PnGB68x8usQUPH8/EGOhPZw2EZWvpvSHY2tXdJ9kB
 DcLAv5fSjF+Pfh62wm18ADjpRxFhfs+V/NcnJGMX6cnqtxRHtzKCf19bTiD2WtlFsltO
 eszN19ys5wXoK0OJl7R9miz4r65j0BI29rVfcfed0IQO5SyjE1JXNDpctxWnQzIWVYah
 MCGp2YTIAb1DY8PHDdvfRxQcs5aeESqLCQB2Jo2s2ukS2cJ6umz0lp1aE0xloUVJvUhL
 WS/VnGWq81gbmnEIqxD8Fa0QD1CIbhTV5+TK7mvOfyWe+K5IA8WRFEgsappl1OJ09EVb
 HInw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jvvYDsDzRmhFLM4A9oVavXTflTQql5yNcbzYUVmhfHM=;
 b=cWXaOIaE90EHXlT7nv2ul5eqkOxGo9zvNA7P+9koaBwYPnW8clrkv0+Egax6U3TllS
 0hekC+o764xFVS9I+Zq4S0AfJcH6Kq2a+HBjHCBiJ2RBPIQhcwkhMpWWyvCy+qkQMUON
 S5d/AiF40/rZ9IhZAXTBOZU8EUJdKQlSKrpZ8Ygy6SYIHJkrhOmUrJbHMdy9MWZ58Dq+
 +4To22KC3Ifv9+qaV0dPMbTQO2c92rdy7MVz/RghegwnhArcp6z7dIC9lwCn+0jpVzSv
 VWpwIXPYl2rROA11n5T/B+yiuUxUszOHb+MTBN3R0f0X+j9L8SRjr9F9Ts9j3SiIpjCM
 s8xA==
X-Gm-Message-State: AGi0Pubv8UapVh4TsN9tMIyrrU9W4EmpFXxIURAU/dgOjS8HXQYwM9p5
 qjIzA4L0kZeMykU6hEbIoT8=
X-Google-Smtp-Source: APiQypJ2fzLimkKBCJzMa3CUHEDSDv9lWQdCBA2HiCqhvjfxuliwudX2IO8Fps8d8HAMqWklmofJxw==
X-Received: by 2002:a63:360f:: with SMTP id d15mr23107940pga.102.1589370089460; 
 Wed, 13 May 2020 04:41:29 -0700 (PDT)
Received: from localhost.localdomain ([42.108.246.232])
 by smtp.googlemail.com with ESMTPSA id g9sm12992533pgj.89.2020.05.13.04.41.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 04:41:28 -0700 (PDT)
From: Anmol <anmol.karan123@gmail.com>
X-Google-Original-From: Anmol <anmol.karan123@.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: android: ashmem: Fixed a issue related to
 file_operations
Date: Wed, 13 May 2020 17:11:16 +0530
Message-Id: <20200513114116.26410-1-user@debian>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Anmol <anmol.karan123@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Anmol <anmol.karan123@gmail.com>

Fixed a issue related to struct file_operations which should normally be const.

Signed-off-by: Anmol <anmol.karan123@gmail.com>
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
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
