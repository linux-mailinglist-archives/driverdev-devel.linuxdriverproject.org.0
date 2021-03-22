Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A7734508E
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 21:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E52983842;
	Mon, 22 Mar 2021 20:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBsJ2dsZome4; Mon, 22 Mar 2021 20:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C013983827;
	Mon, 22 Mar 2021 20:17:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD1071BF2B5
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 20:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6C77607A3
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 20:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ZilqN3jaVwc for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 20:17:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D2146068B
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 20:17:06 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id g8so9350320qvx.1
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 13:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tcS5dQnvT0EiMWmTQeHKxUtGPVRxLUYjS83TJVzvx+k=;
 b=MDK780PDa68smMWy8dlBgBO1PT8Mm/nclrmBTOUsf+/+6uS2UU4D7XjM1CKAoBMCNI
 m+hTtLDuF6QSo4iSwAamrGHUvBE1m21GD1FKUqdhKgGRm3R2WM6ToZK2sur0Xv+ZGIf0
 lBmP/KyGYi/HW2XADCxat3UK3LYGnfdbr0a0NqOw5heZABYTzS5papkYBDEJD94CUUwm
 tUU9DG42JoWdlTzMSQBEiZ6ORiJD6FPOOQ6F95zSHzXM9Iw16VQBtenrGUxa5A9p9oas
 010SKR0FoPRb7nGby+ifI51atFOkIWkoRjo1Lma+k6z+DlRvf2KlwGHbKGJqBzoIJHXW
 S6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tcS5dQnvT0EiMWmTQeHKxUtGPVRxLUYjS83TJVzvx+k=;
 b=KnMj5x/pwJdrOB5CXns2AczsGjQlHaa5Mp5+UBjn9hrYxPzYC4lA6YazPA8F44wWWc
 CpCvmUwUwZakPj08k08r7Y3HAVv8CVKOYTcuwVH+0nokaGgE/9YQrxIbxBtev1OWOwmv
 +iOnpu0P0+CVquCj2CkhZ2r3ILxPdvyLy96U2Ei3BUOo0E6O9iRq/1azIXkRBOdBO1Ba
 yrXwaamdGzpVSAklH3JaDTz5PTWt/bx+D2KrvqnCdIv+Khc60XxTtkTZV93rWyGOQldY
 xVko8bUMjYZNLXTR/Y3TZTUbZITODMdPv1srKxby/pBGRA7SPJu5iQWFmtqHxOTGpRwm
 h57w==
X-Gm-Message-State: AOAM533tEVT60rr3SJLJIRw0zvz8EP5ViZ/mwPEO47/qReExPcXA0ND0
 lWIc7OkhnnBfpFtUmrScjnI=
X-Google-Smtp-Source: ABdhPJxWjJ772wUsSBvj273tJJK9LFsIcXBnimb0hW8Ojb6Lm03STXD2Twf4k5u4V3OXiK336FQPvg==
X-Received: by 2002:a0c:908d:: with SMTP id p13mr1450243qvp.11.1616444225007; 
 Mon, 22 Mar 2021 13:17:05 -0700 (PDT)
Received: from localhost.localdomain ([138.199.10.68])
 by smtp.gmail.com with ESMTPSA id y9sm11530620qkm.19.2021.03.22.13.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 13:17:04 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: gregkh@linuxfoundation.org, unixbhaskar@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] staging: rtl8723bs: Mundane typo fixes
Date: Tue, 23 Mar 2021 01:46:48 +0530
Message-Id: <20210322201648.137317-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.31.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

s/stoping/stopping/
s/arragement/arrangement/
s/eralier/earlier/

Plus one extra word in the sentence "the" removed.

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
  Changes from V1:
  Greg,pointed out my mistake of introducing typo to typo , corrected.

 drivers/staging/rtl8723bs/include/hal_com_reg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_com_reg.h b/drivers/staging/rtl8723bs/include/hal_com_reg.h
index 37fa59a352d6..b555826760d0 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_reg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_reg.h
@@ -1002,9 +1002,9 @@ Current IOREG MAP
 	/* 		 8192C (TXPAUSE) transmission pause	(Offset 0x522, 8 bits) */
 	/*  */
 /*  Note: */
-/* 	The the bits of stoping AC(VO/VI/BE/BK) queue in datasheet RTL8192S/RTL8192C are wrong, */
-/* 	the correct arragement is VO - Bit0, VI - Bit1, BE - Bit2, and BK - Bit3. */
-/* 	8723 and 88E may be not correct either in the eralier version. Confirmed with DD Tim. */
+/* 	The  bits of stopping AC(VO/VI/BE/BK) queue in datasheet RTL8192S/RTL8192C are wrong, */
+/* 	the correct arrangement is VO - Bit0, VI - Bit1, BE - Bit2, and BK - Bit3. */
+/* 	8723 and 88E may be not correct either in the earlier version. Confirmed with DD Tim. */
 /*  By Bruce, 2011-09-22. */
 #define StopBecon		BIT6
 #define StopHigh			BIT5
--
2.31.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
