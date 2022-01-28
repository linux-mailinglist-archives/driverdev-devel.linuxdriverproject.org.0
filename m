Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D016C4A0338
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jan 2022 22:53:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 465F980AB7;
	Fri, 28 Jan 2022 21:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8S9h_dUGaVY; Fri, 28 Jan 2022 21:53:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CA8080AAA;
	Fri, 28 Jan 2022 21:53:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B807A1BF345
 for <devel@linuxdriverproject.org>; Fri, 28 Jan 2022 21:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A666460C16
 for <devel@linuxdriverproject.org>; Fri, 28 Jan 2022 21:53:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xOgRY8sSXseJ for <devel@linuxdriverproject.org>;
 Fri, 28 Jan 2022 21:53:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4028960BFD
 for <devel@driverdev.osuosl.org>; Fri, 28 Jan 2022 21:53:45 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id h12so7692678pjq.3
 for <devel@driverdev.osuosl.org>; Fri, 28 Jan 2022 13:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=SRcFqXf4W5KlWVHC482pclcOa/Wlf87IFtn7gqQUTEA=;
 b=MfxPMGF9VBg+Q3pTSulA6B1vXCeOFy1RoHq4bs74fuyIArdfcD+BrKIlZ8zJDVJfHZ
 /RWQOQbrtqdVH4Bl82t5y3zi8Go8jtVCWTtkV0RG98KBdALGJ3IkWIqIUAhCXoSqEVZH
 Wj69Rq349zTYdVrlCtBtSYq9PrOyEowKmbrKyT/RFbkbjBuCmN1pXxgV+KMTODak+dTP
 9D0B8TRSIT1OGigucE3UnbCuJPR+9Ypla8dCY22GRSHG1m+fbSFQiF6Yj2mXOs+wUAbr
 R5O1PHC4piIsZuQVYVKZj/LPEcylyEeVxZvIs7tmg3TnF2QyQkzrxYCT+IpdKcxwDq2s
 g/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=SRcFqXf4W5KlWVHC482pclcOa/Wlf87IFtn7gqQUTEA=;
 b=7ya27DwQNd+K16tDF/UmClhGvYPPLIu8PCJErVWdgXRkPc4tgHCcUGJkWZlbQS0Trt
 wPt9/w3e2ZmVgECS79+uFuK4YLM2SeBU/SnWPPlTTfhiUojVFWpnRq/AURvtiC+XGkBa
 Dveq8yfWF1ShPE2XLJb5b4CUE4KGZzd5Ok2NKx8wHW3xHBokxnZ1/IZh/LrJcS6gJrqb
 8Eqf5WzDetsSdtPG2qf96FERMJJlJzjjrCf5W12PGgoqz3F7ytCWkst1N6tGyeZ/C508
 sJMNKnKH41j5RhQDMe58nk6/ysPg86kAzAg+2r1qLp/2LSCNoEjuPyeS+UbdUBR5xhjI
 E6mg==
X-Gm-Message-State: AOAM530LTrlP91pz9+QTFSk/vGomCnB90Jt4GxXvFknzU84TANVdR22D
 uGVmhr9+92d8NFj8kb+WmfJsCHtCJS9ghMvAKfw=
X-Google-Smtp-Source: ABdhPJzmpzyz3/8to7EZqYweuXAC3gMMWCyrLUCyuZrt8tMXHjYWgTnYKNOkL1+Qv42ieI8b+rbTTkMzONKxnDrbxG4=
X-Received: by 2002:a17:902:6848:: with SMTP id
 f8mr10236663pln.54.1643406824430; 
 Fri, 28 Jan 2022 13:53:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:674a:0:0:0:0 with HTTP; Fri, 28 Jan 2022 13:53:43
 -0800 (PST)
From: mrs Stephanie Jonathan <boormeda@gmail.com>
Date: Fri, 28 Jan 2022 13:53:43 -0800
Message-ID: <CAKHUtr=9c7ruE47pPnFGBk0U3VUDnty7rkdEHKdAyWNkRew88g@mail.gmail.com>
Subject: Hello Dear
To: undisclosed-recipients:;
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
Reply-To: mrs.stephaniejonathan4040@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear

Am a dying woman here in the hospital, i was diagnose as a Coronavirus
patient over  2 months ago. I am A business woman who is dealing with
Gold Exportation.

 I am from USA California i have a charitable and unfufilling  project
that am about to handover to you, if you are interested please Reply.
And let me know if you can be of help to me over this and once I get
your reply,I will give you further details about it.

hope to hear from you, ?Regard

Email : mrs.stephaniejonathan4040@gmail.com
mrs.stephanie jonathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
