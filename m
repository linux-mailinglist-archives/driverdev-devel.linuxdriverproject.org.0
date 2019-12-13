Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCC611EC46
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 21:56:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C88388534;
	Fri, 13 Dec 2019 20:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jkrBmFGV4G3O; Fri, 13 Dec 2019 20:56:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3ACC0883B6;
	Fri, 13 Dec 2019 20:56:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 872BF1BF3F0
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 20:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8341E203D3
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 20:56:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AFwVv0lM5Jfe for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 20:56:25 +0000 (UTC)
X-Greylist: delayed 00:30:44 by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id DF797203A6
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 20:56:25 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id b137so58379pga.6
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 12:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nxSm7tgroROdEPl3eszZpyOKF7ZUt7YQNLaaQ2KtPDw=;
 b=OQFfePJq98DdDPxVGMs0UExHWaeiLhsNPNd1HDpzx7sV4pEkG75/mn8H7G7vL7ieS/
 Kq+v0ZhfAMjlvTBJ2RY2BFBd/bCzDLG36cwWKU7uYUx7SNBp56jhDlrCvnlJ3tp1CoLi
 CL2H8puLOF31BHddE0g8KZ0ofCBJJf9YEdgFjrli+xlET9+GQNp/FWWt6rBuq2np1oK9
 q1h9w1vufYkGpqJZ1Z9vvzSY0U2krn/yk3Yu74lZxKzxPFg57eafAyJ3eO7SJ4BSpM/9
 I9VAZOeA5V44gkJ7Kj5sfO20zMHgujtOIhqH9UKN4ji7K2t/g9fItZVYZXh1H1LUoVj4
 j/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nxSm7tgroROdEPl3eszZpyOKF7ZUt7YQNLaaQ2KtPDw=;
 b=oTV2lVhzOk30dn8WoZkboSWYClD8HzJ2n3/T/0T+CCwzWEq2Qrzb/Autp21MU32Xrx
 5AbWtFPB2d7xSKiCYHJJmK3IVve+aR0epJGGErdoxwr34zurBwCJM2X4YDYWmFbJG4nl
 /+BFfknvXhqS0BjONUQfS1IjPPMeHzUZkf0QNu1RIyrr61CuLSTaNbiWHiyAV0C/8kgY
 ezqrBl63hPnPiquvjjS4onm0tkQNZjbjecpwuHA49xDggWfQIoyiQxxPNpnSgOYApI8i
 8QtSHYqUE8YOvHTAWao2hluvWw51gZbqxeyQrQP97bYeJGU1nmnB4vvuH5wQWW8E+014
 +khQ==
X-Gm-Message-State: APjAAAUWobrjr9/7YKUHmGblLpPz1cjQPdbqdSEvuHbFpsgm7jBpbh20
 sE3ypwXa1D7A4lCIiF0iQuvVQCS5JWpmKw==
X-Google-Smtp-Source: APXvYqyEIp81+z7sCimyY10euoklrxZVo2wYjhKcwH6l+idB4a450j9Hai/Lk8ptt120y5sfewwVig==
X-Received: by 2002:a62:e519:: with SMTP id n25mr1468679pff.220.1576268741192; 
 Fri, 13 Dec 2019 12:25:41 -0800 (PST)
Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:0:b2de:593e:a6f0:9b20])
 by smtp.googlemail.com with ESMTPSA id
 d14sm13548720pfq.117.2019.12.13.12.25.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 12:25:40 -0800 (PST)
From: Todd Kjos <tkjos@android.com>
X-Google-Original-From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, arve@android.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, maco@google.com
Subject: [PATCH] binder: fix incorrect calculation for num_valid
Date: Fri, 13 Dec 2019 12:25:31 -0800
Message-Id: <20191213202531.55010-1-tkjos@google.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
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
Cc: joel@joelfernandes.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

For BINDER_TYPE_PTR and BINDER_TYPE_FDA transactions, the
num_valid local was calculated incorrectly causing the
range check in binder_validate_ptr() to miss out-of-bounds
offsets.

Fixes: bde4a19fc04f ("binder: use userspace pointer as base of buffer space")
Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index e9bc9fcc7ea5..b2dad43dbf82 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3310,7 +3310,7 @@ static void binder_transaction(struct binder_proc *proc,
 			binder_size_t parent_offset;
 			struct binder_fd_array_object *fda =
 				to_binder_fd_array_object(hdr);
-			size_t num_valid = (buffer_offset - off_start_offset) *
+			size_t num_valid = (buffer_offset - off_start_offset) /
 						sizeof(binder_size_t);
 			struct binder_buffer_object *parent =
 				binder_validate_ptr(target_proc, t->buffer,
@@ -3384,7 +3384,7 @@ static void binder_transaction(struct binder_proc *proc,
 				t->buffer->user_data + sg_buf_offset;
 			sg_buf_offset += ALIGN(bp->length, sizeof(u64));
 
-			num_valid = (buffer_offset - off_start_offset) *
+			num_valid = (buffer_offset - off_start_offset) /
 					sizeof(binder_size_t);
 			ret = binder_fixup_parent(t, thread, bp,
 						  off_start_offset,
-- 
2.24.1.735.g03f4e72817-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
