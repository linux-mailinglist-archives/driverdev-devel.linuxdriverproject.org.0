Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD831762DB
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 19:40:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A913D85A1E;
	Mon,  2 Mar 2020 18:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i7VyMm-r8jkI; Mon,  2 Mar 2020 18:40:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B87185660;
	Mon,  2 Mar 2020 18:40:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 780431BF392
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:40:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 743931FEBF
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zaQRVyyYvzJT for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 18:40:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D54F81FE32
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 18:40:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4058C2166E;
 Mon,  2 Mar 2020 18:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583174429;
 bh=6DLnZ2Zf66pt7VKVRWxot04T4F3DGFl1pn1DT9jHh7I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tue91unT4DUxXF/pJjA0movpxeFA7lsfEyrSjfNN69R8oLyXfqMXQIl2ZfHkb9WSJ
 I4L34YzSQjdERZqP7opT1z5y55mwOlXmyaQbOmJI09XpxmDxoYLd5KaU1ysCPn1b6c
 TCnUDk3v/KkjZKjxKWlBIQi8OvXp+vIbSjJuHnj4=
Date: Mon, 2 Mar 2020 19:39:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Potapenko <glider@google.com>
Subject: Re: [PATCH v2 3/3] sched/wait: avoid double initialization in
 ___wait_event()
Message-ID: <20200302183954.GA166273@kroah.com>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-3-glider@google.com>
 <CAHRSSEwe=jZAEVhGw4ACBU0m-76TzZfJFv1Rzw=_UVm6HbTvAw@mail.gmail.com>
 <CAG_fn=W96H3kMcoTxfqVq9Ec=1HZsJjnTjuX74dhZJe0QNuMrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG_fn=W96H3kMcoTxfqVq9Ec=1HZsJjnTjuX74dhZJe0QNuMrw@mail.gmail.com>
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
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitry Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 02, 2020 at 07:03:19PM +0100, Alexander Potapenko wrote:
> > >         case BINDER_SET_MAX_THREADS: {
> > > -               int max_threads;
> > > +               int max_threads __no_initialize;
> >
> > Is this really needed? A single integer in a rarely called ioctl()
> > being initialized twice doesn't warrant this optimization.
> 
> It really does not, and I didn't have this bit in v1.
> But if we don't want this diff to bit rot, we'd better have a
> Coccinelle script generating it.
> The script I added to the description of patch 2/3 introduced this
> annotation, and I thought keeping it is better than trying to teach
> the script about the size of the arguments.

Please fix the script, don't add stuff to the kernel that is not needed.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
