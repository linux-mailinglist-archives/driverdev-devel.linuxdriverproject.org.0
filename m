Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B927F86B0
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 03:10:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEE3186E33;
	Tue, 12 Nov 2019 02:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0BNl32YP-NFA; Tue, 12 Nov 2019 02:10:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 203B586C5C;
	Tue, 12 Nov 2019 02:10:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 208C91BF37A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D34220478
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0y+rvtznpfDi for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 02:10:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 66E7320413
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 02:10:47 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xAC2Ak7Y028416
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:46 -0500
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xAC2Af5e000303
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:46 -0500
Received: by mail-qv1-f70.google.com with SMTP id g33so7534721qvd.7
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 18:10:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=uphTJK2IDaoRqiwK0hx3G7xcHeFWsEZMUn5zNKoPI0w=;
 b=ubm6TstNhuz5x5RrghkjL9ONSbeO5i13jmlYLO9Yekt+ct2abz+Tdy56ex86qgIjhf
 RGILP97ZSGcXfepSBqtvMnfrWWnc/b2ADxgdxVZbkaEfUgiMWXGNR/4X5QwYinfXsUnf
 ODo6DfjLT6PhJG5oJlpm7VJBUN9g3splk2agSZg4XcVMEu4LDjkWnh4MIY6EuRon2v/e
 cTbp0lbAkfIcaq1NcDaNIN8GdxeQ+lXQriAndlSB3bNIkQiyLTlJhkVmIyq7FXtThGbC
 G7s+p7UBlgdtI9ToJsbek4hXxpxsZU4SU2VVc9KbSAEzbDwKHABW2x3PBCClgnvHC6Xb
 +CFw==
X-Gm-Message-State: APjAAAWz7XbJeW0nm/sNu4QCyoNGiz2RiA3WpPOjBBCIQuNh1GrGqcla
 vXyUPHTdMP7OdP+ZWmRhhkJDxDAVtFRxAOEPAs3mcsworhuNIXmxHnrIAnuKC+Z27l1O3DFhEcE
 PfZ3MjpTvqCSFPGDM8D1bd4bYVRFv4QsX
X-Received: by 2002:a0c:a998:: with SMTP id a24mr25872137qvb.117.1573524641378; 
 Mon, 11 Nov 2019 18:10:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqyP9wpj6EloB26bcXsuYqLDNDs33pV7zPD64rSvVFKAnI1TcwuvnpFunMC2Bkhe+5aVicw5Fw==
X-Received: by 2002:a0c:a998:: with SMTP id a24mr25872127qvb.117.1573524641133; 
 Mon, 11 Nov 2019 18:10:41 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id o195sm8004767qke.35.2019.11.11.18.10.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 18:10:40 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 6/9] staging: exfat: Clean up return codes - remove unused
 codes
Date: Mon, 11 Nov 2019 21:09:54 -0500
Message-Id: <20191112021000.42091-7-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
References: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
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
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
