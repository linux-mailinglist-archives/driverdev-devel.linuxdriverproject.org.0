Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2454428F725
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 18:50:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6395F8775C;
	Thu, 15 Oct 2020 16:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LlddHV6yaiN; Thu, 15 Oct 2020 16:50:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F31887D00;
	Thu, 15 Oct 2020 16:50:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BA671BF9B5
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 16:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76024887C6
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 16:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EHv2U-70jmGv for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 16:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7EFEA887C7
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 16:50:20 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id c21so3814535ljn.13
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 09:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UAcK/uz3uKuvMsh9kfadMprX96KfVb2cSRE6Q7xqAIA=;
 b=iMl4IFwGCpOi2UVdYcL6O2RPbnga56eLF2LWGMNltKgLSgluaT3+02FsUDX0jwNtrd
 bIiL+pRnzQAch4aVD97sP2PZV9u5Nnb5iQqbW4XU9t7b6icWJPLfCuLpyr5fGK7Xf7pC
 u9rinty+Y2q+3YZeFDLpw6goZlZ5R+s15VWzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UAcK/uz3uKuvMsh9kfadMprX96KfVb2cSRE6Q7xqAIA=;
 b=QPjljKKMmjf0qCxI5+eyxgJNJqSjO5/1/Z42riIcME/jOL9KYAkjB3BpQX4Vw7D34i
 IX3PpzMjICg9zUjuYGOGzlySkKe6u5eNI7FYiU+sfN26kzL7yJn6XZA/ixW4oNenPznf
 NGEQmflu7cvFmusSz8XQHngxw5FT6EiGZt7X04kmeDcYiQ3kYXw8akvzTDuox8b1rXwM
 5wGZRuLYC5mFUCLCu2Bx3eQm4YLBz2hL5KMNiyt/0zhc8CfJ6PQj+wrpU6Xuf1jG08rE
 gG19xkB2piVsNLa6adPvOPx3mRc7EoQMDEQVqXluN4M9lbFYMn5e2pD1basIixD1mH7P
 gQcA==
X-Gm-Message-State: AOAM5334E4K6GfhR7tDasb6pk6KDhe+IEGm19d6Ja29mvX/ii8me5eJd
 TBwbL9H7tAzQEW6dzhOWJhsA65cfoFmgEg==
X-Google-Smtp-Source: ABdhPJxM71MQdC9USlPIaQU2G/p06X5PS2rRIdoJ8zGDnHr3o/pOnHFLzE/eIZYvXBEga3dlwurG/w==
X-Received: by 2002:a2e:8185:: with SMTP id e5mr1593717ljg.201.1602780618252; 
 Thu, 15 Oct 2020 09:50:18 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id g5sm1507008ljj.45.2020.10.15.09.50.13
 for <devel@linuxdriverproject.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Oct 2020 09:50:13 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id c21so3897195ljj.0
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 09:50:13 -0700 (PDT)
X-Received: by 2002:a2e:868b:: with SMTP id l11mr1598002lji.102.1602780612838; 
 Thu, 15 Oct 2020 09:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20201015122713.GA4021230@kroah.com>
In-Reply-To: <20201015122713.GA4021230@kroah.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 15 Oct 2020 09:49:56 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiwi70PmzxNeNUBiGTgQMDnRhHToTkQrhL7GQKdJyUQAw@mail.gmail.com>
Message-ID: <CAHk-=wiwi70PmzxNeNUBiGTgQMDnRhHToTkQrhL7GQKdJyUQAw@mail.gmail.com>
Subject: Re: [GIT PULL] Staging/IIO driver update for 5.10-rc1
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 15, 2020 at 5:26 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> Included in here are:
>         - new IIO drivers
[...]
>         - no new drivers added or removed

So which one is it?

New drivers, or no new drivers, that is the question: Whether 'tis
nobler in the mind to suffer..

I do understand what I think you meant (no _staging_ drivers added or
removed), but it really reads very oddly.

                 Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
