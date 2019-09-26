Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06492BF577
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 17:03:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BD4D42265B;
	Thu, 26 Sep 2019 15:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CV5oJsyEiOPo; Thu, 26 Sep 2019 15:03:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 81AE820515;
	Thu, 26 Sep 2019 15:03:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 587501BF2F6
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5516F204DF
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l4yxTMkY2t2J for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 15:03:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 8DBFE2002B
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 15:03:22 +0000 (UTC)
Received: from mail-pl1-f199.google.com ([209.85.214.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iDVIf-0007Xk-1z
 for devel@driverdev.osuosl.org; Thu, 26 Sep 2019 15:03:21 +0000
Received: by mail-pl1-f199.google.com with SMTP id p8so1656226plo.16
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 08:03:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FVKRXmx8SRBsU+0IWvQgA4/r5KeBrIiQqcBDYIkxnNs=;
 b=ms19qKbW6js6I6boYyNdMKNu/QjHptpMxcdHfu5NGGcfBtqS/Dy6VF/YqROm9Snwww
 zd83RKnIy4aXG8rxkTeTSyTzsSMa3Dvm03wObY4kQ6zq1bS3BdDYJDm7dPtJJ7SznJNf
 2x5LKBkLx4OWKexrbmXNcao8+BOj3C2yEsxA97Dse0lz2qba8ZaISw5ywD/TyNS7HgNk
 EQ6b/9wFQ381eJ5fn6p8ba1h3McTvSnaKv5YrQ43gQY8CWN8ysB65bZH/DF/HQb6KYlC
 +TX4UmsKMY/o6Ra2nS+riHIM64xQVG0CKsbSf/8fsBd6DqAlTGIE1SExCzafnOxVHUH5
 eVVw==
X-Gm-Message-State: APjAAAUZvOeH3L1wr9T9WjJrvs6DiUGWDD1LJ3M2xD/kjXxHlzThMoB8
 Rcqtc+l6/GSEOZBNJurmwlCCaD6DF0ZsJyqvuzTkhTwQA0zzqoNnvPpbJF4rCz3nyiXzhnwin16
 rKZD80gt1bJcuk/bMoDOUSADY3o8PqBFvJb/ATG4=
X-Received: by 2002:a63:205:: with SMTP id 5mr3768387pgc.77.1569510199731;
 Thu, 26 Sep 2019 08:03:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGYVioB4IbG1XfNiYKe+o084bQp5nriB3OlDVYJz5tA7ZRgTZbV6cYI1c8SsKqVdfHhAab3g==
X-Received: by 2002:a63:205:: with SMTP id 5mr3768358pgc.77.1569510199466;
 Thu, 26 Sep 2019 08:03:19 -0700 (PDT)
Received: from canonical.lan (c-24-20-45-88.hsd1.or.comcast.net. [24.20.45.88])
 by smtp.gmail.com with ESMTPSA id 4sm2174992pja.29.2019.09.26.08.03.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 08:03:18 -0700 (PDT)
From: Connor Kuehl <connor.kuehl@canonical.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: rtl8188eu: fix possible null dereference
Date: Thu, 26 Sep 2019 08:03:17 -0700
Message-Id: <20190926150317.5894-1-connor.kuehl@canonical.com>
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
v1 -> v2:
  - Add the same null check to line 779

 drivers/staging/rtl8188eu/core/rtw_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 952f2ab51347..c37591657bac 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -776,7 +776,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 			memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv), ETH_ALEN);
 			memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
 
-			if (psta->qos_option)
+			if (psta && psta->qos_option)
 				qos_option = true;
 		} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
 			   check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
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
