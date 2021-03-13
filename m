Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8197E339F7A
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 18:27:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BE5D4EB7C;
	Sat, 13 Mar 2021 17:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B9xWE-qFQ7ET; Sat, 13 Mar 2021 17:27:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7373B4DD08;
	Sat, 13 Mar 2021 17:27:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EACA61BF573
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E63B44DD08
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LyZH7m_pQGq5 for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 17:27:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E23434DC25
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 17:27:04 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id 18so3981791pfo.6
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 09:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p2UjTidDibtpUmAW25zxdO42ZDabIYODzi8saO4ttS0=;
 b=RlPvNo/raOQbOCrqW+Yu4ng2lYPp1/uBixEtqmwzER+pOM0zDhOgiCwyGemwn4lD7q
 d0Odbi8V7a+/RZ+YaNqzn22fA2evzx2udn8CQ5+dn+i/0JX5SPbEvqJilfqGbwaqHX9a
 qrNb29Yem0JkI7Jxhb7tOVCeBEsgxlljxqTa5aONCTuoawo2xkd1nOYBLz5Jah8fHCZX
 XQVxJqwt7XM7mtx2EOc9AF7hS3PWpbtWlY7L/9qiqGwXoXDgyfKGiCQRLK5AWOvahvqI
 6a7mFib8Pfgrzf8L//qMJ3LPLI/NeDyNxP0kOMMA1hcJBBSvoVEq+zOqV49yc7rTRcj7
 vxcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p2UjTidDibtpUmAW25zxdO42ZDabIYODzi8saO4ttS0=;
 b=pV9u03phmyPJbG3o/Fy4GWrSOrjRkH2U8Smph25ZMJa8As56Vgw1LbRJHSYM9217DR
 UaZtirGlHYLaQc7g5sO9lKPJzmsoGii0D/NsYM391LBKVd1zG+AfNib3nHmY3KPjOJrE
 NeuWHcq0ertjnVsRLib0/JSsL5Vxr7Y/pTqRcDpRvOXvglG94BanRP3mX3lWC/QQWnsM
 KrCJGzHnJuujUu7LA71agz6vJiG1dYZ7+T/tORo3uRuhU2o0W+xO4DzBiC4yLd+2Enbc
 O5UT+RiyN6iXizJhPm9rGPS5Ww1M/NQ5kAvTulHVcvCCVTY+refJUU87m+KNiCszR5g3
 7bxA==
X-Gm-Message-State: AOAM532kp2isnF/qLuoyl28KZgDZT4/gVTx5bpcemxD0yJJnbaqicQW5
 aj9GOA/se4bmiSQ0K4Zo5c8=
X-Google-Smtp-Source: ABdhPJzuU24ZELmQPlrzPCNwzwWywJM2eygZK18L7DwIP1N5/p0kh48oUqKVPRuaF00VZ0NshNflMA==
X-Received: by 2002:a65:47cc:: with SMTP id f12mr16434317pgs.305.1615656424276; 
 Sat, 13 Mar 2021 09:27:04 -0800 (PST)
Received: from ubuntu.localdomain ([182.156.244.6])
 by smtp.gmail.com with ESMTPSA id r1sm5560450pjo.26.2021.03.13.09.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 09:27:03 -0800 (PST)
From: namratajanawade <namrata.janawade@gmail.com>
To: 
Subject: [PATCH] staging: andriod: ashmem: Declared file operation with const
 keyword
Date: Sat, 13 Mar 2021 09:26:35 -0800
Message-Id: <20210313172636.18234-1-namrata.janawade@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: namrata.janawade@gmail.com, devel@driverdev.osuosl.org,
 Todd Kjos <tkjos@android.com>, anupamakpatil123@gmail.com,
 bkkarthik@pesu.pes.edu, linux-kernel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpatch.pl script.

Signed-off-by: namratajanawade <namrata.janawade@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index d66a64e42273..7854fd410efa 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -376,7 +376,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static const struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
