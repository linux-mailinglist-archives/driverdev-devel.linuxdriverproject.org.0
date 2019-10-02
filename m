Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCFAC8F5A
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 19:05:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ACE3861EE;
	Wed,  2 Oct 2019 17:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3m4zkW4StedY; Wed,  2 Oct 2019 17:05:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A05186362;
	Wed,  2 Oct 2019 17:05:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6351BF981
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 17:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 56EE2203F4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 17:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yDCYw0SB1x50
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 17:05:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 62ECA203FC
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 17:05:25 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id q7so12156164pgi.12
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 02 Oct 2019 10:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hFUJmHyjBlD3KcxaD4/2vOO9pJogLuNIplC2DGT7Zho=;
 b=NdHrthGMmnu0LFDd5PrY8BBvefNWJKK4lbcoQ+oKievGMKxXXnTyI+lOnrGuKVylhd
 JmeRb5N4Hk9NyUPmGBOxaDDbrQzzGyrsfS+XxSkJ8xlY/6jqaAurHFbly+42MEPWg8z4
 0zK2PmEsQcWKmyGxnCTcJCsxzYCgS+MbdffrpmXnKmR2+sFA21mzhuqYBhYYET3Xarv5
 0JF4VXfkO2cYNktzOEGJt9mzQztdzhOMrWsKUNs02rZTkkJWWGx1kT8NQtnZ0cgNj05c
 MGCU80lLCuylA7GEHzDIKbJBGuK3pjnXTfoG/4ESGz42kHw8ePBMp+vtbHLNtLFJTD5M
 q4Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hFUJmHyjBlD3KcxaD4/2vOO9pJogLuNIplC2DGT7Zho=;
 b=oZsIzycFiZftCZ2RotSpqThwm52VO8wKaE0KRSTNN1RIH502qFL1lbWHpcKxoRjGIB
 BVaKygxT9EEKhQBMIThHv+ru5r1k9LmDYAcv4EP6A7tG+Jj2IOBlmQnSdO8FvFtdQYz6
 8q8rRs8TqHbgAOnVmyt6tAtXMHW6XWqfxTnQYNAJWUtXn0rbPp5pM6Aweymf5nDE1wIN
 Y+5bkryKjE6QnqaU5tZNXlaqg6gvAreRCfNLcUCPVJdnjlmYdlVMrEHerpprTUx5NJiC
 53yJQNHYt+MzvmvkzZtgWyXwBM4fhQjii+XBBfPkBgUV6yjs8Lf6h8ElEhUCl/pplAYZ
 DmaA==
X-Gm-Message-State: APjAAAVdSQ9E1eLtyRwLcdOBbxb0eyVwMva9EnO4klaCNcYP+v6bonV3
 iA55eattWtSqYGHYs60BnTs=
X-Google-Smtp-Source: APXvYqzudFbkNTRlmWWlzlNHbpOWGpu5WRJJN3/P93k0vLBEunfRyibbLTxIXxOSY7tnYfEIF8GYUw==
X-Received: by 2002:aa7:9486:: with SMTP id z6mr5775635pfk.118.1570035924844; 
 Wed, 02 Oct 2019 10:05:24 -0700 (PDT)
Received: from SARKAR ([1.186.12.91])
 by smtp.gmail.com with ESMTPSA id z2sm19780pfq.58.2019.10.02.10.05.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 10:05:24 -0700 (PDT)
Date: Wed, 2 Oct 2019 22:35:19 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH] staging: rtl8712: fix boundary condition for n
Message-ID: <20191002170518.GA1688@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now that snprintf is replaced by scnprintf n >= MAX_WPA_IE_LEN doesn't
make sense as the maximum value n can take is MAX_WPA_IE_LEN.

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index b3263e953f05..363b82e3e7c6 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -144,7 +144,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
 		for (i = 0; i < wpa_len; i++) {
 			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
 						"%02x", wpa_ie[i]);
-			if (n >= MAX_WPA_IE_LEN)
+			if (n == MAX_WPA_IE_LEN-1)
 				break;
 		}
 		memset(iwe, 0, sizeof(*iwe));
@@ -164,7 +164,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
 		for (i = 0; i < rsn_len; i++) {
 			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
 						"%02x", rsn_ie[i]);
-			if (n >= MAX_WPA_IE_LEN)
+			if (n == MAX_WPA_IE_LEN-1)
 				break;
 		}
 		memset(iwe, 0, sizeof(*iwe));
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
