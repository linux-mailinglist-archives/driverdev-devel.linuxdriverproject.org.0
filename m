Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE3E2480E5
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 10:47:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E511B86294;
	Tue, 18 Aug 2020 08:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2yz1QQ2nPtVl; Tue, 18 Aug 2020 08:47:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AD3D862DE;
	Tue, 18 Aug 2020 08:47:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 210491BF97F
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 08:47:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1458F20378
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 08:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WcWGrgQny+os for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 08:47:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id E51CC20380
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 08:47:09 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p20so17481488wrf.0
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 01:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=NRXSlg5+U42+r5yz1HaufmNO5p1AhYU7aGg04+6KXs8=;
 b=qtvHb2JIL3T8E/cpqHVqVZTwC+2u6wi/BU8buEwdhurz/5FqZ7HmYNki9XMvQzeEOh
 6WFyeYstY9bzdFkbf8+St/om42mXRQ7aC2eqZbXYC9A+zEfAFgZ3tJQ5207yU/kkGSPs
 gjyZcAQFPk8J3lGiKEqb20V6lYuRAeGn0UctPicSNM/modZhriw7Gh3UBrYMqzsrnHG/
 SHJu+fPKnq7F5AwzuI+Vzf9zqK2tHq8sxUGh/DihhIYv1twN+w1XaJkMseultI1K1L1q
 oaNqI6wiYSSeth7ZAFKZjYHdwrgGbZ2GcqWzoDEw7ri3Qj8c+dOFGFuQWLoiseSfkGdk
 YU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=NRXSlg5+U42+r5yz1HaufmNO5p1AhYU7aGg04+6KXs8=;
 b=YjXf8holDln1CWqGaWC/1p3ybJV3ej3wsuTmSflDN9Gt0gR4m+Y71wTwCBVRTPe7x6
 7kPE4rC/HHHJ489Muid5iPJJd1JcmHXCf/lShx0KIUgHJjhvOy/trhgttc+apalH/Wwv
 cRoUPMQNVq9BQ1VOT87K4M/OeuKcOh7em+50Lz5JaDRqW1VOVJdM6gUSEqWozONbUIhh
 HrGL3Wrhk+BX2uERdz5zGZjOnF0VBmel5RIubhJPPxYXFPO3A7KLAzxvHLYwwDOetq6M
 ZevEXdjPhBw8MWk3rc3dT6mXsgNcCCB9My4B/95OU9rpWm8PJg520l/eFs059BxKqklR
 vnSg==
X-Gm-Message-State: AOAM531+NIsMWjOBqrtp+982Lu8G5g/IZOOSllYczqvoawmy2mIV27Ru
 cuDccSGu4c48d12W/oAMjVI=
X-Google-Smtp-Source: ABdhPJxYBgGknEAQK8xsd1B/rwkA33jfkZZNMZ/DlgBKDOAkmd6M6OvtzohckbpoiaN34Csc8pKccg==
X-Received: by 2002:adf:fe50:: with SMTP id m16mr19935544wrs.27.1597740428207; 
 Tue, 18 Aug 2020 01:47:08 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id n11sm26064727wmi.15.2020.08.18.01.47.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 01:47:07 -0700 (PDT)
Date: Tue, 18 Aug 2020 11:47:02 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Laura Abbott <labbott@redhat.com>
Subject: [PATCH 0/4] *** SUBJECT HERE ***
Message-ID: <cover.1597740422.git.tomersamara98@gmail.com>
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
