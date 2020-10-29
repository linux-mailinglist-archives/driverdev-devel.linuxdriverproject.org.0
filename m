Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EEB29EA0E
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 12:09:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C47E1875A5;
	Thu, 29 Oct 2020 11:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pU3YszSCnzXq; Thu, 29 Oct 2020 11:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0928987595;
	Thu, 29 Oct 2020 11:09:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6550E1BF4DB
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 11:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 501792266C
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 11:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KxQ3SgcJnD9V for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 11:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id EA72A204C4
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 11:09:24 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 133so2033738pfx.11
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 04:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TqDb9D/f2X2CP3Fkvj1zCMZxt9qstXFPqe7a7lWneE8=;
 b=Grnvl7CuBCAfvlzWxd3nbOUHfAwhikzkCx+olXgx09UATM/lpavPXOFURMYdII+Ni8
 tTg/3gWdwS96cnUsRcgJK93WEVVTIhY1POEo+rkE1oQd+L3u5lT/B4VqJzFpUB2Q7Esa
 Qs8l9rBv6JeHKkO583uLHywraQXmMpEaIl8MLX35eSm5DMIPP3RoiU2IvCKAGHzlXppa
 ZXfN1UhY+3fRNdtCPXpqAT9Vbwc+13M2dBUUujp8EHeUF6eogNyeXw+iC5P5QUrSXG7k
 WF9m0cecYHoqkSs/o4qIRYkaOzQvu3oKKc0FxFanrj/zcNKFO9EtLBWLH07wLKlExmjB
 840g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TqDb9D/f2X2CP3Fkvj1zCMZxt9qstXFPqe7a7lWneE8=;
 b=spZtc5OdYhUZqMVWhAXjioCxzv/C2Xp/alWrrbMeG3tj262t96lL/SYveQPdkPgoWW
 1cFqO6VgBUVd+u/3+og6U7gsLqOgqjV5Hc/yXa5w0vxpIU1uUaApafYWpa+JPXLOnVj1
 KW/mEX0rDzzuijM/y1EAoZIGSfT/xYKdUdepl60d39jZOQjpLKKT1ydvxsKxTCzgbdmk
 KJZPlCYEDztEAflbZ2YZQZPcYYDviAE/hsP/wQ24Y5beQZ7PHjNgjhob6OdItqBkrIlg
 jA6zeUsv5wTQoj1Y5vofI3MzV3FqJO9oKdKmF7fqI6pHQfoFskZtPRvE68YMfeD09sCq
 xl/Q==
X-Gm-Message-State: AOAM530OeJ7V+6YgyrhBgZzOabrzaRRFZcI2Jw6+4OfIhUA4No0vTqLa
 kSKdayJw7mQMHI4fCFPQo7I=
X-Google-Smtp-Source: ABdhPJymO3U8DMeuTV/Y/5ltTePE+K+hLbGfL/aHp/YOMaxhbrrFDMPELIQGjjuCvFUevmwZ01jXcw==
X-Received: by 2002:a17:90a:34cd:: with SMTP id
 m13mr3930815pjf.201.1603969764443; 
 Thu, 29 Oct 2020 04:09:24 -0700 (PDT)
Received: from localhost.localdomain (sau-465d4-or.servercontrol.com.au.
 [43.250.207.1])
 by smtp.gmail.com with ESMTPSA id e5sm3021697pjd.0.2020.10.29.04.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 04:09:23 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drivers: staging: rtl8188eu: Fix spelling in two comments i.e
 defalut to default
Date: Thu, 29 Oct 2020 16:36:00 +0530
Message-Id: <20201029110600.3091-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed two spelling in two different comments.

s/defalut/default/p

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 Greg, I have included the driver name as you suggested.

 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 1af919ff6d93..391c59490718 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -52,7 +52,7 @@ static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 	 * The base index =
 	 * 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB
 	 */
-	dm_odm->BbSwingIdxOfdm = 12; /*  Set defalut value as index 12. */
+	dm_odm->BbSwingIdxOfdm = 12; /*  Set default value as index 12. */
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;

@@ -109,7 +109,7 @@ static void Update_ODM_ComInfo_88E(struct adapter *Adapter)
 	 * The base index =
 	 * 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB
 	 */
-	dm_odm->BbSwingIdxOfdm = 12; /*  Set defalut value as index 12. */
+	dm_odm->BbSwingIdxOfdm = 12; /*  Set default value as index 12. */
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;

--
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
