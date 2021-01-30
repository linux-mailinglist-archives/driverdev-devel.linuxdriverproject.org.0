Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B27D3094A8
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 12:06:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA65086A64;
	Sat, 30 Jan 2021 11:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtxN-JHlBrLh; Sat, 30 Jan 2021 11:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9B6586A4E;
	Sat, 30 Jan 2021 11:06:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B534F1BF3C3
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 11:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B1DAD85C4B
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 11:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T3B6QAnt0gHa for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 11:06:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1311585A82
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 11:06:42 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id 6so11369239wri.3
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 03:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RViyhId3pqZA2GQq/nJeSUdAMIgUBrmw70RXDfUgLfs=;
 b=n4lJbIcUlvLxZsiaZPEUnJfyx+D+y0c76a/8UHXKHEy15IpDv6wvxTVYQRlMOimxqh
 4hErjSG7b3Rz0q0JfHTxVwFeVCD9jovG9tnQuHzlfpCakNCAu5jG5Ais8WB0vl2er67E
 VhKfez25pq3MWCyRapDohfnP8cdrNl8T9hSaQIp4gUFN0IDj31ygL2VoX1p7lbLlGrqR
 Q73tjE2j3+NbBBbBOUkNynxAPAHbfBhwVhK7pc/8Rfw4sdirvAcFX+kT3rsL46rdC87P
 FspaW/M10i+RRz/VY5yOImBip9lKvhh0rq6mNUWAU19J04xgJrdx003DAho9YlmdJgZX
 kJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RViyhId3pqZA2GQq/nJeSUdAMIgUBrmw70RXDfUgLfs=;
 b=VoZBT28UJfd3xDXBVpI4Joc+lwPTwGhCJK/6CDoFXOfqkCJJIujRTJdu25YPR26ryr
 /YOwVPv8WntS4fhXhxbBmb70NmnMOBgq3ecmM5n999oXvMykzA4Ezv1ANqB31adO/S3U
 OIC0Kd096i6r9f59+rfIfMFjaRoAwAcvpxi0Esi6vnMSTmpoPV1qM+FUv3P2lxgVEnZ+
 omvSUZ1hm01FgK9K67/8fQii1voRgBizhbKvUlmcCqzq4AhjbBhgiVjkQjqYG70FPcH8
 Qo5oIsy239BdYVo8Idk4srpa+I4qY4KNI7sE3nkr+5bc/PF5NM490mvdQaZRfhr8o7kV
 Uj4g==
X-Gm-Message-State: AOAM533I7mbps2RYjxvxFYOGHcY5z/vQ69rMQlVDa19h7yTTqN/7Tpfd
 eZ+l1KtsCizVSZtJ/AxySQE=
X-Google-Smtp-Source: ABdhPJyJiK6ab6mXRYthwW+eApmR3jOvN7isdau+1vZRg1EPvby6sFPArQ+MsbyEhhhgspkn5DhNsQ==
X-Received: by 2002:a05:6000:11c5:: with SMTP id
 i5mr9208557wrx.302.1612004800534; 
 Sat, 30 Jan 2021 03:06:40 -0800 (PST)
Received: from localhost.localdomain
 (cpc101120-sgyl37-2-0-cust128.18-2.cable.virginm.net. [77.102.17.129])
 by smtp.googlemail.com with ESMTPSA id r16sm17641742wrx.36.2021.01.30.03.06.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Jan 2021 03:06:40 -0800 (PST)
From: Ahana Datta <ahana.datta.ravenclaw@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: android: ashmen.c: fixed a coding style issue with
 struct
Date: Sat, 30 Jan 2021 16:36:30 +0530
Message-Id: <20210130110630.11612-1-ahana.datta.ravenclaw@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Ahana Datta <ahana.datta.ravenclaw@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed warning "struct file_operations should normally be const"

Signed-off-by: Ahana Datta <ahana.datta.ravenclaw@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index d66a64e42273..e675b7850044 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -376,7 +376,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	const struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
