Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F31A306D
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 09:12:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB8EE8738D;
	Fri, 30 Aug 2019 07:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nlr20PHSSP8O; Fri, 30 Aug 2019 07:12:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AF9B87367;
	Fri, 30 Aug 2019 07:12:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1EF0E1BF34A
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1BE8C87367
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5vi2WAtb9ui5 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 07:12:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D30387313
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 07:12:21 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id o70so4025072pfg.5
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 00:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=YtkAdfW5oGxHpmLw13b9aMdzltlDIZk7K9DdjceyN94=;
 b=Y3WLJT6nT/YMnnBTLStGV+hWADgSPzcQIpnKh9dGYaHGQ7sSyLJE4ePY0fs+msOBqn
 oK4HPrHbznynDfEpd2GXa+N3VMvSD8h/HbjnW+ZjXp5DaSobpMb3OmcI7UDehtqENYEs
 gdj1K53C0O9do9CDWTtu8svP/5xoyi+Mkss4ZdBKCkn0phfU6V/M5NZtJexODvxFCaA2
 FF9SvFN+x3voaQSFtJQE1KO4D7okMjQKj5BkXkq5x87lLVmzK5y5icUXJ8avjBxRtJQv
 4DggxIbCuAedpFxGgoicf7t+7R+Hl4CWCtEJ63oT7RUf6j/MSgx+ej5FiMNdE2gwTK4V
 qRIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=YtkAdfW5oGxHpmLw13b9aMdzltlDIZk7K9DdjceyN94=;
 b=e0Hlol7CijBYJC9JO1xn8TDuYi0deToxLUNLvLIs2DXAplPEKLaoUdYYKMBDGX8PfP
 c6OWD/HLcBmA8IOkCDNmsCPSBmgNLJq3Jw90PQiDX++64LHeBq0wbFk9OxQdAjKFdwAN
 73uwFV28+Uur2a0XX6cZPUXhGWuqiMeW2BTz03PREAQ2HLSGgcAeGTqRU4nACCT/oVQO
 E8UON/JR2Z8vedUKfsb+R0akpg3XXlmSOT4ViT337s1bErFOY5k1k8wsm3sPF0FjwX4p
 HWmWJw8QsqWSnejlCxgGc0wmQjSvx8cT8m9lVwrOqgd6mHXL761oqn7um5i6ourTghD3
 lHTA==
X-Gm-Message-State: APjAAAXzeHP97uJuxtssHIB40OYvhkoqRgPSxI03c13aM5vkm/n/rSLj
 nxWdm/D4tc58mRY3KuomZGg=
X-Google-Smtp-Source: APXvYqzDm8qGR33awdHp0I+ce0iS2eYVivILisJDjkzHXkhfLIAd1xsVqUS2kmxN7P/E1d4s5Mf1zw==
X-Received: by 2002:aa7:998f:: with SMTP id k15mr1575923pfh.203.1567149141155; 
 Fri, 30 Aug 2019 00:12:21 -0700 (PDT)
Received: from dell-inspiron ([117.220.112.196])
 by smtp.gmail.com with ESMTPSA id b123sm6192778pfg.64.2019.08.30.00.12.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 00:12:20 -0700 (PDT)
Date: Fri, 30 Aug 2019 12:42:10 +0530
From: P SAI PRASANTH <saip2823@gmail.com>
To: gregkh@linuxfoundation.org, kim.jamie.bradley@gmail.com
Subject: [PATCH] staging: rts5208: Fix checkpath warning
Message-ID: <20190830071210.GA11143@dell-inspiron>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpath warning in the file drivers/staging/rts5208/rtsx_transport.c:546

WARNING: line over 80 characters
+                               option = RTSX_SG_VALID | RTSX_SG_END |
RTSX_SG_TRANS_DATA;

Signed-off-by: P SAI PRASANTH <saip2823@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d78..495fa60 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -542,7 +542,8 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 				(unsigned int)addr, len);
 
 			if (j == (sg_cnt - 1))
-				option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
+				option = RTSX_SG_VALID | RTSX_SG_END | 
+					 RTSX_SG_TRANS_DATA;
 			else
 				option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
