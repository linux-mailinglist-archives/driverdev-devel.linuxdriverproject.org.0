Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394071A5F8F
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 19:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1323F87592;
	Sun, 12 Apr 2020 17:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMrNSbJtbnPY; Sun, 12 Apr 2020 17:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C9B987108;
	Sun, 12 Apr 2020 17:33:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70B8C1BF59E
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 17:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 686F3860BE
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 17:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwuRohwmiIh6 for <devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 17:33:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA46386094
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 17:33:05 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id v16so6690040ljg.5
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 10:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XqXdwaROdeqIddDJWAnUAB3A8A8bFJlYtL6MGb2s/vw=;
 b=uIouA633MGmMPi38mufwLK2Pn6s3EErihVLplll0QAPlxnIPv19I+PUjrJlhOYCf6R
 IzKKGWasvrHhPYFn6tMNt9qyL5RLjHDfMstd76qsGvVYjapANY1gSM7crTCkTxPgsZNN
 wKGLiMU9FOnVDy7nFcq2cumSDj5DSeNyKFRu5qkV9N+KSQMMrDJZ2weAQ+5CDb1ucbd3
 f/buDeZ/Z7hDIUrY6MYm08fimVD/HL6iqGZ17szK+RvB77aLd9uxT/1si79RFGkYbwxD
 mLMYoY4UZaIJ6rGd/8gkWtTlrWzI/yPngkY93rP0CLvB51eXvWVVoeoZE3e0OhlaL0XC
 581Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XqXdwaROdeqIddDJWAnUAB3A8A8bFJlYtL6MGb2s/vw=;
 b=VJOlHlWT3trDI0r64UkEog3hATvZyZv5qcVJLZWegaTtWbA90Yk63ktJHRoxcMff5j
 Nl1BZm8fGHHu1gTxeyaQn4kTwcVCmWZdNBQP8paDxbNi2lMJ4yc7yjEao7r1McL0RhVR
 wvJzbmimgkWTTNswr+Ueb15eFN4GX1a5tGAaEQyCeuG6sZF7cnliynn7Jw/GBgPSB99X
 LjTycNo66vOIokFtwIZGcixaGgliTamIMG0r9mbgh11V2Okdbi5Dhl0kpCEYLG8tKWW9
 O2LRJOjCsoWZH3awNoO3pRQ6fczFoqTP456tBttnPRK0ps101kwFbCVjSSOlSMKtwVyt
 GgMw==
X-Gm-Message-State: AGi0PuYhIYhpEgzZJPxfgfBHhl5Iz2o1SVEtNklhxalcRfzwrjyLcmj3
 1MWEB0fYxBUW3A6WRpupTXs=
X-Google-Smtp-Source: APiQypI9i+kHBSgJNXgLJCPoXSzarIOiFOq66nx7OTBTs/XFeyH1KhYc/UWCESTnmbo/ojDHBdLQrg==
X-Received: by 2002:a2e:9b07:: with SMTP id u7mr8343800lji.110.1586712783851; 
 Sun, 12 Apr 2020 10:33:03 -0700 (PDT)
Received: from alpha (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id 28sm6398249lfr.7.2020.04.12.10.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 10:33:03 -0700 (PDT)
Received: (nullmailer pid 846531 invoked by uid 1000);
 Sun, 12 Apr 2020 17:37:37 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: r8188eu: replace rtw_malloc/copy_from_user sequence
 with memdup_user
Date: Sun, 12 Apr 2020 20:37:16 +0300
Message-Id: <20200412173716.846469-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.24.1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Ivan Safonov <insafonov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

memdup_user is shorter and expressively.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 22 +++++--------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 0aff01bb69c3..d5968ef9f43d 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -2012,14 +2012,9 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 	if (!p->pointer || p->length != sizeof(struct ieee_param))
 		return -EINVAL;
 
-	param = (struct ieee_param *)rtw_malloc(p->length);
-	if (!param)
-		return -ENOMEM;
-
-	if (copy_from_user(param, p->pointer, p->length)) {
-		kfree(param);
-		return -EFAULT;
-	}
+	param = memdup_user(p->pointer, p->length);
+	if (IS_ERR(param))
+		return PTR_ERR(param);
 
 	switch (param->cmd) {
 	case IEEE_CMD_SET_WPA_PARAM:
@@ -2789,14 +2784,9 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	if (!p->pointer || p->length != sizeof(struct ieee_param))
 		return -EINVAL;
 
-	param = (struct ieee_param *)rtw_malloc(p->length);
-	if (!param)
-		return -ENOMEM;
-
-	if (copy_from_user(param, p->pointer, p->length)) {
-		kfree(param);
-		return -EFAULT;
-	}
+	param = memdup_user(p->pointer, p->length);
+	if (IS_ERR(param))
+		return PTR_ERR(param);
 
 	switch (param->cmd) {
 	case RTL871X_HOSTAPD_FLUSH:
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
