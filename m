Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5C424D88C
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 17:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15D6587ED1;
	Fri, 21 Aug 2020 15:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lUty708A0xwO; Fri, 21 Aug 2020 15:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C5F787D7F;
	Fri, 21 Aug 2020 15:28:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 752331BF5F8
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 15:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6A0B2885BB
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 15:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b6IwnRzojX4T for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 15:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B1005885A3
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 15:28:18 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c19so1456744wmd.1
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 08:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+y66MqggCakjVuRG4cFz30VjWieYM9CuDcuOFxkR0Z0=;
 b=XrqNGUmj2d6Xu6Kb6GMB3M6jmXO1rzxI9r2vGH/mlHjReZ/EU9RkaCjmwICLzWY4Gn
 TGX8IBv6+v8eYu5rSay0806nirzMq65EzeJd6NOkbwQbwSEiQFJy8wdhquSBc4YOfmUG
 p5s1Bzs56kl0dmEPlRi1W31V8SFMxK3pzTUz2D6boIA6gDo8i1/ZZgcjkvirtaMc+lJ5
 UDWeWSgwgYyOdUACy2ozcc/Iz83Ln4ITtmcCsk/xqOjAcwFXWIiCIgjVAxfygoZs1p0z
 gKl3GsxfxpaqAYLtGx3HWCsRKVXuJHaNRjzlKM+z/lvf1aseKPg6eUs2uPFuZ5fcGSSB
 4/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+y66MqggCakjVuRG4cFz30VjWieYM9CuDcuOFxkR0Z0=;
 b=cvilIhAWREGE5O4GX1Wzbs3zIm2SKXVlfLKNrbEksyT3ENTXWw/63ujMM4YdKhrIW6
 ycUmnHHBmhh/dng76o0hUD0uCKxvjeS644IEFcWXKw0EGWfU9UuboHhIVAEE+lma7TMH
 EcfJnT43zjwnKN/aX3mL1d8zTc5RNhEK9+OKVI5es9nxMqFK0QYKJxH28e2OSCVLaRPI
 i/Zrmx4fYlm07VkyaRBGQ+IFsiyj7JhLUedk65wI/3sBZHJlkHUrg5k+4IuC4DSPtK4z
 rHbykQPeIpZKE+6ycNrPlC1fvMYhg3ZLCeOE6P25Q9neFAOcJ9jgVoqdwpVrrEAUarsd
 mp5A==
X-Gm-Message-State: AOAM531jQ+dT11u20Cgis75i/yW+0g3m6EP3pvw+1LlSlG9ACys/uMZ5
 60Nu0aatCJnEXIn/YHGeNSs=
X-Google-Smtp-Source: ABdhPJzsj3Ldq5q3T34rHmzgtlQJTbTH7AApriawiIsBCRv3S499thDPeosIx/PU22cuIXSKmQim4Q==
X-Received: by 2002:a7b:c011:: with SMTP id c17mr4278996wmb.63.1598023697023; 
 Fri, 21 Aug 2020 08:28:17 -0700 (PDT)
Received: from tsnow (IGLD-83-130-85-196.inter.net.il. [83.130.85.196])
 by smtp.gmail.com with ESMTPSA id w132sm6418009wma.32.2020.08.21.08.28.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Aug 2020 08:28:16 -0700 (PDT)
Date: Fri, 21 Aug 2020 18:28:10 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 2/2] staging: android: Remove BUG from ion_system_heap.c
Message-ID: <a39407f84031eaeed5e65a7aab515a079edf5fcc.1598023524.git.tomersamara98@gmail.com>
References: <cover.1598023523.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1598023523.git.tomersamara98@gmail.com>
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
