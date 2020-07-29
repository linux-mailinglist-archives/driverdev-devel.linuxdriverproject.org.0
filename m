Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B884123194B
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 08:05:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8888C87D15;
	Wed, 29 Jul 2020 06:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F12D84i2lcxa; Wed, 29 Jul 2020 06:05:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF19487C30;
	Wed, 29 Jul 2020 06:05:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D3B41BF332
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 06:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 260CC87FD8
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 06:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xsR+WHKGfSR3 for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 06:05:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8B59787FCC
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 06:05:50 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id p25so7342152oto.6
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 23:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=155Y2WSS72tG/ncO6CfTu7AAxycSUP0sDEk7oKysRWQ=;
 b=EdIn9HGCHAadTqAOhR6DmfzgEOgv5+th+OM5D23I2fdbWeeE3Ek+QJHXB3tKAH1Plv
 6nFYEplWL/aI2Pnkunfo0Wlbl62Kd8jrz8lkNkiSuNhn4tJ/PxhjOBEwr0Ce3wngroL2
 tcSIxdUENeHrG5yLF52wYe3z3ZRX+hYhavCxEFC2dmGJn5BRlk/6Sik9C1/M1PfFqa6o
 I9/lChHR4mmMis6vkEhR0pLDOyF+OKFLU/8icd2CSxAEMAaFwJ1wnA3pyUCHxkpq6r+T
 0vb6hVJAYNLwDuoTGHVGn5tuV8qhRHV9KZlpOqScHmlX2xz3DRigMW27VMXuqIbcs8cs
 NHGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=155Y2WSS72tG/ncO6CfTu7AAxycSUP0sDEk7oKysRWQ=;
 b=ojDDk1joT2FACQohUv8iL/IsxHVyCM9smWx12NazvN7kTAcOrHH2rmKCctmicbuHQA
 TXLWlZ212ZO2mTzTvzYU0BMOGFUoreyDiGaeh9KcRcvtQQkOgGjaHAThcGXlLl/sipM0
 4QZHFd8/8mwuptIPxPNfoNRNYsnYKoUCa4azoprDd2XN6kyJwv/KxwO8yiDOQPVt0uFj
 bXQTihnLPjuhwlAqSEqYLC6VBlpzV4QMgdYBbnpfHnURYkJgIZ1lCv2Ih9/NyfAzzaoD
 O3Bn45Ta0NASHc+cTkX8WZn2B6FNMGn3GpxwxIHPI3l4Q926GxvOLl5MFLop7Pe3zKuo
 5aUw==
X-Gm-Message-State: AOAM5335Yuly5QC15dp68XhETfiVSMVr0MtQh2Xwq5hHp/pxozxikRR6
 5NWmxR5FhFwH6bZTVlpwAWB1x4sLcsmBpwRrIV4=
X-Google-Smtp-Source: ABdhPJwKvUWGvj+0PNmbhodUFbqPrt41n++j0abnttMdz1LMf2a7SvXkzEwmhcFFMZ1mfLu8i9eImZPLd0tybgkEbHc=
X-Received: by 2002:a05:6830:4c8:: with SMTP id
 s8mr26585768otd.368.1596002749683; 
 Tue, 28 Jul 2020 23:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200728182610.2538-1-dhiraj.sharma0024@gmail.com>
 <CAPRy4h2Kzqj449PYPjPFmd7neKLR4TTZY8wq51AWqDrTFEFGJA@mail.gmail.com>
 <20200729054637.GA437093@kroah.com>
In-Reply-To: <20200729054637.GA437093@kroah.com>
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Date: Wed, 29 Jul 2020 11:35:36 +0530
Message-ID: <CAPRy4h0KcCXJsg3kHurzvDKpL6mkkUAFCxFBsBaex36fOp7Low@mail.gmail.com>
Subject: Re: [PATCH] staging: qlge: qlge_dbg: removed comment repition
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, manishc@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>
> A: http://en.wikipedia.org/wiki/Top_post
> Q: Were do I find info about this thing called top-posting?
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
>
> A: No.
> Q: Should I include quotations after my reply?
>
> http://daringfireball.net/2007/07/on_top
>


I will avoid such things and will do useful stuff.

>
> It has been less than 24 hours for a simple comment cleanup patch.
> Please give maintainers time, they deal with thousands of patches a
> week.
>
> Usually, if after 2 weeks, you have not gotten a response, you can
> resend it.
>
> >  I know that I should ask for reviews etc after a week but the change
> > is for my eudyptula task and until it doesn't get merged little
> > penguin will not pass the task for me so please look at it.
>
> If you knew that you should wait for at least a week, and yet you did
> not, that implies that you somehow feel this comment cleanup patch is
> more important than everyone else, which is a bit rude, don't you think?
>
> There are no such things as deadlines when it comes to upstream kernel
> development, sorry.
>

Alright, I will wait and hope it gets accepted before 1st August or
else I have patience.


Thank You
Dhiraj Sharma
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
