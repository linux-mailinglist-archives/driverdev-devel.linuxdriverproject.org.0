Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEB0BE743
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 23:32:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5501B85FD5;
	Wed, 25 Sep 2019 21:32:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fomHU9diOKeg; Wed, 25 Sep 2019 21:32:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A19685F90;
	Wed, 25 Sep 2019 21:32:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D42F51BF2BD
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 21:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0429204F4
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 21:32:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id clYlYmJzrfQy for <devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 21:32:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 2FA8C204C5
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 21:32:51 +0000 (UTC)
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iDEu0-0001Is-RH
 for devel@driverdev.osuosl.org; Wed, 25 Sep 2019 21:32:48 +0000
Received: by mail-pf1-f198.google.com with SMTP id t65so155963pfd.14
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 14:32:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MkF7goRdpeReW9T+fX+Did5lBMAtqHM/JtXL483fHaU=;
 b=P8heeGoO9fUxzMYbQJrt5oNu9jprb3HRLmU+gt1iUM/P/qWwdq5cmSFk8PuRNUw+j+
 5djkm0eEEFrbnc+iofwBQJIVatrqOkVaPvO7hEUIxBmTypXVFwpmIy6zItG+aYoBcoG9
 p2EQtKu8zBzeoVHIYqubJyrt8Rt2RfEt4wZGbtMCdkHuQhKHacf0gS7qbTKPn9u+rOBR
 6njWug//F7+cjWp5ksxoaa4O7kLTDRzOALrXdy7qzU4m8DUZwMMl/+zYbNjA5mXpMZJ1
 dubV2haKjUVfjFsH7It5gMko5AgK7rwQ7wv8PVpX1KTbGp6R/ei9aaqfPBxK28HVH0DZ
 4rsA==
X-Gm-Message-State: APjAAAX/MfB6fwvcrlnlHHHlUDV79HqTBcIMfrNxV9gjlwqmv48ESEon
 diepdn35mMmt6mQkCH3ke9BOLqiRZbWvKui3VVI5B6oO0OmAm0VZMkcop8Fg6BeNGTLNVM5tLLO
 BupCTONkfe2y2gLvDDbwjbvRtMZMAxlF+d8uk480=
X-Received: by 2002:a63:471a:: with SMTP id u26mr1442955pga.266.1569447167541; 
 Wed, 25 Sep 2019 14:32:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZkEa7zMT3dos3IakamBasOKGUMVJ9uw/N3eJjjrq/mIxyHi0gpqxjixnecmDwARyKb7Heaw==
X-Received: by 2002:a63:471a:: with SMTP id u26mr1442937pga.266.1569447167322; 
 Wed, 25 Sep 2019 14:32:47 -0700 (PDT)
Received: from localhost.localdomain (c-71-63-171-240.hsd1.or.comcast.net.
 [71.63.171.240])
 by smtp.gmail.com with ESMTPSA id 195sm5290313pfz.103.2019.09.25.14.32.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 14:32:46 -0700 (PDT)
From: Connor Kuehl <connor.kuehl@canonical.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8188eu: fix possible null dereference
Date: Wed, 25 Sep 2019 14:32:15 -0700
Message-Id: <20190925213215.25082-1-connor.kuehl@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Inside a nested 'else' block at the beginning of this function is a
call that assigns 'psta' to the return value of 'rtw_get_stainfo()'.
If 'rtw_get_stainfo()' returns NULL and the flow of control reaches
the 'else if' where 'psta' is dereferenced, then we will dereference
a NULL pointer.

Fix this by checking if 'psta' is not NULL before reading its
'psta->qos_option' data member.

Addresses-Coverity: ("Dereference null return value")

Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 952f2ab51347..bf8877cbe9b6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -784,7 +784,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv), ETH_ALEN);
 
-			if (psta->qos_option)
+			if (psta && psta->qos_option)
 				qos_option = true;
 		} else {
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("fw_state:%x is not allowed to xmit frame\n", get_fwstate(pmlmepriv)));
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
