Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B333B182E7E
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 12:02:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAC4489444;
	Thu, 12 Mar 2020 11:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Up5s1LqK34qE; Thu, 12 Mar 2020 11:02:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCE8E89219;
	Thu, 12 Mar 2020 11:02:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23F2E1BF424
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 11:02:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 19E8526662
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 11:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZqvgUOCkr-2w for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 11:02:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 02428265F5
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 11:02:28 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id s1so4432692lfd.3
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 04:02:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uKBLUr88wbraOZEGa0RYFtyftngjWe+Uqnh/hMum3do=;
 b=goMLYeHAAkoWj+38T4gIrRNsttsjdw0UmhkUgoth1rUCGX6MFIy8MqX2Q+ipjjgy/u
 w7f21+aY3WhK7UVwfh2Nq8l4/hF+ZRIgXHPpoqlyxqHjBZr1vylJ4tsNCjH1ar6vR1p6
 cv2In3OXtFMhSm0agcgf9DnEKIrmjMQQg7CXuzd/FpDMjvEd2LWhEnz6oTiJW0ZVnNVK
 rj+dU0cGTeHE7ov/Znio16i1X61ayWZHCCHAeEJ/kc16rp+y3WYFJSYt7P2N2MDizDm9
 LoxeHH1bk+Ryx8DBSpREqpbUunMFAHNrn4ydoNTDVsxiA4NmL4aWWd8jF12dRZqqxI1Y
 3Jdw==
X-Gm-Message-State: ANhLgQ18FVifkggHY20Rxq00UqOn8LeLx0gB7ZzCycFK5kO7oD0dNw2E
 M9OKKRfanTYEsJ3gaSx4Ppg=
X-Google-Smtp-Source: ADFU+vtHQqIHRNS01AKN1SrdHijm/KUgsYTIXJncnVu1hPocEsSAZTp8kIzRZAEWQIU2bwBzgPerlA==
X-Received: by 2002:ac2:538e:: with SMTP id g14mr5041703lfh.208.1584010946939; 
 Thu, 12 Mar 2020 04:02:26 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id a17sm19109789ljk.42.2020.03.12.04.02.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 04:02:25 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1jCLbS-0005kL-JP; Thu, 12 Mar 2020 12:02:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] staging: greybus: loopback_test: fix potential path
 truncation
Date: Thu, 12 Mar 2020 12:01:50 +0100
Message-Id: <20200312110151.22028-3-johan@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312110151.22028-1-johan@kernel.org>
References: <20200312110151.22028-1-johan@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Axel Haslam <ahaslam@baylibre.com>, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Newer GCC warns about a possible truncation of a generated sysfs path
name as we're concatenating a directory path with a file name and
placing the result in a buffer that is half the size of the maximum
length of the directory path (which is user controlled).

loopback_test.c: In function 'open_poll_files':
loopback_test.c:651:31: warning: '%s' directive output may be truncated writing up to 511 bytes into a region of size 255 [-Wformat-truncation=]
  651 |   snprintf(buf, sizeof(buf), "%s%s", dev->sysfs_entry, "iteration_count");
      |                               ^~
loopback_test.c:651:3: note: 'snprintf' output between 16 and 527 bytes into a destination of size 255
  651 |   snprintf(buf, sizeof(buf), "%s%s", dev->sysfs_entry, "iteration_count");
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Fix this by making sure the buffer is large enough the concatenated
strings.

Fixes: 6b0658f68786 ("greybus: tools: Add tools directory to greybus repo and add loopback")
Fixes: 9250c0ee2626 ("greybus: Loopback_test: use poll instead of inotify")
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/greybus/tools/loopback_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 41e1820d9ac9..d38bb4fbd6b9 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -637,7 +637,7 @@ int find_loopback_devices(struct loopback_test *t)
 static int open_poll_files(struct loopback_test *t)
 {
 	struct loopback_device *dev;
-	char buf[MAX_STR_LEN];
+	char buf[MAX_SYSFS_PATH + MAX_STR_LEN];
 	char dummy;
 	int fds_idx = 0;
 	int i;
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
