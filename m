Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8446724E977
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Aug 2020 21:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5095F883C9;
	Sat, 22 Aug 2020 19:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BAeSJiJKOEHa; Sat, 22 Aug 2020 19:44:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC5AF8806D;
	Sat, 22 Aug 2020 19:44:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 585AB1BF42E
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 19:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 527BA8806D
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 19:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uj+lc4X5wecQ for <devel@linuxdriverproject.org>;
 Sat, 22 Aug 2020 19:44:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8648D87EB8
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 19:44:04 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f7so4976516wrw.1
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 12:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+y66MqggCakjVuRG4cFz30VjWieYM9CuDcuOFxkR0Z0=;
 b=afpLZoVb9S8UX5sZ9/41+hXwLGbgiEtiHOm6f0p2P8Oh3Af7Yx/no4zrBKzKnt0F0f
 PPIT2K/9GZAWs+wbhuu+TJwBZ6LEfRYnHvZkTfv64n7pZrcffX0YS/x5cTaijqlkLzZP
 mKJR9PFZG+yGLfMKAMdJc1mackvLjGEjbz/zDBoz0qUeFGlQwPfhnSoiwq8//Z9UlFNn
 O/MvoekqmF7B2xPoXRW2cYPtM3YApr7keQHyrArRZHDI2VQmH060XReevrwNCxSlfr9i
 GY9+091wIX9sfA+wZSOhUMdgB7fs5OKUTLNqWZBlqnGeandc5Snv8rrJU3MZk9+ODRaa
 qQgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+y66MqggCakjVuRG4cFz30VjWieYM9CuDcuOFxkR0Z0=;
 b=LP5eshJj6QWkLnAdMaJQLB1ioa9uwVVKgjhHujb5ozIX9AAh8H6RU0QoUDGYchsZqx
 CP9C35BOzPjBTsR4o8Dsv3GR9STRORKupsVUpOt9j2KCxZ5WBAmDDY+I4gIL/w3RAjZs
 LMuiUJW3X4i4mFjV84aPahqKl1TpnIZ1DwMybTexECMp9USry7pfF+ShhiN1Vo5FkAxW
 +PVAeb0ySXyClf8HaFwK/XnniEXMW3dEjux3lUgBklpr3xtnQoLoo8y8tzupTWrPTjOr
 JQ74c5DkJen00XgNsqe/PJKRVsSSFaQBpxcKauQ7jQpazZTQhTme+5M5+dzPOc2GgPW1
 782w==
X-Gm-Message-State: AOAM5320ldC/zTvmJckwXKftduTpwZF+CUZPi2AzxxGM5R/NNG4Dpn2V
 +xQ2tXoGiSLk66xKLM7K5Xo=
X-Google-Smtp-Source: ABdhPJwt5n+lLcPAY7wmuVOEPNfgK98a5ZJcSYZj6v5ca19sNHLgGR7JEhitIeLWdduX+y2ESbJtEg==
X-Received: by 2002:a5d:5485:: with SMTP id h5mr3181435wrv.247.1598125442919; 
 Sat, 22 Aug 2020 12:44:02 -0700 (PDT)
Received: from tsnow (IGLD-83-130-62-237.inter.net.il. [83.130.62.237])
 by smtp.gmail.com with ESMTPSA id k7sm3692908wrv.72.2020.08.22.12.43.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Aug 2020 12:44:02 -0700 (PDT)
Date: Sat, 22 Aug 2020 22:43:50 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v5 2/2] staging: android: Remove BUG from ion_system_heap.c
Message-ID: <f554a891fb433e830403091e21fe288924c5c74d.1598125227.git.tomersamara98@gmail.com>
References: <cover.1598125227.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1598125227.git.tomersamara98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Suren Baghdasaryan <surenb@google.com>, Riley Andrews <riandrews@android.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove BUG() from ion_sytem_heap.c

this fix the following checkpatch issue:
Avoid crashing the kernel - try using WARN_ON &
recovery code ratherthan BUG() or BUG_ON().

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_system_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
index eac0632ab4e8..00d6154aec34 100644
--- a/drivers/staging/android/ion/ion_system_heap.c
+++ b/drivers/staging/android/ion/ion_system_heap.c
@@ -30,7 +30,7 @@ static int order_to_index(unsigned int order)
 	for (i = 0; i < NUM_ORDERS; i++)
 		if (order == orders[i])
 			return i;
-	BUG();
+	/* This is impossible. */
 	return -1;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
