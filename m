Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 371E231F72E
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:15:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFC4F606E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mMLH_qARPKKj for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 10:15:07 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 99C7C606E9; Fri, 19 Feb 2021 10:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9701605C9;
	Fri, 19 Feb 2021 10:14:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 703351BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:14:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CA4C869D0
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mKH+QkyFqUD4 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:14:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D53F5869CB
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:14:40 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id e9so3114403plh.3
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 02:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fxwt0LNnBaNEyLNutCuPu1/fH/EypxrHSZ/cBh21iQg=;
 b=U7n1nSSwOyny+PZaUjmG3dPPk6+1DZ2VBH2Ls31h3H9n8EZEIjzty6WqRMYBxt6lOI
 UkYhy6YQTenNETlGQSBkw7QCsVTGXpw7QrRnuKFj6ObUYVg66VNF/nZ1OQkzPxvguB5w
 yV56FPtReqPJxQ7E0/ykgPkJ/+aTawdFm4EhjH5gtye/LeFRjQ0SLnm1I0ZN5m7EMOjb
 isWKOI2WREppE4Zv9XeY2wgJ4sSxLixAQxgMAVp0DymhrovSByvcsWOLjEzrYKii4Bqu
 CnF8E1dGd4WjYiF1iVYzpCVUD1GS9TZfvqG5NfaD5T8Od6ZOja5xQf5YOv85r0SDVSXk
 iJXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fxwt0LNnBaNEyLNutCuPu1/fH/EypxrHSZ/cBh21iQg=;
 b=gO2NaX44t62gR/enTZrPX9f19IbDCg7u/nq3fkSvC7ByWAzyreyV8bmM0u9fE+okvG
 un5mNCXxTt6CKU2k7eJ+Pn28McMfjknHEsPRyH0u2l5R1JpcU+gdpHTaXzWsm+6jtv/X
 4w//K07uTf78++7i2FsV7jAsLGKhNv9tk7EtDoaJLD0ZMGPEQnzSAPb/OIzTPPaFAn45
 mHs86APoxjoc/Gx4zlVQRAM4vC1zhTD4hBc/82MSBDOLMq9Q7pSkJz830MT5YViVduNG
 U9f3q/kNDOa4/vgp3idg+gGIdP43PYPus/DYzZxCGrhcJd4vLO67BLKIcizeyHJBYok6
 iXMA==
X-Gm-Message-State: AOAM533qHUrI5Tjmt+br69+ZN7Jlw5OqfxBaOI9sCgzA0fBR0PgO6I72
 99KoIc5cJsMH8u0ojRAQCqk=
X-Google-Smtp-Source: ABdhPJxhODRTDvT8y588cer3Is86ut6WPBL/dlKuxOE4IlpTz2KQAOMr+YE6j7QRII59CmIKOUbzNA==
X-Received: by 2002:a17:90b:224e:: with SMTP id
 hk14mr8804603pjb.140.1613729680249; 
 Fri, 19 Feb 2021 02:14:40 -0800 (PST)
Received: from localhost.localdomain ([49.36.144.93])
 by smtp.gmail.com with ESMTPSA id p7sm4958843pgg.2.2021.02.19.02.14.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 02:14:39 -0800 (PST)
From: Amrit Khera <amritkhera98@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 hridya@google.com, surenb@google.com
Subject: [PATCH] staging: android: Fix const keyword style issue in ashmem.c
Date: Fri, 19 Feb 2021 15:43:39 +0530
Message-Id: <20210219101338.2670-1-amritkhera98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Amrit Khera <amritkhera98@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch warning for "struct file_operations should normally be const".

Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
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
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
