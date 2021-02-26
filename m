Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5423D326220
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 12:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5259C6F95C;
	Fri, 26 Feb 2021 11:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FdfHys8k9h_H; Fri, 26 Feb 2021 11:48:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4C896F89B;
	Fri, 26 Feb 2021 11:48:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 503661BF2A7
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 11:48:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4CFB983FFB
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 11:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FpRuOMUoEqGp for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 11:48:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B79683FF8
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 11:48:35 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id gt32so2800054ejc.6
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 03:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DBG5WvPZaDPwblLH9T9vz8x1fojhLKSAMhdgTzRHk+I=;
 b=Sf73sbSRBO9rG9o0CTmQQrowLuD1E+c4VCkKYIPVcStPfLVZhmNCnt3uA7kLhrj9LC
 qrrdvZ7wy8mRCADG3HhUvoHkSwHImrD6Wd/xqj/Khpu5Ecv+xN5ekKU8joFMW5pdwujE
 04yxGmP6+lrJpliRd3LgTSE6i2aKUQk5pZ23FdgG//tKmY758gDsSzlfC4oAYrMMJvII
 7+r1yuOMKtXt5r/os3gGAynV2s3gh8HsanuK6YJYEodTUTOjUcrBRdIVvWboPMX7x9J8
 AqwaIUMuzfXblBO3GxQV4j1jb2YWo9AJAdr9sEnlRG/LmXx0skqJTNJHMCzG9w3Y5zNQ
 AepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DBG5WvPZaDPwblLH9T9vz8x1fojhLKSAMhdgTzRHk+I=;
 b=mEeuEUaeNxadoRsAY9XyII3VACNhe/ZrK9X3EEc16EKdbS4r9PrfqgzVIQxxW3F0mE
 CmnXLxY+AnVaVce4IHqjEuXMPXmLLDVmynK37qtoFDNT6GFi/BsDeHh2rXwG+fZ3wdNY
 eE+7emPZOqB1EJ9nOFRezXh0YwOVYuJvqC2OMK5efQn8gzF9eX0nmys9AwO6uNwevpfC
 wyziPucwJ9B8Vm2wPm9VZQsIxboMVUXS1o+3YapC3eDJkQwQPzaTj1MLcLORWtdkoqx6
 u11iSYCJ//T8c1jCuBkmYWyKPXXsZgO5hSkXXrfcN83T/wYnwJLIG9sRCWXPpGqc1Kzj
 d5iw==
X-Gm-Message-State: AOAM530Lwku2Lp9cdjxOxYr2bVjnd9TISsOEI7ra1a7JAs+kkxO0SPEb
 9jknbEygCCaSu9nIDsi1ZUg=
X-Google-Smtp-Source: ABdhPJzI0jJVXXO8VNqIFxaN2M/S15jyvoKq/t+1R3Kr5AWiX2eKWMjdnWp8S0VtgOphX0mDp38BeA==
X-Received: by 2002:a17:906:4088:: with SMTP id
 u8mr2944879ejj.208.1614340113486; 
 Fri, 26 Feb 2021 03:48:33 -0800 (PST)
Received: from ubuntudesktop.lan (205.158.32.217.dyn.plus.net.
 [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id l6sm2772013edw.90.2021.02.26.03.48.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Feb 2021 03:48:33 -0800 (PST)
From: Lee Gibson <leegib@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Date: Fri, 26 Feb 2021 11:48:29 +0000
Message-Id: <20210226114829.316980-1-leegib@gmail.com>
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
 Lee Gibson <leegib@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function _rtl92e_wx_set_scan calls memcpy without checking the length.
A user could control that length and trigger a buffer overflow.
Fix by checking the length is within the maximum allowed size.

Signed-off-by: Lee Gibson <leegib@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index 16bcee13f64b..2acc4f314732 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -406,6 +406,9 @@ static int _rtl92e_wx_set_scan(struct net_device *dev,
 		struct iw_scan_req *req = (struct iw_scan_req *)b;
 
 		if (req->essid_len) {
+			if (req->essid_len > IW_ESSID_MAX_SIZE)
+				req->essid_len = IW_ESSID_MAX_SIZE;
+
 			ieee->current_network.ssid_len = req->essid_len;
 			memcpy(ieee->current_network.ssid, req->essid,
 			       req->essid_len);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
