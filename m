Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A50B9828C
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 20:16:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DF3487C76;
	Wed, 21 Aug 2019 18:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X04p7ym0Xyrq; Wed, 21 Aug 2019 18:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93C9886F88;
	Wed, 21 Aug 2019 18:16:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5780B1BF417
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 18:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54D31203FC
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 18:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Vvmo37DXgkL for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 18:16:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 3498A203F4
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 18:16:40 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id h3so1754664pls.7
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 11:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ggqd974gCpWCPzLLF2L1xsiqYnOd5O3DgGhiZnJEAO0=;
 b=rlCmND5+WIvOpT2dHjpCSne2ygZ3gpYmNiXy8ySv76FJchH0uZuwhu/hMDOvJSX/RE
 xo93yo5ql0AJ6o6lgE+GsCk0PzH+BZEC38QqNSULelfLoR0Hc95QQqNgtXeSIjxpC5Kn
 CVUmovGUK1ivT2lhcYkOfcPcD+Wa1HiQO7txY4D/TX4by7mCOaZgPq2s7o3KtJEmdmMW
 +FMkRielPaVXhM0tosVNv7yOhUs+NRtKKBg6z98aHg4nsn7s/cQaaz9/dO/LrIPI3ihV
 MFR7K5PE1MXEYs9W7ScCjTir9L2J56R7ZhVQWcSg42WLueiN+JfGniKquqEzCywqzLlR
 Ta9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ggqd974gCpWCPzLLF2L1xsiqYnOd5O3DgGhiZnJEAO0=;
 b=HePbPqakqnacOpsWl2iisFB0Uo7PPr3kAJVUnyJ2IxqKmrIOIfLRuX3d8EOvGictfh
 CFOROjRmJbMAoHN3F3lRW9gpURV3F3Oqnd0od4PhOFzV/me0Gvh4apMfH1CJLK4CS7KQ
 mf0SdxHN9p4ZM4K0qGlV9tTI5EeLSEZ5+09LwCDTqTnA8tTChSJFci5nzhQZjTLCTejs
 n6/4oBLR8e2uqhALj/RJV1Gl5drAM4iFBny3jjTl46XfcWakJsQZ0sWMFYNcSu8OUx0X
 oqeqH7zpQ0Xu6K2Aja+Et8eiwQT0IiDsprpAqRl0mqhzF/L77q4Ch9yuv6inSapffqvv
 z44A==
X-Gm-Message-State: APjAAAUSMG31JpGSVFgZUSQKDCDtdCwTP4eQQx5xlV5fDxRTPoPAL1Fm
 NJz5VQMgrolchzZF0uhgLPY=
X-Google-Smtp-Source: APXvYqzgBWFl1vEhGO9Zq53Z2H8Q8G7WkZbM5gUo1K2nGRZMgtVApzBwVfeDVpzrcPVF4NMou1Ui4A==
X-Received: by 2002:a17:902:302:: with SMTP id
 2mr10242444pld.149.1566411399729; 
 Wed, 21 Aug 2019 11:16:39 -0700 (PDT)
Received: from saurav ([123.201.163.53])
 by smtp.gmail.com with ESMTPSA id e66sm24688755pfe.142.2019.08.21.11.16.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:16:39 -0700 (PDT)
Date: Wed, 21 Aug 2019 23:46:34 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, nishkadg.linux@gmail.com;,
 hariprasad.kelam@gmail.com;, mamtashukla555@gmail.com;,
 shobhitkukreti@gmail.com;, benniciemanuel78@gmail.com;,
 puranjay12@gmail.com;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: Drop condition with no effect
Message-ID: <20190821181631.GA11082@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As the "else if" and "else" branch body are identical the condition
has no effect. So drop the "else if" condition.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 90c2997256b7..36ea7256329a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -215,8 +215,6 @@ static char *translate_scan(struct adapter *padapter,
 	} else if (ht_cap) {
 		if (mcs_rate&0x8000) { /* MCS15 */
 			max_rate = (bw_40MHz) ? ((short_GI)?300:270):((short_GI)?144:130);
-		} else if (mcs_rate&0x0080) { /* MCS7 */
-			max_rate = (bw_40MHz) ? ((short_GI)?150:135):((short_GI)?72:65);
 		} else { /* default MCS7 */
 			/* DBG_871X("wx_get_scan, mcs_rate_bitmap = 0x%x\n", mcs_rate); */
 			max_rate = (bw_40MHz) ? ((short_GI)?150:135):((short_GI)?72:65);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
