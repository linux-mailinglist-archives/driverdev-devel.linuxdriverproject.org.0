Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A67220BF5
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 13:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 50D618AC72;
	Wed, 15 Jul 2020 11:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RG-YN906r6J; Wed, 15 Jul 2020 11:35:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A55748AC1D;
	Wed, 15 Jul 2020 11:35:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3CD11BF3F0
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E41298AC1D
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pzmi9h7TfpvJ for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 11:35:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7D1D98AC18
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 11:35:07 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id d17so2222384ljl.3
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 04:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NyvuHuxxjvWixAHxdaLAwZ6ZtVOaOESx6JTIlYQ1UFI=;
 b=Jhuq7dRptRZ5adddt0e2fWxQLeRIVq1FjdGY4ntX0JfABPLOpttj04c173B1lrBZ4g
 8uXkwo6UzwFqC5hkEEDc2a9n1T8mJMGUYndW26RFbW6Pg2itghKVqj/cXxheuqv3WuqN
 iQgp70k8raExTKpMc6nuIxP+yg9EbrRXbvf/YYpT6b1XPq3F8/KhTWzGaQekYAN5yzw5
 GJrP5cHIwNuQeKV7CzsgoOqSfcKTqfvRpPrepD5YhJR5jlCFoDd09AaqahvS5Zp5BuTZ
 XVyrf6rU2CTqnb0SApTvqQKPcc5rigrHbpyVuTnDI7tvxBdfySGEuT40Mv2PYai+B1hq
 QX9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NyvuHuxxjvWixAHxdaLAwZ6ZtVOaOESx6JTIlYQ1UFI=;
 b=SahWyDcSJVUj7wq+Lq11H4X7lFfAukaDu2GJBoZUPCEivgglrjmI6mx4Q2lCpCozHl
 QzCGVFzjcyVm+/SrBkVUFKVuDwOV+W0ipigO0pl2iqoGfaJ97+qXeWyk3iPh/jmq0dNs
 qzhf6BBtuFeUfCQwn8g5ci0O6YYBnlRw3CKPCWo3mMckrk9CYKZYKYYH7T+M5TrQcYMN
 9jCTvmCBFL9UIyxIoETHYBY/K5fCDpwaOfuMPjpPQpzZrlVg9lnLq/3YqqVq4vl7V4/m
 O9m4TRVa85zHUWBNpK5TIaxyl3y4zHf2Ld4YCZK+Ej/O4eL0fZXNgKjaTeILUAwjzfvg
 MFOA==
X-Gm-Message-State: AOAM5327AUJcCPoFtPh2fMO4aD2+9IWVGXtDlyVrLkHTDlR0uB3Y5sM+
 6c+QGYvtroo8zOzJrlDszDeT4DGAto1zBeOwY6USSSAottE=
X-Google-Smtp-Source: ABdhPJypBz7OPH34QSSqjFhSDKduQLyFK7h7ytCItXKjSyyGAdzJH56C7G4s+wNbRfW9+iKL7RwMwzST90cJjgc3/Y0=
X-Received: by 2002:a2e:b4ed:: with SMTP id s13mr4678829ljm.296.1594812905302; 
 Wed, 15 Jul 2020 04:35:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <4aa4d949-7ef9-ccfe-bf5c-11a380c8f542@mev.co.uk>
In-Reply-To: <4aa4d949-7ef9-ccfe-bf5c-11a380c8f542@mev.co.uk>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Wed, 15 Jul 2020 07:34:53 -0400
Message-ID: <CAAhDqq0NYcX+UJi+GfbLP7q-MqrXfDaoB5z64GmgO3L7zpCMjQ@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: comedi_fops.c: changed type in
 assignment to unsigned int *
To: Ian Abbott <abbotti@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 7:19 AM Ian Abbott <abbotti@mev.co.uk> wrote:
>
> On 15/07/2020 05:48, B K Karthik wrote:
> > fixed a sparse warning by changing the type in
> > assignment from void [noderef] __user * to unsigned int *
> > (different address space)
> >
> > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > ---
> >   drivers/staging/comedi/comedi_fops.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > index 3f70e5dfac39..4cc012e231b7 100644
> > --- a/drivers/staging/comedi/comedi_fops.c
> > +++ b/drivers/staging/comedi/comedi_fops.c
> > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> >       cmd->scan_end_arg = v32.scan_end_arg;
> >       cmd->stop_src = v32.stop_src;
> >       cmd->stop_arg = v32.stop_arg;
> > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
>
> That should be:
>
>         cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
>
> >       cmd->chanlist_len = v32.chanlist_len;
> >       cmd->data = compat_ptr(v32.data);
> >       cmd->data_len = v32.data_len;
> >
>
> A reverse cast is required in put_compat_cmd():
>
>         v32.chanlist = ptr_to_compat((unsigned int __user *)cmd->chanlist);
>
> Those changes will get rid of the sparse warnings.

Thank you for the clarifications Ian. I will make the changes and submit a patch

thanks,

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
