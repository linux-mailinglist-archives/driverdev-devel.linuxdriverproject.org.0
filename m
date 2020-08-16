Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E38245900
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 20:40:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61525204C9;
	Sun, 16 Aug 2020 18:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qcGmRgKN3fy2; Sun, 16 Aug 2020 18:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E02B720431;
	Sun, 16 Aug 2020 18:40:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DBC41BF3EB
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 18:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5888520431
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 18:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UPp2wYukkFEV for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 18:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id CAE372034A
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 18:40:39 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a5so12774278wrm.6
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 11:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=GMPBK8NnXSwBg3pxRK5LStqyUM6u/9HiM5fcS5/2YLM=;
 b=qn1tYUlMkD1N+dqWYlL9N71yUtVYbRD55m5C/8A8+k8xvwwsoRCXCFNfQgK2TFZm7C
 FsjsKSxhVnBI/ADmrdVk76KsNambeKhwe1dwmN1KulSYpo1bTPmy+cmVz74v+tnuNz2J
 Hwxj3D6mHqbEkmUKIe27kDqgSwKu4lWmejqtZ4ZFjSGxqP1yyZv+pkVJBcEAcdJ6wW7I
 dcsoXMx1HxyD1nNGMfnDFlRu0z4wZML5YrAbZd3wrVB5y2NqFFTzJWlMTyGE/p6gFg1B
 UFHE355ORj0RqYwaVm2wbYdbdt+JhUGH+Q5eIFURqNwJeSCM9+2VWZKrJU8GoFsxP+o/
 3Xlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=GMPBK8NnXSwBg3pxRK5LStqyUM6u/9HiM5fcS5/2YLM=;
 b=J2O6Z38RxiCd3NxOUaUY/bvGxIc4MXupBzIDeVxSTZApIeuoy7mmYywhz0H4T1SnSt
 /Jy6nHvHEfWCh4Pj0clvCD1icSwIx93fWyJoW2wcYK6Ha/C+TVFqj6BfmYdXRRUxVGow
 X46jEYsBh3uI2B4Zp6io5891dLRgzB+GiVO7g28r9zj+qAHzYB4X3IKNrr/SalubJNMW
 lE3g2jxoL9wx1+8pxNslJIJJNGhagJDN1vo9fNZ1/1Emia/ScCUU8/jH+60SYQZnglCj
 wkNeGIAzvCg4Ev7v9L+oK+yBafN67AKIxk49LrcU8YTkxUJXBS//WFNVYsHeiol18ggW
 +0FQ==
X-Gm-Message-State: AOAM530xw7osrC9zddGUxABtYZ4WaMdhXOMV2oM8SnNqGz94TbeLITcn
 bY33U13THqdpCWvEj0TY7ZU=
X-Google-Smtp-Source: ABdhPJwedwjz3znts+4tP79UkI2LDgWwjkT5I6NMg5cOaR9plyiIwz32l67j6k2yqGPK9TPrZn1PJg==
X-Received: by 2002:a5d:538a:: with SMTP id d10mr12305018wrv.280.1597603238417; 
 Sun, 16 Aug 2020 11:40:38 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id w64sm29735632wmb.26.2020.08.16.11.40.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 11:40:37 -0700 (PDT)
Date: Sun, 16 Aug 2020 21:40:33 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/4] Replace BUG/BUG_ON to WARN/WARN_ON
Message-ID: <cover.1597602783.git.tomersamara98@gmail.com>
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


This series convert BUGs/BUG_ONs to WARNs/WARN_ONs

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

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
