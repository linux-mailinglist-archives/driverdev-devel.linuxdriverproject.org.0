Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CBFA3E3B
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 21:14:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67BBB89415;
	Fri, 30 Aug 2019 19:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y3WziJyCwD4r; Fri, 30 Aug 2019 19:14:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2D6A89402;
	Fri, 30 Aug 2019 19:14:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39A481BF470
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 19:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 361A689402
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 19:14:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v1IqPU4y85VJ for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 19:14:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BDB55893F8
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 19:14:49 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id b187so5427436vsc.9
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=DoyuEGcT16MWm1ptINxxdohPxbDYTdes3aWUAOc8ues=;
 b=if5W0RrlteXBYYFb4DzFfz0jgooXgam5I3PKaBUDFdRjJTrFBGa6ftJ3/Pk+Iq66ks
 Z9BFmLOZOoOOl2pZgsRciVJSftnaPamCxEaGaefUhOYdKmJRevlgzUnc0SHW6+oBk8xM
 4IlDVeaAQdb48RJd7Infy1t0cAnDoBDHtdszytaZEvRLt0Lbc6XVmI8jUg/xtywm3faQ
 y4p8sOezUjaoc8CVJClfcYmQ9k6Hl5VHBU/rGlbHLwq2FA0W1IwW2zS0klulsRp8LDWh
 kzbvJ7NZLl53LMAl7/sQl52kj4iuxYZEcxgwIBBgNBQlRaiGgty7dkMAueUp/HWy9/ex
 q5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=DoyuEGcT16MWm1ptINxxdohPxbDYTdes3aWUAOc8ues=;
 b=D1L3UetWCjaJTvnR7yKf/4BohFrxWnmnxnWCOloAo89z53mQXO93gHRuK2Rs3OnWZz
 nmZP/Zm0kEcqBaKL3GIVQlBYTSSSQBjvNeMaUSndgsx+MVdAofjDAhYhKV1f+d9bMxL+
 MOP4rMeBTfiauMeW8rFDkAMveYFyPZS41r+wa4an5mjqdSxQY6QOoBzTM+MnIlQBfdr3
 PNn9Vdit57sEoooD07+iRWKl568hwxp2BNvwMykWqw0QH6Ac3pqVO7UFPKCPRGc+jRYo
 DslQza317W9E8oxalg5EVZ1xirwQ0IXrbNDhfAQZpo9oAsDDLDqimcxMDkcn2QHaR4L5
 Ga8w==
X-Gm-Message-State: APjAAAVh08OaqiGYPdstoye4qNqByyW94r19+eCZRUK+dWhUd8kBoxlF
 U1wp0B4PM+FdSl7coq5bBK3dHczHzjkO04oKVPM=
X-Google-Smtp-Source: APXvYqzyKot4LTf2CE1cYbHUTXQ2S+YSSL/EW05RLh7gSz5j/0srfZT9MPu3NRqonlNarg5v10mlfKTHdG6TitskM3k=
X-Received: by 2002:a67:e906:: with SMTP id c6mr5088380vso.82.1567192488646;
 Fri, 30 Aug 2019 12:14:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a43:0:0:0:0:0 with HTTP; Fri, 30 Aug 2019 12:14:48
 -0700 (PDT)
From: Mariam Dunga <whiteopearpeadmi@gmail.com>
Date: Fri, 30 Aug 2019 21:14:48 +0200
Message-ID: <CA+RSF_JOYzdMKE2nGy190QYNUXmSkB=hNZMQTYJDy1KOJRcZ8g@mail.gmail.com>
Subject: Complement
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
Reply-To: marriadunga@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greeting to you, it is my humble pleasure to contact you through this
Medium, and I will be glad to introduce myself properly once I receive
your response. I am contacting you personally for a Long term business
relationship and investment assistance in your Country that worth the
sum of (US$ 9.8 Million). However, you will be furnished with the
details on Confirmation of your acceptance to partner with me, thanks.
Best Regards
Miss Mariam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
