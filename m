Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE0E2481BF
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 11:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB161875B2;
	Tue, 18 Aug 2020 09:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfesWPCF+T-C; Tue, 18 Aug 2020 09:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AB508750A;
	Tue, 18 Aug 2020 09:17:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C58521BF27C
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 09:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C22D8854B4
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 09:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5EoSRhdz5hwW for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 09:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A286E854AD
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 09:17:14 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 184so16291931wmb.0
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 02:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:cc:subject:message-id:mime-version:content-disposition;
 bh=NRXSlg5+U42+r5yz1HaufmNO5p1AhYU7aGg04+6KXs8=;
 b=g9OgGTTcV/DXM6qez+st7dlpEcxogyEG4ViV8vAbxiou4UWZUTVZlGvQQnEsaXmK7C
 9BtAUXQ0ufpOR8INAF8VnE9R6Yv/DN5qU4VeK7gTcRiiZxRKtRRy+GrskhhnlZEiTVy4
 quFw1+DtoCBmh0yzghiBwfP2KyexcnOFlBSR6OcLmAqf8Wfao55RPRi3Pn2X+SrpyQd1
 wA29DespuXyhBfIao7fGBCKqTvF4/RovqRxC2yUsaF/MYUZpDUUTtecWE+t9R2dFSanU
 T4/918oP1D9wI7RNgfAWtXMQxj/k5xEjDPu3IfTJERJhkD2h3C7far8lDFqOIMIiwkF2
 wVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:cc:subject:message-id:mime-version
 :content-disposition;
 bh=NRXSlg5+U42+r5yz1HaufmNO5p1AhYU7aGg04+6KXs8=;
 b=e+UgXmJr083y/bV2+UUMR5MITB5WfTvyEIZuZNuFUpNobpSYe6DI4YhDgAKAs+Z6/J
 35p4b3N8e4FzzbtOjEx3MwylEvzvrCk5HO1WvV0LI4EfrdKjdQvh5d0cmlUNv+IaG9BN
 BJ5dw8Zv/XhNGxZ76/p4zTcKT5xIuSnFr9Bar8y7N51FKFUN8ClRrm8pCeI8QpfETZuN
 +4IniwD4rAMBql3VJ6P9jajZVlmutTt7dWOrRXXITh6UqIc1/hOPdT4JyPxM8Xwk3VnH
 VukW2UkfmgLWrgfusUIkBJehy/FoqV1IVW3FkbTEkmeu0bgpKU5+rhKLU+xYNU7kZjuC
 Dcnw==
X-Gm-Message-State: AOAM530WjncrBZEFwNAVXfNw+l6gA0vpO0u4O7b/lViLSPcKlRdl+B4y
 UPKk0KtA2tZAZG1XLpOuH+wGZ186LFC+Yw==
X-Google-Smtp-Source: ABdhPJyYEBjemYYY66shh3k24o9Ej5PDwHQXqhemqLsfFbOHmDuOyo1Kt5S9D7qQU1rAMIolcBmj7g==
X-Received: by 2002:a1c:540c:: with SMTP id i12mr17315460wmb.96.1597742233220; 
 Tue, 18 Aug 2020 02:17:13 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id g25sm30855540wmh.35.2020.08.18.02.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 02:17:12 -0700 (PDT)
Date: Tue, 18 Aug 2020 12:17:08 +0300
From: Tomer Samara <tomersamara98@gmail.com>
Subject: [PATCH 0/4] *** SUBJECT HERE ***
Message-ID: <cover.1597742228.git.tomersamara98@gmail.com>
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
