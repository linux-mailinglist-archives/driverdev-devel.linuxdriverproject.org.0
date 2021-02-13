Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4879831AB90
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 14:16:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38E8D873CE;
	Sat, 13 Feb 2021 13:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNSQEbIe6mnt; Sat, 13 Feb 2021 13:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51065873A8;
	Sat, 13 Feb 2021 13:16:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0E81BF228
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 13:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B9A686A15
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 13:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3lG-mWlKJAQW for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 13:16:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B93786A11
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 13:16:30 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id h26so3530409lfm.1
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 05:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nPbqrJuXIW4ot4VyS1QmTXkJKxb4GxS010Xfjk124w8=;
 b=m+FlFSVyoHlt5P8m4Bj7iVdALwyKMaKTGkDy2kfTzhNDhoawZ9rRq+HRqWblBzkfEE
 vmxo/3NKu90R6RUqT+vF7f7mtpd7V3eNcmKR3QGgf06n86C8aTRKes04S4kOsHiPEGa/
 8dHllT0MebwldpqjIDfaa9TBB0vyUcL5LxJ8y7mSp/VTaHb2Z15ZMsg4bvCBCVshaEEY
 V1wwlJc0ahLOyVOKp9W2P1Ic94VL34a0ZFw1AZEEkxPThB4f55WuWpGjsyOS664vIXSd
 h+4AmbYAADFYY67Hs+HrUaNFyR+yFc+C0qrlnNt1gluXCrWM4ZQte2bhCVv+nj/0R0aY
 pdMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nPbqrJuXIW4ot4VyS1QmTXkJKxb4GxS010Xfjk124w8=;
 b=am3hA5NfHrZN6Q4aJ3TcEf2OCHupff93tA+PVfeeKM56zS7LlX9Q2rwKgFR3+5j+2N
 LtNcJjDLSDHNQ/K+ogdWs9bMfWQfCFVWajsdDj+blso0E76kjZ9AIbdwy32oJjEUwt3Q
 CjLHtf/iNItC+B9eaz8BaTMpLY8WQAxAnvlMMHwERNRNb7n1sYhFT3X6vL8WKzBdIftM
 mynifd7XREz8lt+8QRNMOfBiIbDXUOrwDEfZLmvkXWV6N5TATWGC3Pwy1X2lXl96Qn68
 1CPMICFlTffDV/zY01UIXA5zIv4ilLgILwddFOGrTveUreuKGHVSrb+kSvJkYUEG9zL1
 laxQ==
X-Gm-Message-State: AOAM532GTGBQ73jt7rcjHs09vYhVi3z7PCaBPFCoj6r5aYXyHjoHsV68
 W7rfLueH1zWr0IW+0LJG3l8=
X-Google-Smtp-Source: ABdhPJy0t+8LOLGIuAkt9SIDTyjKKIKA9ayDI/EDGl5jDCh9oXWze2ym6niBieWrORQWVT9H/lhD1Q==
X-Received: by 2002:a19:5d56:: with SMTP id p22mr3792392lfj.360.1613222188115; 
 Sat, 13 Feb 2021 05:16:28 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id f13sm1235299lfc.39.2021.02.13.05.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Feb 2021 05:16:27 -0800 (PST)
Received: (nullmailer pid 452050 invoked by uid 1000);
 Sat, 13 Feb 2021 12:09:53 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging:wlan-ng: use memdup_user instead of
 kmalloc/copy_from_user
Date: Sat, 13 Feb 2021 15:05:28 +0300
Message-Id: <20210213120527.451531-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Michal Hocko <mhocko@suse.com>,
 Ivan Safonov <insafonov@gmail.com>, linux-kernel@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, Waiman Long <longman@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Allen Pais <apais@linux.microsoft.com>,
 Abheek Dhawan <adawesomeguy222@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

memdup_user() is shorter and safer equivalent
of kmalloc/copy_from_user pair.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/wlan-ng/p80211netdev.c | 28 ++++++++++++--------------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index a15abb2c8f54..6f9666dc0277 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -569,24 +569,22 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
 		goto bail;
 	}
 
-	/* Allocate a buf of size req->len */
-	msgbuf = kmalloc(req->len, GFP_KERNEL);
-	if (msgbuf) {
-		if (copy_from_user(msgbuf, (void __user *)req->data, req->len))
-			result = -EFAULT;
-		else
-			result = p80211req_dorequest(wlandev, msgbuf);
+	msgbuf = memdup_user(req->data, req->len);
+	if (IS_ERR(msgbuf)) {
+		result = PTR_ERR(msgbuf);
+		goto bail;
+	}
 
-		if (result == 0) {
-			if (copy_to_user
-			    ((void __user *)req->data, msgbuf, req->len)) {
-				result = -EFAULT;
-			}
+	result = p80211req_dorequest(wlandev, msgbuf);
+
+	if (result == 0) {
+		if (copy_to_user
+		    ((void __user *)req->data, msgbuf, req->len)) {
+			result = -EFAULT;
 		}
-		kfree(msgbuf);
-	} else {
-		result = -ENOMEM;
 	}
+	kfree(msgbuf);
+
 bail:
 	/* If allocate,copyfrom or copyto fails, return errno */
 	return result;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
