Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A82EEB2D14
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Sep 2019 23:06:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1B58868FF;
	Sat, 14 Sep 2019 21:06:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lwnjFVUeJXzU; Sat, 14 Sep 2019 21:06:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6DF986841;
	Sat, 14 Sep 2019 21:06:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15E231BF300
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 21:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BB7C86841
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 21:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6aojShh86itj for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 21:06:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E8488685D
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 21:06:05 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t11so14787605plo.0
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 14:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=96+3Yk0DProrggwJcMsGZWA+XIv/wTqfIDAX2YQU1U8=;
 b=fA+QRAOk/8ftWbHvV2gjusRS/crTFbn68elHPryU3OzU4kFgs2w2hbp6KnTMa9Q/03
 ZNq3/3dWnqJMtpku10rXYHtiIy8jGJK3s8zAWdib1xEmRMMyF4L5nl/RLT/fy9G/Vryj
 x6ajZkUmOs7LFu9jLaw9KqHW6xsTcXlKRN1OM2tt7D1FcmLQV+QrtIGjoHG4AssserGx
 /2cRb/+/ODFBMfr7LXRb3pP/0k0iLHNJ1EEn2XWLn5/bqX1EEl7Fc+hMgBi6VKGGpr3H
 OQk+uSArrhElZ1aRZR6FGfaKDrU4NvAj7Ta1X2tzyuUXouZt3fKXbLoAOrvbItjsKJbV
 dXqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=96+3Yk0DProrggwJcMsGZWA+XIv/wTqfIDAX2YQU1U8=;
 b=m9vp0F9f9udQNM50RErBvmYrpY9zRnX61Fq3FUlhA54XUD3IptGTkyo0OgelzBizbR
 zdTwsbRM5b+Q+UWyGmtunqFqqjhzYXguW200U3plmktbmuC2eCc4SxM/38fKAqfeiGbq
 hSoI9WzVT7yA2VMxAE2r6ZQeWzKTTOKYcggSU/N3bHWAwT6VplvxsvXVOTUJyzdRoECD
 XCqFZbycPgRn0yC0mvuZgLcQIBG1yerRt4trH9nDTUzdJ/gwomURScQS+rHYfmnRFN73
 KbTSvNOG3QblcVH8eVJEX885nHSNQziqopE1gE8e5iRmGoWRwX71WGhEs6RP2fqirI8M
 O3lQ==
X-Gm-Message-State: APjAAAXYvqEg1y+CUQqXgsJvsKaLYcUvyyx7AQFlT0q14sfi9NX+PDAU
 WYWY7FpQChd0a0mOXJm+IJg=
X-Google-Smtp-Source: APXvYqwRaAORUc4b6EsqVE0rMD8oXhoVtAfhJVGcCtydyuPY123o300yCsOKopL597w8bH+r8CL8dA==
X-Received: by 2002:a17:902:b115:: with SMTP id
 q21mr57187445plr.241.1568495164893; 
 Sat, 14 Sep 2019 14:06:04 -0700 (PDT)
Received: from localhost.localdomain ([117.248.166.236])
 by smtp.gmail.com with ESMTPSA id 62sm30895275pfg.164.2019.09.14.14.06.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 14:06:04 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/3] rtl8192u: Fix checkpatch warnings in r8192U_core.c
Date: Sun, 15 Sep 2019 02:35:46 +0530
Message-Id: <cover.1568494288.git.sylphrenadin@gmail.com>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series fixes several checkpatch.pl warnings in r8192U_core.c
related to unwanted blank lines, line-breaks and alignment issues.

Sumera Priyadarsini (3):
  staging: rtl8192u: Remove unnecessary blank lines
  staging: rtl8192u: Fix alignment to match open parenthesis
  staging: rtl8192u: Remove unnecessary line-breaks in function
    signatures

 drivers/staging/rtl8192u/r8192U_core.c | 108 ++++---------------------
 1 file changed, 16 insertions(+), 92 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
