Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AD4230E44
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 17:44:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A823386A8C;
	Tue, 28 Jul 2020 15:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8_j_phi0aX-f; Tue, 28 Jul 2020 15:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AC8986910;
	Tue, 28 Jul 2020 15:44:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E2F81BF573
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 15:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1867487FDA
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 15:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50-RE-8+eyrw for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 15:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 12D8E87F72
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 15:44:38 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id w17so15213819otl.4
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 08:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X8oqyy89D3G/SsEykgSGLbJc6vMNxyoDi/zTaYVXNlM=;
 b=MEFDd8Joi2gcNe+Oo274jwfc0jNOGgVZ20XATCHQjHC7h+kZTzaoff5isq0tOFNp/C
 kFfmxHAbLphiwW45ogcaUqVJ9TNqwTyA0yixFhGmI876F7vL9vmZ/8dJXSqcrSM+fFce
 abUl80wnq2/leB/gMmD23tokb9EXQPTGOouc1WWQIR+pYmwadZQV9NTdvrtG9Y2y5bPS
 jQ2TqnJO1hC7J9aU3IXyIxwCx3/AmaRnW8NATXhi2A7fpEw227v7IlsTlbctd1siRolM
 psEIq2LL+neEmq29/4O1LpNREUcwwjXZFv/J1mLvJIinZEoHkifHvl1knjNruvbI1cUb
 olhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X8oqyy89D3G/SsEykgSGLbJc6vMNxyoDi/zTaYVXNlM=;
 b=su+jNbzpV2d6lC9le0/8D9YYjjRy09KkGmT+je2Fu+gq3uDzq2I6KLdaiIPXMXUyQ4
 r5FyT7PB5XpT0kMG95U3nfHQMKsIY/Q0+mA/L12bdfORidS83ahsea4PxZXiLD8eRqgO
 jtw7GYnzSmrju74a5/iCqi+VOZNygOPNxuecApFxgM7nMg4fnVJxxQ2zuFeERf2N84PV
 qq0i7X8136pSlwh1g8zbtrg+5p6i0LGDqTfJVkCUI9q3iAyyl5a4Qi3VoMixj8fjj7P0
 ptWcXWiuc0MlMGAObB1XV44xQJ++tadKw6+b5jB4LcovMqmxV9r/AeHvc4b+a+QLTaTK
 18ag==
X-Gm-Message-State: AOAM530eqHl0o9mByb6QxxkejqOjL3ArOetMe1WwfNAkKXAvRs62eidm
 caNpIGAYr9hd7uvk1yGVz9uPMmJp7ee1X7wOBeI=
X-Google-Smtp-Source: ABdhPJywjajz/CBt08LbXIzjYxAfcjOxLdzB1Yi2RSu+QgW6DiQ4dYj/VqieKN+dCykMiGBkOp7Ox75v1v0NTh+ReTQ=
X-Received: by 2002:a05:6830:18ed:: with SMTP id
 d13mr25841749otf.196.1595951077208; 
 Tue, 28 Jul 2020 08:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
 <20200728145419.GA3537020@kroah.com>
In-Reply-To: <20200728145419.GA3537020@kroah.com>
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Date: Tue, 28 Jul 2020 21:14:24 +0530
Message-ID: <CAPRy4h1Xs1JpQinnWm04dOi07Ch0RLL0U4Z5DDCKHmombXE0sA@mail.gmail.com>
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

Sorry, I didn't realize that I committed a mistake by not replying to
all. It was an accidental mistake which will not be committed in
future now.

>
> That is not needed in a changelog text.
>

Alright Sir.

> Neither is this, please be specific about what you have fixed.  My bot
> should kick in soon with more specifics...

Sir there were checkpatch.pl styling issues and I fixed them all
together, so should I write a proper changelog as what all I fixed i.e
errors and warnings thrown by checkpatch.pl

On Tue, Jul 28, 2020 at 8:24 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jul 28, 2020 at 08:00:04PM +0530, Dhiraj Sharma wrote:
> > As per eudyptula challenge task 10 I had to fix coding styles.
>
> That is not needed in a changelog text.
>
> > Thus I
> > used checkpatch.pl script and fixed a chunk of warnings and few errors.
>
> Neither is this, please be specific about what you have fixed.  My bot
> should kick in soon with more specifics...
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
