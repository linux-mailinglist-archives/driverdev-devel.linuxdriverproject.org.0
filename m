Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27608DB32
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 06:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C93EA230ED;
	Mon, 29 Apr 2019 04:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxSmDzxQfqOm; Mon, 29 Apr 2019 04:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 328AC230FD;
	Mon, 29 Apr 2019 04:35:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C88621BF968
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 04:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C342E85EA5
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 04:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 750Um8TXm0yQ for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 04:35:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4365985CE6
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 04:35:25 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id k19so4551000pgh.0
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 21:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mHiHv3HQ9faFzIxO2B9sfS+vzSObRQj6POAIshoSRiQ=;
 b=brEFG1bVeq8xkdtgVkXOCL61wFaAjFIO0cYlB67FFUgrCbEaZmq16oIccU4FGzBH5y
 hl9Nuq8nYV1gqTtCufZRN1CcybpZbivtNOtmLGXdTqsxobMKbv5JB1qQg9MbfaYbvbv3
 WlyTYPvNeBRoq+Uts/5MacvXYTqYvKYr95Dh95zCmxv+rhgIvOQZqh/MDZDVGHfjXB10
 6/rSlqHAJyB1M1ByhLkub50G6d1dX1oeFcRK2ftDKJyd+PhVfSSazHOxLjJc9ZNo//Z2
 OeWSEAn6gi4Y86/itkSo9Vx38d7WR/YLAtO+IfYFsxsxhOJH/7zlxNR40pBpc/WgVPFk
 mziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mHiHv3HQ9faFzIxO2B9sfS+vzSObRQj6POAIshoSRiQ=;
 b=BME9bO1Jz2JdcUqc+7hp5UAHp49JI6ZRJboSy7BGkGnq/SreZrp8j48ve6LO06Uhry
 r8ngxsKW8uBn5YMZYQnvineSOGR1ZSRL16UemineKxpNeqGwi3oAy1e3Pe+jLb7GuxE+
 owe56WR6r1+gtTAmmWsiG8ryNf8F5L5Q0tpXVDOXYJL4y080Pq9yD01VaOrcxWs3un7W
 MKdrPsThS/Z0Q6LxatjNdmHMazNUlp9xGXQMqxz7XTP2kHDcdvj2LyaMrbBEZxTcLYlV
 Yt3zwfT1GJBGszpHCb+HSYexC0kua78vdwl09yaGDMiaqHucUDc3dpfYR/K1KS82wOs9
 +8Og==
X-Gm-Message-State: APjAAAUaNok4eVXq0vP9bzyDdT+9GTKKskNqlS+BVWXZWN6Z42I76lok
 4mE0fhL3o5VSlj22liq7A2k=
X-Google-Smtp-Source: APXvYqxrvmP324ab6AxgwTnHfSdS8IggIIMZxCmw1gWn2iuwEzjgzC2lV+NhzcLL1jwzGtK5eOOLFA==
X-Received: by 2002:a62:304:: with SMTP id 4mr59086110pfd.99.1556512524761;
 Sun, 28 Apr 2019 21:35:24 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:12a5:ab58:559f:ec82:1c85:ce7])
 by smtp.gmail.com with ESMTPSA id
 a3sm51151579pfn.182.2019.04.28.21.35.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 21:35:24 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8723bs: core: Remove else after return
 statement.
Date: Mon, 29 Apr 2019 10:05:11 +0530
Message-Id: <20190429043511.27977-1-vatsalanarang@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Julia.Lawall@lip6.fr,
 Vatsala Narang <vatsalanarang@gmail.com>, hadess@hadess.net,
 Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove else after return statement as it is not useful. Issue found
using checkpatch.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index c6ae29b3e599..d4842ba64951 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -697,10 +697,9 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 					psta->aid = 0;
 					DBG_871X("no room for more AIDs\n");
 					return _SUCCESS;
-				} else {
-					pstapriv->sta_aid[psta->aid - 1] = psta;
-					DBG_871X("allocate new AID = (%d)\n", psta->aid);
 				}
+				pstapriv->sta_aid[psta->aid - 1] = psta;
+				DBG_871X("allocate new AID = (%d)\n", psta->aid);
 			}
 
 			psta->qos_option = 1;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
