Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3AB17A172
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Mar 2020 09:33:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5389D86079;
	Thu,  5 Mar 2020 08:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uoa42MhywJLy; Thu,  5 Mar 2020 08:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 039C485F59;
	Thu,  5 Mar 2020 08:33:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D5CA1BF2FB
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 08:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7646287AA5
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 08:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HP4htmMI5Rr8 for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 08:33:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 794BD87A9C
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 08:33:21 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id g134so5172719wme.3
 for <devel@driverdev.osuosl.org>; Thu, 05 Mar 2020 00:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SYxbC9qPC4/N8la63J08DdmEKfQjapCeK8070Jjm4tE=;
 b=pnDwBpExPbjgZWp+2ubL9D0tUj9nEaKK3jT6M7Fn/TH0G3Lbjyut3g6DzXdhjjvMzZ
 +GwXPkburw2SlIZECET8JCrPSWp08OG9VmI97nCqbT/gCRUWZtZ13dQ+1v1cDc5MGctH
 7UqV3uyIM+74eOfjbH888lQp7DrypwbfNMUIJ5VMeU09Y8O8PAL9V2ObNjEhNB2yUN12
 IzctO8945uQQ9pj1cnw+4xUjZf4j2N9fKfRQF0mL/yN+nq+k+q3ItDifWlfgVRQB2jKu
 BzSPkUZ8qbCcAgghnmBJHDgpjV0TZaCPM4kZFXu3JpPW11jebQ1OELOrmpI1tybI/zQB
 PdiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SYxbC9qPC4/N8la63J08DdmEKfQjapCeK8070Jjm4tE=;
 b=gFFERaWpJNgJs/ZM6OgGo347jFgTw5ioSzQuxJ1ACJpOsQs4Izvo+KujV9uKZgdK8t
 f0WkqnAU8pBkja3fX24B+vYtnaMNU6yCXTQm+8AVcHXrT4JIMJv3nBsIlL67g2X+8XpK
 b29cnPOjhNLHkj/q1f7SYvtXYXrIsucQrpgh0cquakkqlMEldOFeZwFjE2s9D3ROCdw4
 hnFjo6eFioC/f8UBnWXNSD3i+BU6/omYaV33KOHhkh5ibEcYtEhGk4N96FD16Q7ugfzN
 m9RG7ajm9xOrqGmh+UukpV25vaqbOHR0sXKH2Bl7v/2Qu396nrjlvp4ZQJKSnhzefP5Y
 57fw==
X-Gm-Message-State: ANhLgQ2et5evfHj5I5OiXtTMRwQ54TnhbB+C8mJJ7x93yPaS43cb/Q+K
 meJmt4TIQMa4o/Hs1iaCctVIiBygfP5KBfMABrkYxQ==
X-Google-Smtp-Source: ADFU+vtsmIq6Grq3pIa+Q9kL3rRxGKy8PNQt+HhO/d+bzsAYuCAVV9DLBh1QKsu/Mzegk3X+xrTzBlQYplaaQNWsLEg=
X-Received: by 2002:a7b:c254:: with SMTP id b20mr4315045wmj.165.1583397199527; 
 Thu, 05 Mar 2020 00:33:19 -0800 (PST)
MIME-Version: 1.0
References: <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
 <CAG_fn=U2T--j_uhyppqzFvMO3w3yUA529pQrCpbhYvqcfh9Z1w@mail.gmail.com>
 <20200303093832.GD24372@kadam> <202003040951.7857DFD936@keescook>
 <20200305080756.GB19839@kadam> <202003050010.A1A965BF37@keescook>
In-Reply-To: <202003050010.A1A965BF37@keescook>
From: Alexander Potapenko <glider@google.com>
Date: Thu, 5 Mar 2020 09:33:07 +0100
Message-ID: <CAG_fn=WSw0Wt=mJs5Vm_133g0--i0yMOTsuEQ-9YbmLo77+w_A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
To: Kees Cook <keescook@chromium.org>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Joe Perches <joe@perches.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 5, 2020 at 9:26 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Mar 05, 2020 at 11:07:56AM +0300, Dan Carpenter wrote:
> > On Wed, Mar 04, 2020 at 10:13:40AM -0800, Kees Cook wrote:
> > > On Tue, Mar 03, 2020 at 12:38:32PM +0300, Dan Carpenter wrote:
> > > > The real fix is to initialize everything manually, the automated
> > > > initialization is a hardenning feature which many people will disable.
> > >
> > > I cannot disagree more with this sentiment. Linus has specifically said he
> > > wants this initialization on by default[1],
> >
> > Fine, but as long as it's a configurable thing then we need to manually
> > initialize as well or it's still a CVE etc.  It will take a while before
> > we drop support for old versions of GCC as well.
>
> Yes, I agree; that's totally true. We need to continue to fix all the
> uninitialized flaws we encounter unless this is on by default for all
> supported compiler versions (which will be a looong time). (But it's
> not relevant to this patch because copy_from_user() does already do
> the initialization.)
>
> This set of patches was about dealing with the pathological cases of
> auto-init colliding with functions that do, in fact, fully init. Though
> I must say, I remain concerned about inventing such markings for fear
> they'll be used in places where the "trust me, it's fully initialized"
> state does not actually hold[1] but the author thinks it does.
>
> -Kees

Right now I'm trying to make Clang understand that output arguments of
inline assembly initialize the memory.
Then it would be possible to write something like:

  struct binder_transaction_data tr;
  asm("": "=m"(tr));
  if (copy_from_user(&tr, ptr, sizeof(tr))) ...

, and the asm directive can be hidden into copy_from_user().
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
