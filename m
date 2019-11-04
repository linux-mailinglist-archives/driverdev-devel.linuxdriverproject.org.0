Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D5FED732
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 02:46:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2A8C8AB18;
	Mon,  4 Nov 2019 01:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uc6M4xOY5QWz; Mon,  4 Nov 2019 01:46:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2419A8A9F1;
	Mon,  4 Nov 2019 01:46:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9414C1BF42D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 913FC89583
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id diLtCoqq8Qxm for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 01:46:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1B2C089532
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 01:46:22 +0000 (UTC)
Received: from mr4.cc.vt.edu (smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA41kLYL025832
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:21 -0500
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA41kGbX026227
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:21 -0500
Received: by mail-qt1-f200.google.com with SMTP id n34so17340076qta.12
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 17:46:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=t2ehr98/+rTL7PfDpH8Ry/AJxdIjjPlUhdGTTfS2sb8=;
 b=QmMqg+pU0wOKdIbxJ1iapvoOOSVW1JaIuEuYZl7ovXfeDNNMeAts+8UcKARIHOjeLu
 4SaCCT0SvHLDHfi1gDXRSvQy3+Fc3+bN3TdO/3qi+6/8aPJ1/K5hKlNX4+DiA9Bum3Ma
 Dpy0pQHCTIud81uDmWSLGxsbgv+Tlh7EoCEOH4pzcwT+xtfQrc29dJIQ2mnSY1EAS0e9
 Xye6ic5OUXxfPxDOOvkUkyJKt9waTmFpXYhOxeZ9rWwGPc2LLvkjaFdho9OToN/SZgjf
 9U8kqMRXEMueU+NF8yx1DV+vYcORlulgD/slX0Re+7UBp4/bggUgRJ/WhkC/TpfHqdW5
 NFhg==
X-Gm-Message-State: APjAAAXjMmcbLazBvWflcfALWt0pK7MNwlZYi90t2mYPLXHlF8iTFc+y
 vOWTFcfcJ2aC4/ued4Btu6fppHQqxQEr+jzylxjQmJ2Onk8PgSS7hOtQ/cNIRYqzRnifVUIb+fb
 wCuY1xIkw3Ce5uW9Za3cPMlHTJfYdb+AY
X-Received: by 2002:a05:620a:147c:: with SMTP id
 j28mr981928qkl.26.1572831975751; 
 Sun, 03 Nov 2019 17:46:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqwmwjNIr9K00FS6v/P5pCflkjocTlPkPXDpcvEsmRL8Nav7frFQIOeb/vbYK9VsqWlId1xUiA==
X-Received: by 2002:a05:620a:147c:: with SMTP id
 j28mr981912qkl.26.1572831975498; 
 Sun, 03 Nov 2019 17:46:15 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id d2sm8195354qkg.77.2019.11.03.17.46.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 17:46:14 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
Subject: [PATCH v2 06/10] staging: exfat: Clean up return codes - remove
 unused codes
Date: Sun,  3 Nov 2019 20:45:02 -0500
Message-Id: <20191104014510.102356-7-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are 6 FFS_* error values not used at all. Remove them.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 443fafe1d89d..b3fc9bb06c24 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -210,12 +210,6 @@ static inline u16 get_row_index(u16 i)
 
 /* return values */
 #define FFS_SUCCESS             0
-#define FFS_MOUNTED             3
-#define FFS_NOTMOUNTED          4
-#define FFS_ALIGNMENTERR        5
-#define FFS_SEMAPHOREERR        6
-#define FFS_NOTOPENED           12
-#define FFS_MAXOPENED           13
 
 #define NUM_UPCASE              2918
 
-- 
2.24.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
