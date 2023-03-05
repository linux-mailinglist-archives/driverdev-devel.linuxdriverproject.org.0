Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFB76AB1CF
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Mar 2023 20:02:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 877CC60FB5;
	Sun,  5 Mar 2023 19:02:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 877CC60FB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cNdDY64gMHcp; Sun,  5 Mar 2023 19:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 689926058F;
	Sun,  5 Mar 2023 19:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 689926058F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 126191BF3A9
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 19:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC45381B71
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 19:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC45381B71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mZ28Di5u5G1p for <devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 19:02:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 399F281B3E
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 399F281B3E
 for <devel@driverdev.osuosl.org>; Sun,  5 Mar 2023 19:02:11 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id x34so7724343pjj.0
 for <devel@driverdev.osuosl.org>; Sun, 05 Mar 2023 11:02:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678042930;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=U+mp5zRHSHyALc5ydPblr+WN4ZpYMT8cP0ReLdHKSAc=;
 b=PLEn+qOkKqdo67eaGuchdhH7m6tnBIGAKbIUUy1ysG7ub7OBiQebx7cp1EhTDLjRVA
 cTwj3szgyCGPhR+gxvQpIt7aU8W1o209DargmmM7cx8pe00h8N8bbcrVQatp3r7VVjaA
 GNUgQraQrJac4VBqO5Yqe+j5q0Sof2KYm6EVmowcc99Tda6/aCvDjCwd7VR1sDEq5c2b
 AHUqNJwiTjCdEnLasi3YGpFkGQ+tqJUG/B2KW887ZPh3IB9y75DCm+wnrzDtNJxSbCXQ
 /U2zaEJfAczF6XI3mM5edOOAnh9G8L2BRv5Cl7LKIRR606U6XQF+VmAWCUXZTjrQGy5I
 SApQ==
X-Gm-Message-State: AO0yUKXlqtc7GsnQO4RKBy11E3Vc4/J4DyJecboOArp4KH81AdKYeGw1
 EF9TVelaMeWW9fzfU+52UOo=
X-Google-Smtp-Source: AK7set/FK4OzW0Z9Kvl/61MoI09lNDsxtQyIhTgbvA3xbOVB5MB8DcbYtmazXMAwm/eHDIM0Kw9+eg==
X-Received: by 2002:a17:902:b489:b0:19e:29ce:697f with SMTP id
 y9-20020a170902b48900b0019e29ce697fmr8524340plr.41.1678042930224; 
 Sun, 05 Mar 2023 11:02:10 -0800 (PST)
Received: from localhost.localdomain ([122.50.220.43])
 by smtp.googlemail.com with ESMTPSA id
 p10-20020a170902e74a00b0019a8b057359sm5039078plf.130.2023.03.05.11.02.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Mar 2023 11:02:09 -0800 (PST)
From: Santosh Mahto <eisantosh95@gmail.com>
To: 
Subject: [PATCH] staging: android: ashmem.c: Declared file operation with
 const keyword
Date: Mon,  6 Mar 2023 00:30:57 +0530
Message-Id: <20230305190057.17482-1-eisantosh95@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678042930;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=U+mp5zRHSHyALc5ydPblr+WN4ZpYMT8cP0ReLdHKSAc=;
 b=XgfRQ/MeNdL1kZXDrdC321CjJ2vCCoSEes/6GX83xRjLAJItC9gdFzCIIurqoUTkDk
 YxZgEw7d7gMkja853czfBYNZJum0Mv84ntSHjJtz0P9iHjXDcWNPXWYdNorNaVQKpP37
 3j6hQSDAlFT+wLmU92SgazG4Y2MEM+wNJe6S0/3rjUYAKtA7qDRO+ZHjhVTBohWg17JV
 5bg2VWGJ434eofY1fKyg+2RMnMuqRnhLRrfkYd916Dx5vUoGlkHF9kqEK+kuVLsE9K/4
 +pq4Hwv8x/kRHnb6iPgsLPu2SO+e9jH8mfBr/IB5WInwFwtvDboplo9wDM1kblvpsQTD
 BiUg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=XgfRQ/Me
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
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Christian Brauner <christian@brauner.io>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 eisantosh95@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpatch.pl script.

Signed-off-by: Santosh Mahto <eisantosh95@gmail.com>
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
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
