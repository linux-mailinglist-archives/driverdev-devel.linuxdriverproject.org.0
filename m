Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3167131DF16
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 19:26:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F652866FC;
	Wed, 17 Feb 2021 18:26:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VyadDlrRA5ah; Wed, 17 Feb 2021 18:26:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1634B86700;
	Wed, 17 Feb 2021 18:26:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1E691BF40B
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 18:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D10236F47D
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 18:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M21LKaEBUlia for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 18:26:27 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id EC7D06F4D7; Wed, 17 Feb 2021 18:26:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A3F06F47D
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 18:26:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2815B64E5F;
 Wed, 17 Feb 2021 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613586385;
 bh=q5JrprClEjItckxFH4fd1u6M1i1Z2rFwwSH4UKBTIHo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zxgHkeN8LatoVMNUgNlQUzrzwF/hbOvs0dOqXQOj6gp8Pkmsm6le0nWMkNt7F/Q07
 0oVksAHUlrfL452oDsfzGchZjO6XlkCi9fRa2TbsDld4vv7x1uYnZEgLdoeAX0Y0YC
 ouY45TsRjcMJ6J7Cfm3UmuHueOx+XkYgK/Bo1VOE=
Date: Wed, 17 Feb 2021 19:26:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Atul Gopinathan <atulgopinathan@gmail.com>, Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] staging: comedi: cast to (unsigned int *)
Message-ID: <YC1fzjVOwiqzO1nb@kroah.com>
References: <20210217165907.9777-1-atulgopinathan@gmail.com>
 <YC1T06VCh0K2BBW5@kroah.com> <20210217181000.GB10124@atulu-ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217181000.GB10124@atulu-ubuntu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 11:40:00PM +0530, Atul Gopinathan wrote:
> On Wed, Feb 17, 2021 at 06:35:15PM +0100, Greg KH wrote:
> > On Wed, Feb 17, 2021 at 10:29:08PM +0530, Atul Gopinathan wrote:
> > > Resolve the following warning generated by sparse:
> > > 
> > > drivers/staging//comedi/comedi_fops.c:2956:23: warning: incorrect type in assignment (different address spaces)
> > > drivers/staging//comedi/comedi_fops.c:2956:23:    expected unsigned int *chanlist
> > > drivers/staging//comedi/comedi_fops.c:2956:23:    got void [noderef] <asn:1> *
> > > 
> > > compat_ptr() has a return type of "void __user *"
> > > as defined in "include/linux/compat.h"
> > > 
> > > cmd->chanlist is of type "unsigned int *" as defined
> > > in drivers/staging/comedi/comedi.h" in struct
> > > comedi_cmd.
> > > 
> > > Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> > > ---
> > >  drivers/staging/comedi/comedi_fops.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > > index e85a99b68f31..fc4ec38012b4 100644
> > > --- a/drivers/staging/comedi/comedi_fops.c
> > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > @@ -2953,7 +2953,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > >  	cmd->scan_end_arg = v32.scan_end_arg;
> > >  	cmd->stop_src = v32.stop_src;
> > >  	cmd->stop_arg = v32.stop_arg;
> > > -	cmd->chanlist = compat_ptr(v32.chanlist);
> > > +	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
> > 
> > __force?  That feels wrong, something is odd if that is ever needed.
> > 
> > Are you _sure_ this is correct?
> 
> The same file has instances of "(usigned int __force *)" cast being
> used on the same "cmd->chanlist". For reference:
> 
> At line 1797 of comedi_fops.c:
> 1796                 /* restore chanlist pointer before copying back */
> 1797                 cmd->chanlist = (unsigned int __force *)user_chanlist;
> 1798                 cmd->data = NULL;
> 
> At line 1880:
> 1879         /* restore chanlist pointer before copying back */
> 1880         cmd->chanlist = (unsigned int __force *)user_chanlist;
> 1881         *copy = true;
> 
> Here "user_chanlist" is of type "unsigned int __user *".
> 
> 
> Or perhaps, I shouldn't be relying on them?

I don't know, it still feels wrong.

Ian, any thoughts?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
