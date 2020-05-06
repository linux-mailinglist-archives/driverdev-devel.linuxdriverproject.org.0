Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 616BE1C7034
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 14:22:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC8A4864F2;
	Wed,  6 May 2020 12:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sVWoTsuMIpc6; Wed,  6 May 2020 12:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80A79864B3;
	Wed,  6 May 2020 12:21:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D41A61BF82D
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 12:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE824864F2
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 12:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eIc4wUyOTqEs for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 12:21:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CE47864B3
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 12:21:54 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id g10so1138988lfj.13
 for <devel@driverdev.osuosl.org>; Wed, 06 May 2020 05:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VsdP3ulXyls4iZ204aQqnDn+7zgjMQGgDA3wThz23eU=;
 b=GdUooXYhovThJskAw/3M7IDG7gj8w7tq0AF8FoQVdXBmDH9htFVSG68e9l293BiFde
 yh1Ul30jzJ9AzeWJG+sv/pQQKqyUh0vreJXtd3vhdqGNuGGUxu2ad5G+875kvCm+aISC
 XtnDaWgVfa0DXVuJp4e5Tm7VcXSTLygCpXXyNFC9K2iJp5Y2OAY2LBrtGsD9eeoXzmX6
 3yZY//4YvL9ZdNin7luDMYtJU9ltTl2SeU2SjVC2vVSkNQpniXOZVlYDOskC16iDSKUl
 z0lhPUm5LgoZ3ktFfc0tj3iDnDw+kOUvAhfM2/Cb4h0MKWldOXEXsAQdEMbqbvdrL/fD
 xaow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VsdP3ulXyls4iZ204aQqnDn+7zgjMQGgDA3wThz23eU=;
 b=Tm4JnB8nk/3IwfNScpPFlDFVWPcE5KreC5/wwLO+0f+7USlBMQjyf8rkxw+cvfq5/F
 Di0GZYOKtuxx91pSguosR3jS2D/G0Kjl6r9Da7SRxwb9Sgj1UcD4kJgdxivrpp2etd2I
 FQu7J0YkAy3m6JhZKXTNC5GGV2do5MOV7WCZEwqfudfazU/OzPJ94VywqpOW/fUGPzh/
 5QSq/FoMCnWPOz9BW+DJPY6ZGxYStemDtsT3iKHaVKWHoICIEcaPyMJgWX05lIp9JbDd
 VcJHwkVP9FJuTWFhq0+koUdYDXXbgY9dKTirZ3I/vxM3wYPti6xuvERKgCei2xx0By0j
 vCBg==
X-Gm-Message-State: AGi0PuaDr08Ys2n1q8N9RjjpDY8jNiN7cNonmUs9BHVTtGiM8RpVnAaP
 mDnk3pA7FB6GDzc5twGfdrYihzZfYhSBgsSKIAA=
X-Google-Smtp-Source: APiQypJJaMxo7orst7A0rBZm7DSNbuQvBrp2dLcSV0b/jCmG9BTQfK0MRgFoKlDwi9W2mFj5ZkyMbM1dpu+2wGPtY0I=
X-Received: by 2002:a19:84b:: with SMTP id 72mr4984198lfi.133.1588767712011;
 Wed, 06 May 2020 05:21:52 -0700 (PDT)
MIME-Version: 1.0
References: <1588706059-4208-1-git-send-email-jrdr.linux@gmail.com>
 <0bfe4a8a-0d91-ef9b-066f-2ea7c68571b3@nvidia.com>
 <CAFqt6zZMsQkOdjAb2k1EjwX=DtZ8gKfbRzwvreHOX-0vJLngNg@mail.gmail.com>
 <20200506100649.GI17863@quack2.suse.cz>
In-Reply-To: <20200506100649.GI17863@quack2.suse.cz>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 6 May 2020 17:51:39 +0530
Message-ID: <CAFqt6zYaNkJ4AfVzutXS=JsN4fE41ZAvnw03vHWpdyiRHY1m_w@mail.gmail.com>
Subject: Re: [RFC] mm/gup.c: Updated return value of
 {get|pin}_user_pages_fast()
To: Jan Kara <jack@suse.cz>
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
Cc: Linux-MM <linux-mm@kvack.org>, inux-ia64@vger.kernel.org,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, kuba@kernel.org,
 fenghua.yu@intel.com, John Hubbard <jhubbard@nvidia.com>,
 santosh.shilimkar@oracle.com,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Tony Luck <tony.luck@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 tee-dev@lists.linaro.org, Greg KH <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 6, 2020 at 3:36 PM Jan Kara <jack@suse.cz> wrote:
>
> On Wed 06-05-20 02:06:56, Souptick Joarder wrote:
> > On Wed, May 6, 2020 at 1:08 AM John Hubbard <jhubbard@nvidia.com> wrote:
> > >
> > > On 2020-05-05 12:14, Souptick Joarder wrote:
> > > > Currently {get|pin}_user_pages_fast() have 3 return value 0, -errno
> > > > and no of pinned pages. The only case where these two functions will
> > > > return 0, is for nr_pages <= 0, which doesn't find a valid use case.
> > > > But if at all any, then a -ERRNO will be returned instead of 0, which
> > > > means {get|pin}_user_pages_fast() will have 2 return values -errno &
> > > > no of pinned pages.
> > > >
> > > > Update all the callers which deals with return value 0 accordingly.
> > >
> > > Hmmm, seems a little shaky. In order to do this safely, I'd recommend
> > > first changing gup_fast/pup_fast so so that they return -EINVAL if
> > > the caller specified nr_pages==0, and of course auditing all callers,
> > > to ensure that this won't cause problems.
> >
> > While auditing it was figured out, there are 5 callers which cares for
> > return value
> > 0 of gup_fast/pup_fast. What problem it might cause if we change
> > gup_fast/pup_fast
> > to return -EINVAL and update all the callers in a single commit ?
>
> Well, first I'd ask a different question: Why do you want to change the
> current behavior? It's not like the current behavior is confusing.  Callers
> that pass >0 pages can happily rely on the simple behavior of < 0 return on
> error or > 0 return if we mapped some pages. Callers that can possibly ask
> to map 0 pages can get 0 pages back - kind of expected - and I don't see
> any benefit in trying to rewrite these callers to handle -EINVAL instead...

Callers with a request to map 0 pages doesn't have a valid use case. But if any
caller end up doing it mistakenly, -errno should be returned to caller
rather than 0
which will indicate more precisely that map 0 pages is not a valid
request from caller.
With these, 3rd return value 0, is no more needed.

That was the thought behind this proposal.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
