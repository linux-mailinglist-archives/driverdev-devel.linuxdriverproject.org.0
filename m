Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA59314EA6
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 13:07:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC2B66F484
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 12:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TkSu7H7lRPAE for <lists+driverdev-devel@lfdr.de>;
	Tue,  9 Feb 2021 12:07:25 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id A23126F742; Tue,  9 Feb 2021 12:07:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19A516F5D0;
	Tue,  9 Feb 2021 12:07:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C5C6D1BF867
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 12:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C2AB28629C
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 12:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7M2xLivUZ89G for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 12:06:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E9EAF861C7
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 12:06:47 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id l12so21370331wry.2
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 04:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mnnGb8uYfAKo5j4celfDTPJ3dArWMa9VeSJuwnZYFt4=;
 b=wEKJaPKkgCJ+ae8GhAdCtynKzIbwKAfdC/y0O5HSYsLeIAkyIaUlg58XgsbE3UGzeq
 P7XjTnbUrCapMasS52nmq7yNQ84qJu5UiCy5Nc1lm4Y/y5s1gpL2OVo1+73TnxyZ6sav
 0yTI6HTYNXHA5FH88j1N2f+AUMvBaBHq5Ghy6vqxYczSjA9pB/NpAgsGBQ6Evj/dcz7Y
 cQEMwGp4tJWB1J8wWFUgcO8FzX0uI0apzLdVcgfzOP7PHuGvzOIUiSMA4vFCehXOqz/P
 i8t3OllBfZ1vIaNmIfPRhfijdGdXOYwced/mNIAG7o0ISPpc+Nmqwi3GbhDneXkp06sy
 B9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mnnGb8uYfAKo5j4celfDTPJ3dArWMa9VeSJuwnZYFt4=;
 b=FQwCKn++QvZavOYMDF6rcrMKlw6ry1j0ltzN6SnuiQeHdEv3osPeeKNq+fWVw8JjgX
 knTxjCs98BpNX354GH/nNoxsfvfdR8LqSnpdiVSTM8hUZRYYfaaycdeCv9dzw2kqIemI
 AmN/o10dmLm5upzK91Z38jJI55a5gQm7tErVb5J0pT4Qu3VugyMdkJiJH/v/LpBfu0zd
 W9Cw3Zr2uESvz/HH5Ue/5Z6407oLN9OaJlCv0c36fSdo2mRppcubRrI6mqFDLv5gfNqA
 r/XFYRWmrYwLTA6px6GalgpCSSY8zagyh+2onUKqrEMz4LHU82BG//NMt4bvMqHQn576
 x2zw==
X-Gm-Message-State: AOAM530UF9i3+DJAO4HXzRLvXWIHWZ7Bh6lgOarlYCnUWAXNjTFVtkhh
 TUarkLmKpLnt1DWRIGmR1bt4DQ==
X-Google-Smtp-Source: ABdhPJx2hxuqk9YVJYljBUWNo1jn7M1UjgUr/ztTa6I0vGJ6tqK3g/UXkeKiSL3eAOyFQNOIKnvlsA==
X-Received: by 2002:a5d:6c66:: with SMTP id r6mr24586009wrz.86.1612872405309; 
 Tue, 09 Feb 2021 04:06:45 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id z63sm4511330wme.8.2021.02.09.04.06.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 04:06:44 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: fix blank lines and comments in
 rtl8723b_hal.h
Date: Tue,  9 Feb 2021 12:06:41 +0000
Message-Id: <20210209120641.3964-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary blank line, and move close of multiple-line comments
to their own trailing lines. This fixes four checkpatch warnings and one
checkpatch check notice for the include/rtl8723b_hal.h file.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/include/rtl8723b_hal.h | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index f36516fa84c7..8e6e972dd843 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -42,11 +42,13 @@ struct rt_firmware_hdr {
 
 	/*  LONG WORD 0 ---- */
 	__le16 signature;  /* 92C0: test chip; 92C, 88C0: test chip;
-			    * 88C1: MP A-cut; 92C1: MP A-cut */
+			    * 88C1: MP A-cut; 92C1: MP A-cut
+			    */
 	u8 category;	   /* AP/NIC and USB/PCI */
 	u8 function;	   /* Reserved for different FW function indications,
 			    * for further use when driver needs to download
-			    * different FW in different conditions. */
+			    * different FW in different conditions.
+			    */
 	__le16 version;    /* FW Version */
 	__le16 subversion; /* FW Subversion, default 0x00 */
 
@@ -135,7 +137,6 @@ struct rt_firmware_hdr {
 #define WMM_NORMAL_PAGE_NUM_LPQ_8723B 0x20
 #define WMM_NORMAL_PAGE_NUM_NPQ_8723B 0x20
 
-
 #include "HalVerDef.h"
 #include "hal_com.h"
 
@@ -149,7 +150,8 @@ struct rt_firmware_hdr {
 #define EFUSE_MAX_SECTION_8723B      64
 
 #define EFUSE_IC_ID_OFFSET 506 /* For some inferiority IC purpose.
-				* Added by Roger, 2009.09.02. */
+				* Added by Roger, 2009.09.02.
+				*/
 #define AVAILABLE_EFUSE_ADDR(addr) (addr < EFUSE_REAL_CONTENT_LEN_8723B)
 
 #define EFUSE_ACCESS_ON  0x69 /* For RTL8723 only. */
@@ -173,7 +175,8 @@ typedef enum _C2H_EVT {
 	C2H_TSF = 1,
 	C2H_AP_RPT_RSP = 2,
 	C2H_CCX_TX_RPT = 3, /* The FW notify the report
-			     * of the specific tx packet. */
+			     * of the specific tx packet.
+			     */
 	C2H_BT_RSSI = 4,
 	C2H_BT_OP_MODE = 5,
 	C2H_EXT_RA_RPT = 6,
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
