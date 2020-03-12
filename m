Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2034E182E84
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 12:02:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30CAE89456;
	Thu, 12 Mar 2020 11:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XJ2glEL0a-Q8; Thu, 12 Mar 2020 11:02:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D790F89450;
	Thu, 12 Mar 2020 11:02:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4B621BF424
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 11:02:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F43D88091
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 11:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w3fSDQTKqcs4 for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 11:02:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B3F0981DED
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 11:02:29 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id i19so4440073lfl.1
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 04:02:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y0gf9nMkz8jNTUgSUmsyUitRVxnbwlxPriCRXIfta74=;
 b=tfaHG8LJMsgbYTKL92cTxKQCJYKgH1CDysoneESbk6Gqb/fd8ii4ad0ItwLJ77btx4
 me68x5i6xRf7qOLWGFtztK3AzL5s13i0jh6M/yLs0M4CKZYFHQ0RnHs5IKf29sXnz9Gy
 BkvMRvQH5Gp4BEYdrL18Dqft3KwzpPzO4ELsFGerFpx9q3a7nZlYwQzGmxKszXu1Ywaw
 dZnN7gXJS8D6y32NW7eH32tMFCSnfbVkjSe4sDeEIzgbZN7kU6pqf+GkxS/U75CO+cI5
 PZCoG9PkMc5aCChjLzLAU5OeByaX9Sjo4XWBPgiRvh/6R9jxw1au+eGj76b8gJgeo2/8
 ObVg==
X-Gm-Message-State: ANhLgQ3BfC2f65HHA+SfXqMR7MsMgFx9HbTgjHCnLxD67fjEtX0A1fXv
 vdZzOGoJ6DWDRuusKTy0GWE=
X-Google-Smtp-Source: ADFU+vvQ1bXXJ25BFPPSH7DGiFmSZv25BlmnfXv7XwYE3ZUPwjwP4v9+8zv/blCyHOLkYopDXnMfTg==
X-Received: by 2002:a19:ae03:: with SMTP id f3mr5158733lfc.28.1584010947720;
 Thu, 12 Mar 2020 04:02:27 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id n7sm6309933lfi.5.2020.03.12.04.02.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 04:02:26 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1jCLbS-0005kH-GI; Thu, 12 Mar 2020 12:02:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] staging: greybus: loopback_test: fix poll-mask build
 breakage
Date: Thu, 12 Mar 2020 12:01:49 +0100
Message-Id: <20200312110151.22028-2-johan@kernel.org>
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
 stable <stable@vger.kernel.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A scripted conversion from userland POLL* to kernel EPOLL* constants
mistakingly replaced the poll flags in the loopback_test tool, which
therefore no longer builds.

Fixes: a9a08845e9ac ("vfs: do bulk POLL* -> EPOLL* replacement")
Cc: stable <stable@vger.kernel.org>     # 4.16
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/greybus/tools/loopback_test.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f26fa..41e1820d9ac9 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -655,7 +655,7 @@ static int open_poll_files(struct loopback_test *t)
 			goto err;
 		}
 		read(t->fds[fds_idx].fd, &dummy, 1);
-		t->fds[fds_idx].events = EPOLLERR|EPOLLPRI;
+		t->fds[fds_idx].events = POLLERR | POLLPRI;
 		t->fds[fds_idx].revents = 0;
 		fds_idx++;
 	}
@@ -748,7 +748,7 @@ static int wait_for_complete(struct loopback_test *t)
 		}
 
 		for (i = 0; i < t->poll_count; i++) {
-			if (t->fds[i].revents & EPOLLPRI) {
+			if (t->fds[i].revents & POLLPRI) {
 				/* Dummy read to clear the event */
 				read(t->fds[i].fd, &dummy, 1);
 				number_of_events++;
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
