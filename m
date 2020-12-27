Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8D62E30EA
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Dec 2020 12:27:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31FCC86092;
	Sun, 27 Dec 2020 11:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ge8OdxAxojSP; Sun, 27 Dec 2020 11:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2BFE86073;
	Sun, 27 Dec 2020 11:27:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81FF01BF57F
 for <devel@linuxdriverproject.org>; Sun, 27 Dec 2020 11:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 78F7885604
 for <devel@linuxdriverproject.org>; Sun, 27 Dec 2020 11:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Hl3Gl9s3wyf for <devel@linuxdriverproject.org>;
 Sun, 27 Dec 2020 11:27:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9B643855FE
 for <devel@driverdev.osuosl.org>; Sun, 27 Dec 2020 11:27:15 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id r4so4285462pls.11
 for <devel@driverdev.osuosl.org>; Sun, 27 Dec 2020 03:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Sj7zNDV7up4xyTXjHAMWjDBa/hYjY3JMoH2M3A8nvI=;
 b=HNyRxbZWLfHucmIRnwQDhdZW1wdAvM5bu4NMyWlzpu2nCf33J6tIwAujfEpAJN+FWK
 jAEk5vW/KwoIk1HppxZfmDi1p8ThkG4fFIWCRLG9CLNOxYA+NqzvCUrE+fMSVglQC+Z9
 obtFtwgSZECAvJzW25gW04jwXPw2hf57OkHNb6O6yRpVS2KuecdYyzpAd6oclxXMvOV+
 BIzVGvzXC7nWAdD5N9xQFTdOvZ+eCJ/pJU8BqUSsxruVJroSPx2s2ndqqofkozc3mqL0
 CV17AQaGkoaEbYc/2dXDpZdNykbiF575vWfUop5F+KIH2V9t+suppoCLsFrcc+wliSdY
 dqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Sj7zNDV7up4xyTXjHAMWjDBa/hYjY3JMoH2M3A8nvI=;
 b=YffSIR+Vm11TtXc4/YITp7d/9YmNmccAgfOrSW7HL7HOM+U7BVCqabLNBTnO7xsa15
 qsjMc5tgv3+aIShBvSOoShN+ao8yLPn4A9vwfBG/76lNbrLU0SSVXDC6PmX35qPNaugo
 Y0RF5ZeYDf9EnlUb5FPhmJHpI2Gpv8a2hX+y5+wuamgoHw6CX5gy6LUOxNx8Oe1Hi+9+
 kmX5Xi6+ad/x6S17ojhR8oDoQz9qmgVsrI8NZgX6/iSAtAuFVZRQNlHuJWUfNa97eocq
 fnHttrAPeuIWhnpvbGPhOJiG+tnB2qmUEv+8COMJqFDCMZNKayYKaqWPgL6QNZCg5qP1
 S6qA==
X-Gm-Message-State: AOAM530Xk3mUGEXfbRDX5eiDKzdv7PLg2AnLichqsw4wtf+Bo4IKlsP3
 9IRBNrxeqY6Sj1NLz5YAG1A=
X-Google-Smtp-Source: ABdhPJyIHvpsO8covr+GAATO0jMY7qZ2rIho3vecxzsgh3+2uCQRNSRoC50s4W3Tf2gIuI4ncZNj/w==
X-Received: by 2002:a17:90a:f0c5:: with SMTP id
 fa5mr16494755pjb.144.1609068434931; 
 Sun, 27 Dec 2020 03:27:14 -0800 (PST)
Received: from localhost.localdomain ([2409:4061:694:ca06:6ac9:32ec:907c:e017])
 by smtp.gmail.com with ESMTPSA id z20sm10282308pjq.16.2020.12.27.03.27.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Dec 2020 03:27:14 -0800 (PST)
From: Angshuman Sengupta <senguptaangshuman17@gmail.com>
To: 
Subject: [PATCH] staging: android: ashmem: Fixed warning for structure
 declaration
Date: Sun, 27 Dec 2020 16:56:45 +0530
Message-Id: <20201227112645.256943-1-senguptaangshuman17@gmail.com>
X-Mailer: git-send-email 2.29.2
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
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 senguptaangshuman17@gmail.com, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpatch.pl script.

Signed-off-by: Angshuman Sengupta <senguptaangshuman17@gmail.com>
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
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
