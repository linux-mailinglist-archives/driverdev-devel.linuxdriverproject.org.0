Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B252480EE
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 10:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1489187524;
	Tue, 18 Aug 2020 08:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RyJchgATwUMb; Tue, 18 Aug 2020 08:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7489A87155;
	Tue, 18 Aug 2020 08:52:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38A531BF296
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 08:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3106785450
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 08:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id unysng-RZhMM for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 08:52:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7D4D48543E
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 08:52:09 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id c80so15509125wme.0
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 01:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:cc:subject:message-id:mime-version:content-disposition;
 bh=NRXSlg5+U42+r5yz1HaufmNO5p1AhYU7aGg04+6KXs8=;
 b=KmAj8K/cYU+TcoE/PQdjWenUy4DPWY+a4IxIpXihWl0Go9S0wLueKJm66vzG9xZFaU
 hV2NdvkdxPSzs2VfMV0meYreAH0ywZTniyq50amKdRzhJt6WTumlc6/5nGQwiFWX8hQn
 3fbAdb3qPwZKWQKq2rXx6kuMcuKAcU6QQMQSn3XH1xqKOaae688ZoGFFtOENbKQbSgxa
 RWBXwpPPbu1GxeQBK1yEc+XKvi/vvf//JLwv76mfU9VMgSDRb6xxj1Tkfpkl6XvfZlr9
 TV7sFWCJXS9isSuwWuMOHsxntrJSE42Zzef4MnEqcBJX+bnmTaLWyA3YNDBHYmggLAk1
 eIcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:cc:subject:message-id:mime-version
 :content-disposition;
 bh=NRXSlg5+U42+r5yz1HaufmNO5p1AhYU7aGg04+6KXs8=;
 b=TiaiNtrXfofN2VI4bsm0QGxWaiR6JVzKHMZqZpaATNY1fbSS8DGQxWkp1wOJM6F8zk
 Rgi04Yy2rjLirNFmqJf3E93sd2TWqinZj7ITjTsrEnmvMlb8DDr7Cxnr2VLqkoSCLo51
 yDHPB9B3pw83J3GeSRqIw9bRop5CygL9c6eC7kZoolezi0GlOwvy4k3+Aq/DISr5Qlrw
 dEpRU938a8Ke9MH7lnNoLCxhDd9nlCPbajkUOwtSdEQDGbtxwbj8d49TK8qgTB2wMl86
 ikgzYqg9vI+psdisqHYVaY6FZ+GTX3PZCJtSoWFfk7FBAwErObk2Ob4OPUSIx4tr/0aH
 fb1g==
X-Gm-Message-State: AOAM532lwDyS7R9IBu275TSGPUGBXkT4gLGLZnfHRqRk7WK6N2X4pJIt
 PWOy0w6iESkktESMd/dOgC8=
X-Google-Smtp-Source: ABdhPJxnlP0vZjXNWran/cULmdsS5AmAYwn4ztkVU7HYOyiC3uxCdjIT8N2W+JNr5NvyqtJsfSq2DQ==
X-Received: by 2002:a1c:e907:: with SMTP id q7mr19248587wmc.155.1597740727946; 
 Tue, 18 Aug 2020 01:52:07 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id i7sm35425407wrs.25.2020.08.18.01.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 01:52:07 -0700 (PDT)
Date: Tue, 18 Aug 2020 11:52:02 +0300
From: Tomer Samara <tomersamara98@gmail.com>
Subject: [PATCH 0/4] *** SUBJECT HERE ***
Message-ID: <cover.1597740722.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linaro-mm-sig@lists.linaro.org,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

*** BLURB HERE ***

Tomer Samara (4):
  staging: android: Replace BUG_ON with WARN_ON
  staging: android: Add error handling to ion_page_pool_shrink
  staging: android: Convert BUG to WARN
  staging: android: Add error handling to order_to_index callers

 drivers/staging/android/ion/ion_page_pool.c   | 14 ++++++++++----
 drivers/staging/android/ion/ion_system_heap.c | 16 +++++++++++++---
 2 files changed, 23 insertions(+), 7 deletions(-)

-- 
2.25.1

/tmp/0001-staging-android-Replace-BUG_ON-with-WARN_ON.patch
/tmp/0002-staging-android-Add-error-handling-to-ion_page_pool_.patch
/tmp/0003-staging-android-Convert-BUG-to-WARN.patch
/tmp/0004-staging-android-Add-error-handling-to-order_to_index.patch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
