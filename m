Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8D631EA88
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 14:47:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9227687353;
	Thu, 18 Feb 2021 13:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VznxK6jrAh+d; Thu, 18 Feb 2021 13:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0902687349;
	Thu, 18 Feb 2021 13:46:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCA561BF352
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 13:46:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C89A9605EF
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 13:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SMj0W5UVBt6W for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 13:46:54 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 91B24605FE; Thu, 18 Feb 2021 13:46:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AEB42605EF
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 13:46:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 45A536023C;
 Thu, 18 Feb 2021 13:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613656011;
 bh=t5TM5YrusGAtu85q8bgWN3TqCn9RmKRgt5JMchipK5M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z3keQC10S3/40fjzYrbhLaXEAPivYgHCfIm7+MnSnB+WnZV9pFcprVGn48VaXVctz
 krFYQQ8t7VRk4G/WDSyIufUtUvt7pAbSYK0NeAzcKml53cEB0H/cLhGJ/rAod3YRYB
 aaQIvFDJMaUNHN+fOtxd9B1xVe2g8zMxeBVJLy2w=
Date: Thu, 18 Feb 2021 14:46:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Atul Gopinathan <atulgopinathan@gmail.com>
Subject: Re: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Message-ID: <YC5vyPYs6TNOnRZ1@kroah.com>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
 <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
 <20210218104755.GA7571@atulu-nitro> <YC5bsXa+1KSuIh+v@kroah.com>
 <20210218125220.GA19456@atulu-nitro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218125220.GA19456@atulu-nitro>
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

On Thu, Feb 18, 2021 at 06:22:20PM +0530, Atul Gopinathan wrote:
> On Thu, Feb 18, 2021 at 01:21:05PM +0100, Greg KH wrote:
> > On Thu, Feb 18, 2021 at 04:17:55PM +0530, Atul Gopinathan wrote:
> > > On Thu, Feb 18, 2021 at 10:31:15AM +0000, Ian Abbott wrote:
> > > > On 18/02/2021 08:44, Atul Gopinathan wrote:
> > > > > Fix the following warning generated by sparse:
> > > > > 
> > > > > drivers/staging//comedi/comedi_fops.c:2956:23: warning: incorrect type in assignment (different address spaces)
> > > > > drivers/staging//comedi/comedi_fops.c:2956:23:    expected unsigned int *chanlist
> > > > > drivers/staging//comedi/comedi_fops.c:2956:23:    got void [noderef] <asn:1> *
> > > > > 
> > > > > compat_ptr() has a return type of "void __user *"
> > > > > as defined in "include/linux/compat.h"
> > > > > 
> > > > > cmd->chanlist is of type "unsigned int *" as defined
> > > > > in drivers/staging/comedi/comedi.h" in struct
> > > > > comedi_cmd.
> > > > > 
> > > > > Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> > > > > ---
> > > > >   drivers/staging/comedi/comedi_fops.c | 2 +-
> > > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > > > > index e85a99b68f31..fc4ec38012b4 100644
> > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > @@ -2953,7 +2953,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > > >   	cmd->scan_end_arg = v32.scan_end_arg;
> > > > >   	cmd->stop_src = v32.stop_src;
> > > > >   	cmd->stop_arg = v32.stop_arg;
> > > > > -	cmd->chanlist = compat_ptr(v32.chanlist);
> > > > > +	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
> > > > >   	cmd->chanlist_len = v32.chanlist_len;
> > > > >   	cmd->data = compat_ptr(v32.data);
> > > > >   	cmd->data_len = v32.data_len;
> > > > > 
> > > > 
> > > > This patch and the other one in your series clash with commit 9d5d041eebe3
> > > > ("staging: comedi: comedi_fops.c: added casts to get rid of sparse
> > > > warnings") by B K Karthik.
> > > 
> > > Oh I see. Not sure if this is the right place to ask, but which tree and
> > > branch should one work with when messing with the code in staging/
> > > directory? (wanted to avoid such clashes in future)
> > 
> > staging-next is the best one to use from the staging.git tree.  But as
> > the above commit was merged in 5.9-rc1, way back in July of last year, I
> > have no idea what tree you are currently using to not hit that...
> 
> I'm using the staging tree alright, cloned it yesterday. Except I used the
> --depth parameter. I believe that is the culprit. How bad a mistake is
> that?

I do not know, I do not use that option, sorry.

> (Why depth? I'm currently staying in a remote area where internet
> download speeds are less than 100Kbps. I tried a normal git clone of
> the staging tree and it's estimated time was more than half a day. Not
> to mention, it fails due to loss of connection midway every time)

If you already have a copy of the kernel git tree, there is never a need
to download the whole thing again.  Just add another remote banch and do
a pull, the difference should be very tiny now compared to what is in
Linus's tree.

Or, to seed the whole thing, download a "git bundle" as described here:
	https://www.kernel.org/best-way-to-do-linux-clones-for-your-ci.html
which you can use to work off of locally, and should be easier to handle
over slow and flaky download connections.

hope this helps,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
