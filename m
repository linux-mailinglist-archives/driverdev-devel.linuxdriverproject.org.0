Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A620B2314A8
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 23:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94FEE8829E;
	Tue, 28 Jul 2020 21:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w79xAWLghWsu; Tue, 28 Jul 2020 21:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C49288223;
	Tue, 28 Jul 2020 21:33:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8522A1BF580
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 21:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 779992000D
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 21:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwzMuB+KeBvi for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 21:33:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A4E920405
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 21:33:06 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id u185so11751853pfu.1
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 14:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CT1RfNS2wB94CWta2isV6Olvkifh5I0o1QRBEScvpF8=;
 b=kDVj7S2Jk3itKTp3Hp+e0PRGpwlzbWQsFRUUVwuq2RNjxrK0+7XeR2p6hxd7AFCWkC
 FpQZWCZZWbYSJwqQnSEhiHYDIrYX8YrFDFyEHuvUOUU91DTpaf6Rm0dGqfmZtakHDCrb
 UbvsQcS8CtG97v205FQUwrnRoGa72EBhVGP7kfh4HFAWPOteRcajuAI4boFsQTk0x341
 nX96LdH8NX/Nbag/1kI6ASSBGmjJB++gtl0j3xBNbVYpFIygaGDfhWg8C7pL03TIjza8
 YV+HaDxB4Z5AlZ/px/r6ikXCL33NSh/WRNG+rofv5uQo/mqEv2xP4cgmKwwvABzq+nHC
 c1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CT1RfNS2wB94CWta2isV6Olvkifh5I0o1QRBEScvpF8=;
 b=aeo/eZzytE6nUp36CKS4eD8+BDLKBpM/BVNFyrefvJN/qOg/TFl5xgGMiZxmeH1Eip
 J8U58cRAtJrfJUPZSTUxBmXiY3HXGn7ePMFEHlO4eEiG/5JaM/mDW8R05XqeYbxtZERF
 b0sRchJtnFjCDxi8uu8Bzd5qkE6slKSYGsNcepjl6PvWYlgcOd+FS8W7rmoewY4US8M5
 gUhFQo3qFRMyxuEfRp87ThqtlpnDBoGLtlXfgPtlFGbNHVnnpFnCfoGbiVVN0B8mLCiw
 azu3qvhPDG+Ch+fWnjwbueYCNHzS0aGjCQcHPV7KJzuNkUt3uYHbY2WC2oF9Mb5BNpDM
 tR9g==
X-Gm-Message-State: AOAM531mwKvEgk4NK8XYdqO1fF8CITfViygXCBzQK8NzEoWxohtcZH9A
 eGf9FmAJ1PsRXu2tkFetvtLgfA==
X-Google-Smtp-Source: ABdhPJwLyHPfdyN7tFGpQLZ2/NJtjQ/xp87HFZ9wuujwjzEXtTn+a1CAnqJg/v5T7ofEdlh9wI8wiA==
X-Received: by 2002:aa7:8d95:: with SMTP id i21mr24881049pfr.240.1595971986373; 
 Tue, 28 Jul 2020 14:33:06 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id z11sm12152pfg.169.2020.07.28.14.32.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 14:33:05 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, rohitsarkar5398@gmail.com,
 straube.linux@gmail.com, mukadr@gmail.com, pterjan@google.com
Subject: [PATCH] Staging : rtl8712 : Fixed a coding sytle issue
Date: Wed, 29 Jul 2020 03:02:31 +0530
Message-Id: <20200728213231.26626-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ankit Baluni <b18007@students.iitmandi.ac.in>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed braces for a 'if' condition as it contain only single line &
there is no need for braces for such case according to coding style
rules.

Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index c6f6ccd060bb..df6ae855f3c1 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -238,9 +238,8 @@ static char *translate_scan(struct _adapter *padapter,
 	/* parsing HT_CAP_IE */
 	p = r8712_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_,
 			 &ht_ielen, pnetwork->network.IELength - 12);
-	if (p && ht_ielen > 0) {
+	if (p && ht_ielen > 0)
 		ht_cap = true;
-	}
 	/* Add the protocol name */
 	iwe.cmd = SIOCGIWNAME;
 	if (r8712_is_cckratesonly_included(pnetwork->network.rates)) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
