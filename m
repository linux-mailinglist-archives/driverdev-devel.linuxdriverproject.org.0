Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A4F326464
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 15:52:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F83E6F972;
	Fri, 26 Feb 2021 14:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7xURyvVtJADq; Fri, 26 Feb 2021 14:52:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 610AB6F491;
	Fri, 26 Feb 2021 14:52:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA59E1BF30A
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 14:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A4E983FE6
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 14:52:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EDYNyYIls2La for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 14:52:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E07AD83FB5
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 14:52:03 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id g5so15294313ejt.2
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 06:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BcTToyzpeOpMOHGf2502u3oDLI9dQyecgjyBUkdWpJU=;
 b=QzVQuEjUz3ppI18P4bRTN00h0uHT541lO9ITFI02yXlfF9/DhS0PGUFkeU+9H4HY3d
 wN9Sp32D65lwcRqK4cKGMYL80hdoa5n16yXfIIqOJlbozAGUOto9zI0WtVf9Ql5amtWg
 CWG18LsyRBnSUxasdsvMgkcQkh8sRcmCzhuBNZIy9IbDK0S8M5VYJ0jTLCkq6aZgC4Jc
 IPwhqeAPp0Oh9oKUZ9awwIH23prx2xuFWDHyixvX+VUIawMfPjPVMacuoF3qidDZ2Jjr
 KWGEa2qA/A9uQuAFyf7oVQ+yBhOOsTnpj95o6YT6f9TQJyS2oj0S/A4A4IxDJ48caF1t
 46sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BcTToyzpeOpMOHGf2502u3oDLI9dQyecgjyBUkdWpJU=;
 b=uRisc91oBuSI7Tnjy+EGgAjTfVXwEIOnk5GNwOp5x6N3sBRr7nMo3a1muv7Vdl9qWx
 Mtc1IUEMew842qag9XfXkDqzb/OKIlDZ9V2tt52/duIMHHrpPE/bzqyKet44GKgB7Tfx
 xf37hF4MVOhkAz+sLAKRi8BqyD3bp/UwgZDW/4p8Sey6fUmMbgKg5WizE651edjz197m
 7y1LLcoLi+1uRkK6wXaH+P0h2EwFncwY/XIY/49GvEQw+mws9eUGfl50hf0ZWwT5mMyX
 ybzqBYng00886RAZUz64To+AWFgdvxPIz6cUO4DLmqZh3nbZcQACiwPDovDtyDdnG2kB
 FcLA==
X-Gm-Message-State: AOAM532zvMpUjqpbeP6Ro34Q0lED39+fcDpx3WynU1lcNaw2Hu81ZNN7
 oEInf/QmT5A9nO5SAtglHRE=
X-Google-Smtp-Source: ABdhPJyiANY52+/vXMbXgLIX7IYTgMTMZ2ZhjyL9Ed6ngh1Jd33Uh9tBqMCNX+e+dlo0TJHUYuWGPA==
X-Received: by 2002:a17:906:5043:: with SMTP id
 e3mr3802802ejk.260.1614351122015; 
 Fri, 26 Feb 2021 06:52:02 -0800 (PST)
Received: from ubuntudesktop.lan (205.158.32.217.dyn.plus.net.
 [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id c9sm5964663edt.6.2021.02.26.06.52.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Feb 2021 06:52:01 -0800 (PST)
From: Lee Gibson <leegib@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Date: Fri, 26 Feb 2021 14:51:57 +0000
Message-Id: <20210226145157.424065-1-leegib@gmail.com>
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
 dan.carpenter@oracle.com, Lee Gibson <leegib@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function _rtl92e_wx_set_scan calls memcpy without checking the length.
A user could control that length and trigger a buffer overflow.
Fix by checking the length is within the maximum allowed size.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Lee Gibson <leegib@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index 16bcee13f64b..407effde5e71 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -406,9 +406,10 @@ static int _rtl92e_wx_set_scan(struct net_device *dev,
 		struct iw_scan_req *req = (struct iw_scan_req *)b;
 
 		if (req->essid_len) {
-			ieee->current_network.ssid_len = req->essid_len;
-			memcpy(ieee->current_network.ssid, req->essid,
-			       req->essid_len);
+			int len = min_t(int, req->essid_len, IW_ESSID_MAX_SIZE);
+
+			ieee->current_network.ssid_len = len;
+			memcpy(ieee->current_network.ssid, req->essid, len);
 		}
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
