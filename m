Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FE2463E1C
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Nov 2021 19:52:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 756B083295;
	Tue, 30 Nov 2021 18:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96cxkgkzed6u; Tue, 30 Nov 2021 18:52:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 107DA828B3;
	Tue, 30 Nov 2021 18:52:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B04D1BF5AA
 for <devel@linuxdriverproject.org>; Tue, 30 Nov 2021 18:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B22F4092C
 for <devel@linuxdriverproject.org>; Tue, 30 Nov 2021 18:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOa9zjSoQZ3G for <devel@linuxdriverproject.org>;
 Tue, 30 Nov 2021 18:52:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8EC5740928
 for <devel@driverdev.osuosl.org>; Tue, 30 Nov 2021 18:52:15 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 a16-20020a17090aa51000b001a78699acceso11988368pjq.8
 for <devel@driverdev.osuosl.org>; Tue, 30 Nov 2021 10:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=7A9065iuR2ss1lxFZ95G+12fYKknTJy/yo/FOQYVLbs=;
 b=A59CQGMcicMZfytm0hkVWaDDFBdJLEYnRpnE6eBtakQNyUbCLFzb74biCDIdkX2jCN
 SUjWMYVFU2LK7sZ7S0UudaMdxnhHdSaY6zS2Y29kEbuPwya3WZaHRlal+SvjZAiwiiQ4
 S/RsUZVWrW2o9hxGUratT73jBGVOVcbGtqa2WuhH3mUW/02Tn0goId4nZLEbLsPs/QGp
 95wyx7p2KMCASjRbhV9JSLgm0tI+PpHjOhEqpiL1xOiT3Xo1A7kRJ4Ubejb0z4LtY/rq
 /vQpt6MbwFmgKRRS4W/F5hKjw2q572Hmh2rwRk9on5Ijt+NvbORVpDbL2qvfa/2lH/Qk
 mN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=7A9065iuR2ss1lxFZ95G+12fYKknTJy/yo/FOQYVLbs=;
 b=bIxf56YBLeZbMWU65PiLyROxFmIjVJn8A6kIItLgZY0A9ea22i5f2zhY2vQq8ztkVv
 Lm2fKF4G5eREz4Q2RVvYh8oD3mlqsuNDnTdFfFhVckhFeMj1gmj9kEyB9MmgxZAJhm7n
 eTP8RiaqBdYs8lZ1ArEBn5Fe9yty6P7n71xweCGogiFWZ3H4Pm9kVd84fTfbGObv6+lh
 oVcK9Q3gmV9bXbCuOuDQ6WMdwojg1bcAT1kv3R0Vw9FXDJkjPmv2lpk80K1O3JWA59oo
 HuKMoTT6bLtLyR439O5VDMNYQtZuMyngtKuAy2cSMCR4y3eVXtyXq+n9Tp6E1FEhUsay
 P2hA==
X-Gm-Message-State: AOAM5315EtA7rNbMEiXaRD9Cdfk3tV5tcNUbP/702WQi2wF0f0M7EjOP
 O+QYYyGQSutzxLWq4qi3pKFmuFF4yQ==
X-Google-Smtp-Source: ABdhPJwzxIwv2D5T5Bk3CoSZE6+ciPrBfIzNl6uc/DTYdn6OQk6YdgCk5CrcYybJO6aGTCVxsQVn1M+ovA==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:2355:b4ef:3d57:5d7d])
 (user=tkjos job=sendgmr) by 2002:a17:90b:33cf:: with SMTP id
 lk15mr929698pjb.85.1638298334923; Tue, 30 Nov 2021 10:52:14 -0800 (PST)
Date: Tue, 30 Nov 2021 10:51:49 -0800
In-Reply-To: <20211130185152.437403-1-tkjos@google.com>
Message-Id: <20211130185152.437403-2-tkjos@google.com>
Mime-Version: 1.0
References: <20211130185152.437403-1-tkjos@google.com>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
Subject: [PATCH v2 1/4] binder: fix handling of error during copy
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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
Cc: joel@joelfernandes.org, kernel-team@android.com,
 Dan Carpenter <dan.carpenter@oracle.com>, avakj45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If a memory copy function fails to copy the whole buffer,
a positive integar with the remaining bytes is returned.
In binder_translate_fd_array() this can result in an fd being
skipped due to the failed copy, but the loop continues
processing fds since the early return condition expects a
negative integer on error.

Fix by returning "ret > 0 ? -EINVAL : ret" to handle this case.

Fixes: bb4a2e48d510 ("binder: return errors from buffer copy functions")
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Todd Kjos <tkjos@google.com>
---
v2: Added this patch to fix bug noticed by Dan Carpenter

 drivers/android/binder.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 49fb74196d02..984e6263dcc7 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2269,8 +2269,8 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
 		if (!ret)
 			ret = binder_translate_fd(fd, offset, t, thread,
 						  in_reply_to);
-		if (ret < 0)
-			return ret;
+		if (ret)
+			return ret > 0 ? -EINVAL : ret;
 	}
 	return 0;
 }
-- 
2.34.0.rc2.393.gf8c9666880-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
