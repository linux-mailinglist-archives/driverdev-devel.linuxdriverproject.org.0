Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C5331AEC0
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 03:32:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E86E85FA8;
	Sun, 14 Feb 2021 02:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wIUvpfs9R1V; Sun, 14 Feb 2021 02:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BAEB85F63;
	Sun, 14 Feb 2021 02:32:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A812B1BF4DB
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 02:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9779160034
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 02:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNtoeP_pZ__P for <devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 02:32:17 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0DDEA6F50F; Sun, 14 Feb 2021 02:32:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C6E246F4FB
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 02:32:15 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id m144so3475160qke.10
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 18:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5nauxxSDPnHhem4yrY0quLuUuFJ464qNAf4sHAAntik=;
 b=HMoWZ9abbHnuLDOT9j0RNWwTCGEaBBlgemSa3Pa11PU9rHpK9Ai9sXT+9sOQoZ3PDO
 LNLNXENeDRYOks4rd1WHPYxzBjjcaKmcm+pyf4yScoFHlJqe64hRpmEx1Om17XiO84Nu
 D5p/jnHEBgCuMsx6Q0sjwO2fVwtKeFIUH7AiK+SA3B18lB9fiQNPUx0n2oCnzECi6soo
 20sMbAvOyHlvKWZUSVGJG1IYbxqOkVYOyuGPH7zAbA4m+4oyMpvPvIimwtCQj2h/wJFl
 X6Yygl0gHkmfYYgdBEPbPB6wNLdjSz+Xw+0sFWPojjVWbCrGP81ZIZJ4HAkSZB4l+9li
 iGWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5nauxxSDPnHhem4yrY0quLuUuFJ464qNAf4sHAAntik=;
 b=mxI07Xe5Or/W/Wf/Q16Iy5dIsci5bHLOapyepUjOprUSqXimguJ1k7/TwkIOrZ7w95
 1wHUIGVGTKVAnpeaRlTzxvt/YZzrrox8xYy4eLSAO/dlsW0XF6VpTRFB4lM93EMs2PKU
 l3kan5NQ5hqYI7EcGheaf9s6g55J2+Kliulj8ome3K3+xbqdcimsLpPqa6V7Hqh05kJI
 nBFJG2OQmt10lUkKFlUjcQXtVnwfv7mr0Zx/fxns6hxQ74xuq4Haun4JK02viiGX0voG
 XT8arNhDbp0225JWf3ODOwlnapeYatD13+9prIT9xzKJGusTIZV2atlnabrBeKlGBucx
 7xzw==
X-Gm-Message-State: AOAM530M6DkW+cIqiVJswkoeVJyLGJY6Ri4o0+EfbzdMfAxom+T5GJSx
 9jo7EWr3dS0cB9WFQWrecbs=
X-Google-Smtp-Source: ABdhPJzNPSa4QgnRqT7WPMFO0sltX5eMmi84ovRgaxh/CjvWR+U8WRqSoZoYmWAzMUU5qtzVsb4fsA==
X-Received: by 2002:a37:e4d:: with SMTP id 74mr9549037qko.109.1613269934578;
 Sat, 13 Feb 2021 18:32:14 -0800 (PST)
Received: from localhost.localdomain ([186.225.140.135])
 by smtp.gmail.com with ESMTPSA id k4sm6371491qth.40.2021.02.13.18.32.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Feb 2021 18:32:14 -0800 (PST)
From: Thais Camacho <thaiscamachoo@gmail.com>
To: 
Subject: [PATCH] staging: android: ashmem: Declared file operation with const
 keyword
Date: Sat, 13 Feb 2021 23:31:36 -0300
Message-Id: <20210214023136.8916-1-thaiscamachoo@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 thaiscamachoo@gmail.com, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpatch.pl script

Signed-off-by: Thais Camacho <thaiscamachoo@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 4789d36ddfd3..2cb665e0228c 100644
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
