Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DCCD572A
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 20:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 692B2214E6;
	Sun, 13 Oct 2019 18:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0bK6IpVFuxfo; Sun, 13 Oct 2019 18:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AC3E52002B;
	Sun, 13 Oct 2019 18:00:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42F271BF3D6
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 18:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 364F987B94
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 18:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2XEF2Ip3KqsR for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 18:00:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A2C687B82
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 18:00:50 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y5so9068418pfo.4
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 11:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8r79MD/BEEnSIAVQ+CzUkPVwR0O8qcg525+i9tMWUcw=;
 b=tlZ+GjrJmm+pMVXcYwCyYsBU7+nGadcNcqt0EGighjvOdyCryrYHXi5PRANAw+9tiC
 8/33P4psG2DscmaMjaRIAv7woVnKu87oCYZml8Y4R6FTbpPV0Wvrp2LP5KM+I6m9tYoq
 hMb+i8oLB01xKzyw7z+Vpgu26FiBLrvFijKzSQpp3yql8lwrhBP9v03UyNjxCiExyRGt
 RtxhkJVJZ22VSWdtArTRIoqRAhDZJHpI0P4eyc0BPHBKHyWapyK5fUfYxOEdyhwd5yZb
 bU+AfYSujv4QYuN1+SI6p5W2q8PvkZHZROJh9jccYyZaedYBj4OjdYGRllQgm0/QxZPf
 fkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8r79MD/BEEnSIAVQ+CzUkPVwR0O8qcg525+i9tMWUcw=;
 b=iBsolVjFflr7Hz+mT+Vw61L7hCC/ttX4SCacHy74HLjWUXGOi7NP//5lgl3o0HOXnm
 /37rDFKc4lzsdP2FTLnAGjuxVl4mOBxTrxJnZP1kYwiLIvvqbnfQ3o0NdohhzgZvCnlu
 xAt3HPHhbb/BfNjwEW5n/ULzSLqs96pHaXAZhWCbTv1ejiaW6eoyrhU62yBdByiWUEg6
 b8FkDkZDr8eeZdQ8nf5t3dihdM0bGLJOMlSkb7KaCMMmhwe4A7U8ne2MPDpytDC7c1P/
 r5cbBBqy3uWSn2AXRD1qnqZsv2ZuYYy7mSuJnIUC3F7f+EdiK+XcF64ICAiS4y1rGXWc
 rr6g==
X-Gm-Message-State: APjAAAUhbmwUjgH0QDKFMybTjt+Ght0LdxSu/bhneR75XL9uWr7pGOQV
 HggnrhQIviVoOtxs1Roeiig=
X-Google-Smtp-Source: APXvYqwrPQBU3KdDEoojv8E/oAWKUha70bKAEeCHvQ2rSJAW9y8cEI1Tr16ZM//9pF3Tc6MEkwLURg==
X-Received: by 2002:a62:3387:: with SMTP id
 z129mr27658647pfz.253.1570989650114; 
 Sun, 13 Oct 2019 11:00:50 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id s10sm29657474pgn.9.2019.10.13.11.00.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 11:00:49 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: use DIV_ROUND_UP helper macro
Date: Sun, 13 Oct 2019 21:00:33 +0300
Message-Id: <20191013180033.31882-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
to improve readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 87535a4c2e14..74312e8bb32e 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4158,7 +4158,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 
 			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
 			/*  is getting the upper integer. */
-			usNavUpper = (usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B;
+			usNavUpper = DIV_ROUND_UP(usNavUpper,
+						  HAL_NAV_UPPER_UNIT_8723B);
 			rtw_write8(padapter, REG_NAV_UPPER, (u8)usNavUpper);
 		}
 		break;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
