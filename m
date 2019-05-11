Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2FF1A74F
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 May 2019 11:49:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A77A86308;
	Sat, 11 May 2019 09:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iciGSaGwWLqj; Sat, 11 May 2019 09:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F35486084;
	Sat, 11 May 2019 09:49:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3DD11BF425
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 09:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8B8323408
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 09:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sPUwo+-bSdXJ for <devel@linuxdriverproject.org>;
 Sat, 11 May 2019 09:49:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 952F52152A
 for <devel@driverdev.osuosl.org>; Sat, 11 May 2019 09:49:06 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a5so3960902pls.12
 for <devel@driverdev.osuosl.org>; Sat, 11 May 2019 02:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=JoxPpyQyOu22hWp5htaLgYiM2luFFOZuNTOaxrJUw8k=;
 b=CQfpS9tmF4EiQPwD2Cb5zP3Oexv/pRbqqI5uEYdXhJyeFZ7cbf8Q+VakC6kJMu7qpF
 gSyLkcyMFt7u9pauMfdp4xBE9XsQQuYGbaYEOGHmKRKCKFjqO5grhDch8APUv5uKIvln
 tM0jm78HUaxtLsDgHazegGnz5LA/8vd79+62ARsCKv+1m1P5I378KNbiS4P41JQwX/C7
 B6nFc9e8f8pWTRR4l6MHPEPYPJPAWVx3RaRjgkQpma7e9Toptn5wvOAFVry0BLn1DW9S
 ouhlIqXXMLxGsIP7+3MEw6tKyhULNWXYhgNA8UVTi8lxN+Z9642pS6MkdaYGivegspy1
 8jNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=JoxPpyQyOu22hWp5htaLgYiM2luFFOZuNTOaxrJUw8k=;
 b=I3zm8lGgZ+Q2xrKby1UjSv8yecI5XMaFmmMiUU+RQYJ6Djywk1ufgJ9siErfzGD0Sj
 SvLlDzkNxeOG5+r+S/ZrjrNj3XyzoI6sodBUxh+R8QiISAusoihcPWfVwJ1Ybzrwhjes
 fWFUQObbRIwc1MIaM13X4SM2ayyol+iuVqquHGl48qKLdkV5uBifiBN5IGlNIiQkqvos
 lUrvoLQaGl2BQcQs7XtiQaMrSGP1DaMvsJ8fqfYEGNyVbVgfAjRX7AFa0HrnU53HOd6S
 13Kq8j1QMUqihOf4y5/EEv8j5vQL7lIriBi/luEPbC8tN60VdvuWugMuS8u2/9Mcsoib
 DlcA==
X-Gm-Message-State: APjAAAXnnJ7Z7j4gaWB/l6lSzgbEJSUxr9IyrWxDiNSiCyu4RqpuvDi6
 ibzKp/nzHTedh74jI9qlBZs=
X-Google-Smtp-Source: APXvYqzwwCNsanCV8KxJQhlX9V4r6+KCC05de1HjaVoG1/vLbXbN8dEe+WBDp9WhRF6Wen3zflmIiQ==
X-Received: by 2002:a17:902:7895:: with SMTP id
 q21mr18070928pll.73.1557568146254; 
 Sat, 11 May 2019 02:49:06 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id k64sm27220158pfc.97.2019.05.11.02.49.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 02:49:05 -0700 (PDT)
Date: Sat, 11 May 2019 15:18:59 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tim Collier <osdevtc@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Chris Opperman <eklikeroomys@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Subject: [Patch v2] drivers: staging : wlan-ng : collect return status
 without variable
Message-ID: <20190511094859.GA21232@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As caller rdev_set_default_key  not particular about -EFAULT.
We can preserve the return value of prism2_domibset_uint32.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
-----
Changes in v2:
  - remove  masking of original return value with EFAULT
---
 drivers/staging/wlan-ng/cfg80211.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 5dad5ac..4018fc5 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -231,12 +231,9 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
 {
 	struct wlandevice *wlandev = dev->ml_priv;
 
-	if (prism2_domibset_uint32(wlandev,
-				   DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
-				   key_index))
-		return -EFAULT;
-	else
-		return 0;
+	return prism2_domibset_uint32(wlandev,
+				      DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
+				      key_index);
 }
 
 static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
