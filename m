Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4985E32069C
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 19:23:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F51783689
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 18:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bolI0YBN0ilh for <lists+driverdev-devel@lfdr.de>;
	Sat, 20 Feb 2021 18:23:23 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id D2D90833CE; Sat, 20 Feb 2021 18:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 570FA83684;
	Sat, 20 Feb 2021 18:23:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2086D1BF5AD
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 18:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BFC46E38D
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 18:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o_GFFqOymxQM for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 18:22:52 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 405AC6E769; Sat, 20 Feb 2021 18:22:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07DF960728
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 18:22:50 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id b15so1098919pjb.0
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 10:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zt+f+ZZ7AgqTp/T9NQYJE8WcutGO9R85KYcRUCR8J68=;
 b=ldrCucySxPeGTMKsmTb0Wj3/r91FMrM3ot+J8doXhYLiOHTvErZeFkIRRktxscPynU
 NDTabqWIgnFM+5/831kTYpheow2Oj67e7lmUTMwgZv2+czIHDCYelK4zpCJkSWX4Sr5n
 VplmXfVjhBe6NcmaFULUEOLIa8xl3lZszyV+Qt7fos88kUSkRON8Jk1eFsH+67OkbE2Q
 SQgsRn13IcmvbL9yDrR/twCDldXltrJMKZX5EnLrdsOEvOuXh1fCBKbHFiKl79qnfthV
 5JjZq/ewAimpDJisbrLJ7Bqp7m1VZX7WBPICQHjaViSM06//mpXfOTY3CXxkB32TYI+Z
 R9Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zt+f+ZZ7AgqTp/T9NQYJE8WcutGO9R85KYcRUCR8J68=;
 b=OF68BP9UZJqit9QR8lcMA+U9zWjURHY1XwNW5N1+diDSLFHwOEDJwrUSq/mTK2sW4I
 8KrCKId+1gjRWclF7ZabXMF2PYF5levywQy4GZPW+zMrilQWGEX+QVdR7X4a6dW9TKxd
 l3Ccvp++yv/fVOI6ZCSE9MMogdy/PIQ31K0fpCBl4JQL7TvxunQckzO4ppEwLHvgqcwI
 chZ+nLxY4A3O8OWUnnYfDXKoZ8Ruf6CpsIfFPb/bRwLTJJZb1zbKnv4XCywEVLF4pGvT
 O8M4W9mIhKExo9JoDpEYaooki+Yqe8o4xhs0fvEgt85ih8eAmD7TOmW4ntozKFZKIbl8
 S/Eg==
X-Gm-Message-State: AOAM531GVIU29rLkDiomv57ED05Y49kahAL7Fn16EPH2v0MLyeV2CwgP
 6rWB1u208Uzx/BH3Gx6kNSE=
X-Google-Smtp-Source: ABdhPJxnHG8/3hVLnIqwCf72FVVXGEeuFtOVI1OLuUuo+tE5pGoRhhpVMftIwPrAmVcTkdIlvTVgow==
X-Received: by 2002:a17:902:ce86:b029:e3:c3e6:59e4 with SMTP id
 f6-20020a170902ce86b02900e3c3e659e4mr7851906plg.67.1613845370394; 
 Sat, 20 Feb 2021 10:22:50 -0800 (PST)
Received: from localhost.localdomain ([106.200.44.186])
 by smtp.gmail.com with ESMTPSA id j34sm12461018pgi.62.2021.02.20.10.22.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 10:22:49 -0800 (PST)
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8192e: Pass array value to memcpy instead of
 struct pointer
Date: Sat, 20 Feb 2021 23:51:53 +0530
Message-Id: <20210220182154.9457-1-atulgopinathan@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: tiwai@suse.de, devel@driverdev.osuosl.org,
 Atul Gopinathan <atulgopinathan@gmail.com>, linux-kernel@vger.kernel.org,
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The variable "info_element" is of the following type:
struct rtllib_info_element *info_element

rtllib_info_element is a struct containing the following fields as
defined in drivers/staging/rtl8192e/rtllib.h:

struct rtllib_info_element {
        u8 id;
        u8 len;
        u8 data[];
} __packed;

The following code of interest (to which this patch applies) is
supposed to check if the "info_element->len" is greater than 4 and
equal to 6, if this is satisfied then, the last two bytes (the
4th and 5th index of u8 "data" array) are copied into
"network->CcxRmState".

Currently the code uses "memcpy()" with the source as
"&info_element[4]" which would copy in wrong and unintended
information.

This patch rectifies this error by using "&info_element->data[4]" which
rightly copies the last two bytes as the required state information.

Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 66c135321da4..15bbb63ca130 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1963,15 +1963,15 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 
 	if (info_element->len > 4 &&
 	    info_element->data[0] == 0x00 &&
 	    info_element->data[1] == 0x40 &&
 	    info_element->data[2] == 0x96 &&
 	    info_element->data[3] == 0x01) {
 		if (info_element->len == 6) {
-			memcpy(network->CcxRmState, &info_element[4], 2);
+			memcpy(network->CcxRmState, &info_element->data[4], 2);
 			if (network->CcxRmState[0] != 0)
 				network->bCcxRmEnable = true;
 			else
 				network->bCcxRmEnable = false;
 			network->MBssidMask = network->CcxRmState[1] & 0x07;
 			if (network->MBssidMask != 0) {
 				network->bMBssidValid = true;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
