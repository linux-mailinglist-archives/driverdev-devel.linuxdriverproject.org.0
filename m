Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D964745B7E2
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 10:59:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5FA080BC4;
	Wed, 24 Nov 2021 09:59:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xHL6Zk7RyB63; Wed, 24 Nov 2021 09:59:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27D8580C9A;
	Wed, 24 Nov 2021 09:59:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDF541BF3D8
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 09:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8381403D7
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 09:58:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFYpfRfSqeSh for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 09:58:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85F6B401F9
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 09:58:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 12DF460FE7;
 Wed, 24 Nov 2021 09:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637747929;
 bh=b3eKG/rQ7FZOGT31Dkme1e3OA8hFVQ82fpm34TJCNtM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oHSc2IkJMIaWDYqWxkYxeveN9vsXuWHttXOZX5e29Df0rbqweK+UcXREjnIEbS/6o
 wckC6AHYJlLyNeBoYJFcc1R2GFBtZadj+/zfHFjsLJxbev75IxsQD6H7ZRPgkv2Vox
 FONL/QyVPJfhgLf9K30B1IrBOFR6XlnMLfH0I/rg=
Date: Wed, 24 Nov 2021 10:57:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: fix test regression due to sender_euid change
Message-ID: <YZ4Mm9ux0zVurjQk@kroah.com>
References: <20211112180720.2858135-1-tkjos@google.com>
 <CAHC9VhQaHzrjdnr_DvZdPfWGiehC17yJVAJdVJMn8tOC1_Y+gA@mail.gmail.com>
 <CAHRSSEwUUUxXOnb2_fg1qnEXbCtD+G7KW8=xwKZFA5r-PKcPBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHRSSEwUUUxXOnb2_fg1qnEXbCtD+G7KW8=xwKZFA5r-PKcPBg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-security-module@vger.kernel.org,
 kernel-team@android.com, tkjos@android.com, Paul Moore <paul@paul-moore.com>,
 keescook@chromium.org, jannh@google.com, selinux@vger.kernel.org,
 jeffv@google.com, stephen.smalley.work@gmail.com, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, arve@android.com,
 stable@vger.kernel.org, joel@joelfernandes.org, eparis@parisplace.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 19, 2021 at 03:39:59PM -0800, Todd Kjos wrote:
> On Fri, Nov 19, 2021 at 3:00 PM Paul Moore <paul@paul-moore.com> wrote:
> >
> > On Fri, Nov 12, 2021 at 1:07 PM Todd Kjos <tkjos@google.com> wrote:
> > >
> > > This is a partial revert of commit
> > > 29bc22ac5e5b ("binder: use euid from cred instead of using task").
> > > Setting sender_euid using proc->cred caused some Android system test
> > > regressions that need further investigation. It is a partial
> > > reversion because subsequent patches rely on proc->cred.
> > >
> > > Cc: stable@vger.kernel.org # 4.4+
> > > Fixes: 29bc22ac5e5b ("binder: use euid from cred instead of using task")
> > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > Change-Id: I9b1769a3510fed250bb21859ef8beebabe034c66
> 
> Greg, I neglected to remove the "Change-Id" from my Android pre-submit
> testing. Can you remove that, or would you like me to resubmit without
> it?

Sorry, I missed it too.  It's already in my tree, no need to worry about
it.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
