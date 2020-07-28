Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9071231005
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 18:43:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BBC0B8851D;
	Tue, 28 Jul 2020 16:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5nQP9milpm11; Tue, 28 Jul 2020 16:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDDBD884DB;
	Tue, 28 Jul 2020 16:43:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B84D1BF29E
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 16:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8725487FFE
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 16:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O6vMw9Lf+0oD for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 16:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A70186866
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 16:43:36 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id l84so5502045oig.10
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 09:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o9m50VK1lLtc7nqDyGrRl3rlBYyarY0M7UxRlCvTi7I=;
 b=kasojJKthl+GEvqSoBsCRID44wuGMn+EsMrib6445AcUxFCXTdk+LV+UutBeNLeKMy
 wQHv2tfVgg5xO85/Sz0BF+RFh6ScEtqDtW5vfEGtUHwCRw7Lt7X+EuZ6tJbeYOObJxNQ
 aVqyb0tE9vVtp2WJCkZwM05lwmmYciFa20/jjPrao7IfnG/03b/CQUYbJJFnnUuviZmL
 Zt3OJDLvvKx4yvdDctSfYv8c6BJ4Ms8WrKLtw0SBuBrwPR+MAped04fEvFFqx+Mk9ccQ
 My2cDrwkdpvLRhZGOAX51mwn2KMe2azsvTahatIf9qxmUVqCg3pRSGkBIr+XjnZVpQzA
 yTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o9m50VK1lLtc7nqDyGrRl3rlBYyarY0M7UxRlCvTi7I=;
 b=FTXqesGK7zIrHfnbVJxzCzqFZJNH2iPxWYTq2Jihc8PP6lsGzn+vQd9dM+A8/aXlUu
 AHE7VSdSXCWSBGDfHPuMRxbGTLQy4whRWfiEJ2kziLG90qXzn9wloAf1Occ2voHbR+55
 4faxu7GWLB6EYY303GjI99fvYGg6rigIoPN+DOASVM7UqSV3aObK8yFTM4cwCa0lMc7H
 S20/lJzqBHaM/KYGAtRURpBsVsHH16W+DFCWG1yHWgmtPxlCNWcRFP96H78mt47IiyJH
 2Y35olHhZpmdssVO0A9oMWRQATI/NlFJzEljhpX17d0At+L5J8W55EnvWnKnx0FH181O
 ERsw==
X-Gm-Message-State: AOAM532egHj/8YvfwocDgXkrs+6aNLwr86tpE4FLG7Bkj0KmzH3nawEq
 JZjdIKsTa7alDBt5aVWZUDar/v8kpLNay+Fpe9o=
X-Google-Smtp-Source: ABdhPJwU8sW/xnW2NBa1NBhKNrTCmmvZt+59DdL3+fpJrB75Cl9bvxj94xoZl+PaI/NK6YOpUnLYafHbsXqa6ov1Jtc=
X-Received: by 2002:aca:c5d6:: with SMTP id v205mr4466193oif.143.1595954615271; 
 Tue, 28 Jul 2020 09:43:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
 <20200728145419.GA3537020@kroah.com>
 <CAPRy4h1Xs1JpQinnWm04dOi07Ch0RLL0U4Z5DDCKHmombXE0sA@mail.gmail.com>
 <20200728155311.GA4178776@kroah.com>
In-Reply-To: <20200728155311.GA4178776@kroah.com>
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Date: Tue, 28 Jul 2020 22:13:22 +0530
Message-ID: <CAPRy4h2Zbw=QwJ7=0+FzGnK_o1esn2GTRSuv5ZE30Vu=Oj=x=Q@mail.gmail.com>
Subject: Re: [PATCH] media: usbvision: fixed coding style
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, stern@rowland.harvard.edu,
 jrdr.linux@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> As the bot said, only do one type of thing per patch, and "fix all
> checkpatch errors/warnings" is not one type of thing.

So should I send a fresh patch with minimal fixes? instead of replying
to this mail with [PATCH 01]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
