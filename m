Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 351F53E3031
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 22:14:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4D37406A3;
	Fri,  6 Aug 2021 20:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U5gtiw-ApLin; Fri,  6 Aug 2021 20:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25CCA402C8;
	Fri,  6 Aug 2021 20:14:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABB1B1BF3AF
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 20:14:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B6D660ABA
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 20:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YZCdlKT7YLT7 for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 20:14:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAB17606E5
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 20:14:24 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id k2so8519636plk.13
 for <devel@driverdev.osuosl.org>; Fri, 06 Aug 2021 13:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gPJ8NsKS+3Jw4kxc6WCHLzF/A70YlZNDecLhVvyEwVw=;
 b=NdOURHyDJZvSh8If1c7MyBRCht7XlsW8r2HtcVAVLUUWoZmmb6rVJdGcw9CANoRI6J
 tN4WH3v3iQv+ngKFN+eTeHi5IwsFf7MdKjVxLsRHC2An9rllNl6suYGF+oUWh3d4wM+4
 vNb9dykCBuSZqDfOuwvYjxHcnqP+Y7CAXB+WA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gPJ8NsKS+3Jw4kxc6WCHLzF/A70YlZNDecLhVvyEwVw=;
 b=QU2v+xwRSQtePUaPZ5r1r85x/XvWQGxd1LGXkU3RCJ9gsxAwtnxMVmw0JN423Bap93
 PT5r9G9IuHYBM5e/eSWs8WtgiJh7O/oacXwpV2IEoxkNI24YOdPVTTTXpD7Hm+o2J3tK
 WCEcLBcMsMtdPqTGz3kNSCL7Tuy/TC6Dejxup1HHCE+5wD4vFKbBrcD8UZLntlZE3zfE
 gm651hqYh/ZyR0AFUDAA0UZL3O+g8tS+kmbZgaVxIkU1YcDj1aUa9ntMnflWscQOVK+q
 iyyZw2ZS64TNUaOq31+lwdTpqKDzfQ0aWEDx7ErQKdwpJo4ezADQNeXM1/SXMMfD2DCr
 Ngig==
X-Gm-Message-State: AOAM533MSjBtyZFHChbvdYj5QAOA+eyxHon/D124+60hW1hc1A1OSATt
 3cvxIUySWGNh52Gsin/klX1cuA==
X-Google-Smtp-Source: ABdhPJxxlITo6nirtimXf9fsmMsyNhsNe6iZOd6Asay/tIW2ItUL1ICQexCsZ8sZV+5aL8qA97a+yg==
X-Received: by 2002:aa7:8246:0:b029:39a:1e0a:cd48 with SMTP id
 e6-20020aa782460000b029039a1e0acd48mr12338144pfn.14.1628280864501; 
 Fri, 06 Aug 2021 13:14:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a35sm12580854pgm.66.2021.08.06.13.14.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Aug 2021 13:14:23 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8723bs: Avoid field-overflowing memcpy()
Date: Fri,  6 Aug 2021 13:14:22 -0700
Message-Id: <20210806201422.2871679-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1599; h=from:subject;
 bh=N0zJZJw4fEfLxgkALcFP9+bOoMIMACrM/hpsApeDvnI=;
 b=owEBbAKT/ZANAwAKAYly9N/cbcAmAcsmYgBhDZgdacn85cUJLT9+vjP4fZ1DEL36WLydwIVHYdNs
 rrmiePqJAjIEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQ2YHQAKCRCJcvTf3G3AJkCGD/
 iUCT4C9PmKd9Cp68qNLOPT9cs4Sq4vUB0OAch0yQGtn/cHWpgjrSWVikOFA30ueW1pejMqIGHjwEfe
 uv0f5pcGAL6VB4sQ9zJP71HbfTsFPcTfJexGZMln9z98VlYwY1kN3wvOacp8fENVdE+EBx8sX3RJrW
 4cGwdNARI8qGoFxO3xVkM1Ct3zVLgv0jBwXLIh+aQqPZ/htj0Nsz6QPnnFrgSt+oI6cihyNMjONwFQ
 E0/NDE4V0ZlqJHDgZp1KgM/PJr+BokVI7vYwCSP1Y28WRcck6NGIhOBl0ICAfkz/q26rzf+/3JsC9P
 Moth1SRuh89E7iz3gk1sV3upvmmGIVKGajM7Cuput472O/SQ7GH3KSFSkmNB5SbpHm+CFl6gEfaKLq
 LwufREyQVcs4/k2tKjVu/ua9p3TpoUon2rhZxbX7t3Rwmxc4arveTZeifdY4T5xl089sRHM9Hs/0GN
 EpMxrG9f9mEdw2ieFjyXSghZcoZFHNhoz0YdrQgao+JN7LyLbABYxKvlxr0XorXGkbn6GCOzBVuP2Y
 EJgmlcjiE0iVIcAgfpgE7niA44YNoBeCjxutXzAbhWSucrlud9JXoqYXlK9VlA6679p9TBjkNyObC8
 dCZQw/U/n7z64h/+6pKRjssEYzakpEDkEV9MaNOySixUsyHxruB4HHhK6V
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
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
Cc: devel@driverdev.osuosl.org, Kees Cook <keescook@chromium.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Fabio Aiuto <fabioaiuto83@gmail.com>, linux-hardening@vger.kernel.org,
 Joe Perches <joe@perches.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Adjust memcpy() destination to be the named structure itself, rather than
the first member, allowing memcpy() to correctly reason about the size.

"objdump -d" shows no object code changes.

Cc: Ross Schmidt <ross.schm.dev@gmail.com>
Cc: Joe Perches <joe@perches.com>
Cc: devel@driverdev.osuosl.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
Hi Greg, since I've split out some other patches from my series, it made
sense to send this one directly too. You originally Acked it here:
https://lore.kernel.org/lkml/YQDvM4r2KomO9p+J@kroah.com
But since it has no dependencies on my tree, you can take it directly. :)
Thanks!
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 5ed13bf765d2..e0cee51224ff 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2389,7 +2389,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 	}
 
 	/* fill default supported_mcs_set */
-	memcpy(ht_capie.mcs.rx_mask, pmlmeext->default_supported_mcs_set, 16);
+	memcpy(&ht_capie.mcs, pmlmeext->default_supported_mcs_set, 16);
 
 	/* update default supported_mcs_set */
 	rtw_hal_get_hwreg(padapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
