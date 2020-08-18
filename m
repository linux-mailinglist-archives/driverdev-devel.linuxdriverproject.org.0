Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4442480E8
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 10:48:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3DC9A8757C;
	Tue, 18 Aug 2020 08:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXhISBfA+RWB; Tue, 18 Aug 2020 08:48:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDB07873B6;
	Tue, 18 Aug 2020 08:48:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C96DD1BF296
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 08:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BA71220365
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 08:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kF8AkaPitQj1 for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 08:48:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 4FE6220029
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 08:48:07 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f18so14881504wmc.0
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 01:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=NRXSlg5+U42+r5yz1HaufmNO5p1AhYU7aGg04+6KXs8=;
 b=vc827jb4szDiGQJWmjUQ76hKkmHzF/ge+sfUGIPsfUDsMxnYixvT4lsbABYjtQqXTj
 TNOz+/t7e/1NgHV2D/rOOLE3iPXBXz7EAdXqTr1yqgTqIVgCWGY7axTqxmZMMxmq3MgT
 7yRHKdaN+LUxfHmj0PcBIq9GRnL71M+EkHVlyAXqpTgtba2IgXjj6WM2RTEXRfOl9JE3
 UQK9G/5lo1CdniCpR4QGKfkxXaWPDbI0MdceWoL5oDA0C7sysUZRjHgUANE5nxiwS2NR
 lCfIR1Qg///3vtBA0s5qNFBgEIIjryLPUskiQf6ZbrM6faTFPcO2RLbFr23PleZxkVYi
 gDZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=NRXSlg5+U42+r5yz1HaufmNO5p1AhYU7aGg04+6KXs8=;
 b=jxQUm/xd+PL5dYHl+ZZWPbzR1EgIci5kUDrYCp1tGq545vtIiqWAibDiOM0MHONT2k
 eIkRqV4kjbRFVzqYYRl/aknPzwd6QRmNhTrEWojaW/gKsfTyENFjG4SXZ386Feg3joJr
 +uVNSqdrfqczUXUJoRKMiL02uIU/7DZ24dCa/TBP2tQp+vKweNMrPwnPrEDt/bN5czAQ
 Ml9KI/NyvVMEYJD+NzJbhaix7RQ0vW2d05/kIS3R3aN3LM7OquENglPHLe3/vUak1Q2d
 WMIjvFMs8fZ/WvSaCI23/sqLiKgyZ2Y2IbEUQIH4xkFp1tyCXlApCnCePCWg8m+m/SsN
 cBig==
X-Gm-Message-State: AOAM530OvOTsnwGqa8mb9CBnUg9docixzmhaIKiUSLrmmrx4SiRpCCPl
 A4E60ypR1IJEtkooUAr+qGI=
X-Google-Smtp-Source: ABdhPJye900/ysQfZWKaE9AhCw6mlBB1MGafKxJSt9lQpG9zmDRY9XErEpATc4JPKMBIjBOoN7VY8w==
X-Received: by 2002:a1c:448a:: with SMTP id
 r132mr17956380wma.158.1597740485923; 
 Tue, 18 Aug 2020 01:48:05 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id g70sm33434413wmg.24.2020.08.18.01.48.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 01:48:05 -0700 (PDT)
Date: Tue, 18 Aug 2020 11:48:02 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Laura Abbott <labbott@redhat.com>
Subject: [PATCH 0/4] *** SUBJECT HERE ***
Message-ID: <cover.1597740482.git.tomersamara98@gmail.com>
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
