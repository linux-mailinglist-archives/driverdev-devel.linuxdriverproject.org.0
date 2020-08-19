Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 416F124A6F5
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 21:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 710C7877AD;
	Wed, 19 Aug 2020 19:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q39b8jZ-0850; Wed, 19 Aug 2020 19:34:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66A7587758;
	Wed, 19 Aug 2020 19:34:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C74DC1BF316
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BDD6386153
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yo3Xz4PCLs1A for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 19:34:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1BEFC86151
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 19:34:50 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id ba10so19069814edb.3
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 12:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=IBIAq/aRalQqzRlQ/lTXnrrK/pEn1oTsWEQW2pLJvVY=;
 b=It2/zMJhpbNifDeupP5coNvZtaSNVOZRoWJGfjQgSuBzlPVSMNl4Q1ow7pWpVWh96+
 jOejtEagAblDa/AFoA/tK2luH611bwiDz8BYFsz2MPs3qiF654Q1AR0F1lFfpmK1+Mfh
 UEjAyGgd3AWoMdjJRRyXMSzoUpFvz2FrUddK65BN+WJz2nXHMv9YEiy5/6yoPr9eHaHt
 W9KdVlcdY/1C/4cwT9QrxU9rxjFLgHV6z5utZl6GHNUGd3hyZ33VEcrW9iBP9S91kkqH
 tjeGmmxoT6gwy9Tv0GLQzIKvJDoL7OCSlaEqximGXwWYsmBg8zRGKZeiRZzn5VDBOZSN
 r8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=IBIAq/aRalQqzRlQ/lTXnrrK/pEn1oTsWEQW2pLJvVY=;
 b=i+8uSqE8pLKShz/wNrEyujBZjnzhKSVJJ8D8M2JnEXFwgmslvyoXZg+aCVcafPPko7
 tzu22Bj+QkGDHstAErt7TtJAbb9jI4UjXyydFYE7AZ2PewLyqtfgJD4ZQEm9zbFasPJA
 4PefiSXJxfG/fuswmAsVPnHIfNAxtWwZKz4TT6QCv7sKH3VL/hXzoQExflJMlEhpa7hc
 KEfcvH8/R6EJLH2tNqrXjSzQxcGLQAl4fjvCKWdFh3/41MchRNFvDL/2J/WJDAeG6jRU
 9LlMkeGEHl41b1ssPAmhgdP9JYVLf+K4pYkIg1iRrSEm/pJKfDj99u83scF8pfXX1lbB
 VcDA==
X-Gm-Message-State: AOAM530ejon5JAAS7dT5gWsglgT/tBJXpJceX+NbjZlZJoav+zSXY68I
 jP3SFw2a0vtYpbshLDQ9RRY=
X-Google-Smtp-Source: ABdhPJx2cuOSho44M0UYvQyss6pr9d/vxjK+w6u+ICzKOppEkPxELogJ467lERx1j0FL2Fuc8HNNFA==
X-Received: by 2002:a05:6402:28f:: with SMTP id
 l15mr26430494edv.233.1597865688290; 
 Wed, 19 Aug 2020 12:34:48 -0700 (PDT)
Received: from tsnow (IGLD-83-130-68-114.inter.net.il. [83.130.68.114])
 by smtp.gmail.com with ESMTPSA id e14sm18640165edl.86.2020.08.19.12.34.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Aug 2020 12:34:47 -0700 (PDT)
Date: Wed, 19 Aug 2020 22:34:43 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 0/2] staging: android: Remove BUG/BUG_ON from ion
Message-ID: <cover.1597865295.git.tomersamara98@gmail.com>
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

Removeing BUG/BUG_ON from androind/ion and add error handle to calling
functions

Tomer Samara (2):
  staging: android: Remove BUG_ON from ion_page_pool.c
  staging: android: Remove BUG from ion_system_heap.c

 drivers/staging/android/ion/ion_page_pool.c   | 14 ++++++++++----
 drivers/staging/android/ion/ion_system_heap.c | 15 ++++++++++++---
 2 files changed, 22 insertions(+), 7 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
