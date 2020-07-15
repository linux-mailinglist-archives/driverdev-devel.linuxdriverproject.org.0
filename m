Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A2C220886
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 11:19:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B00AC2154F;
	Wed, 15 Jul 2020 09:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZnxiDpANO3u; Wed, 15 Jul 2020 09:19:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F18320BF9;
	Wed, 15 Jul 2020 09:19:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0BA671BF39C
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 09:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0249621548
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 09:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iA9SGJ0Hb8X8 for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 09:19:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0074420BF9
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 09:19:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C0642053B;
 Wed, 15 Jul 2020 09:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594804766;
 bh=WUhGmb3JGfoChxmww3zBC8NfP22AZaXpeoDWgmsGyZA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vzbwkRvoONpWzhLyY2QJvxklvJskcE9RaO2pIxUqG/AY/oiBRSZ5XCeELjMzGbZx7
 z/gCDyRRHantg4wAaq1DaJk3XQdsRi4kUnqecjI7ZaG3lgVAumcF2AtP5FU20Wtkh/
 4uR4W0FejgsRAymUcunBY728KRE5x2j4IKEXNoRg=
Date: Wed, 15 Jul 2020 11:19:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: comedi: comedi_fops.c: changed type in
 assignment to unsigned int *
Message-ID: <20200715091922.GB2722864@kroah.com>
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <20200715070842.GA2303720@kroah.com>
 <CAAhDqq3u_0wCRGDaWRGgtC6bkx6t+AubAXfnX_f7V0t10BRuuA@mail.gmail.com>
 <20200715083144.GA2716443@kroah.com>
 <CAAhDqq1hwtgqyOnfx__OFgTkm9QDs0or-Zg76cMojShCYRAN2w@mail.gmail.com>
 <CAAhDqq2y7wn5zX1zg1LN19zYBsf_EiuOmHEL-ivNP5C4aH63Pw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhDqq2y7wn5zX1zg1LN19zYBsf_EiuOmHEL-ivNP5C4aH63Pw@mail.gmail.com>
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
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 04:47:48AM -0400, B K Karthik wrote:
> On Wed, Jul 15, 2020 at 4:41 AM B K Karthik <bkkarthik@pesu.pes.edu> wrote:
> >
> > On Wed, Jul 15, 2020 at 4:31 AM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Wed, Jul 15, 2020 at 01:56:45PM +0530, B K Karthik wrote:
> > > > On Wed, Jul 15, 2020, 12:38 PM Greg Kroah-Hartman <
> > > > gregkh@linuxfoundation.org> wrote:
> > > >
> > > > > On Wed, Jul 15, 2020 at 12:48:13AM -0400, B K Karthik wrote:
> > > > > > fixed a sparse warning by changing the type in
> > > > > > assignment from void [noderef] __user * to unsigned int *
> > > > > > (different address space)
> > > > > >
> > > > > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > > > > ---
> > > > > >  drivers/staging/comedi/comedi_fops.c | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > > > b/drivers/staging/comedi/comedi_fops.c
> > > > > > index 3f70e5dfac39..4cc012e231b7 100644
> > > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > > > >       cmd->scan_end_arg = v32.scan_end_arg;
> > > > > >       cmd->stop_src = v32.stop_src;
> > > > > >       cmd->stop_arg = v32.stop_arg;
> > > > > > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > > > > > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
> > > > > >       cmd->chanlist_len = v32.chanlist_len;
> > > > > >       cmd->data = compat_ptr(v32.data);
> > > > > >       cmd->data_len = v32.data_len;
> > > > >
> > > > > Always run your patches through checkpatch before sending them, so you
> > > > > do not have a grumpy maintainer telling you that you have to run
> > > > > checkpatch on your patch before sending them.
> > > > >
> > > >
> > > > I will. Sorry for that.
> > > >
> > > > But the error that's being shown in this patch is something that comes up
> > > > on its own.
> > >
> > > No it is not.
> > >
> > > > git format-patch leaves trailing whitespace in blank lines.
> > >
> > > It does?  Where is any trailing whitespace here?  That's not the issue.
> >
> > To give you an example,
> > https://lore.kernel.org/lkml/20200714132350.naekk4zqivpuaedi@pesu-pes-edu/
> > was a patch i submitted recently.
> > This is what checkpatch has to say:
> >
> > $ perl scripts/checkpatch.pl -f
> > ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> > ERROR: trailing whitespace
> > #21: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:21:
> > + $
> >
> > ERROR: trailing whitespace
> > #23: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:23:
> > + $
> >
> > ERROR: trailing whitespace
> > #30: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:30:
> > + $
> >
> > ERROR: trailing whitespace
> > #37: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:37:
> > + $
> >
> > ERROR: trailing whitespace
> > #44: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:44:
> > + $
> >
> > ERROR: trailing whitespace
> > #51: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:51:
> > +-- $
> >
> > total: 6 errors, 0 warnings, 53 lines checked
> >
> > NOTE: For some of the reported defects, checkpatch may be able to
> >       mechanically convert to the typical style using --fix or --fix-inplace.
> >
> > NOTE: Whitespace errors detected.
> >       You may wish to use scripts/cleanpatch or scripts/cleanfile
> >
> > ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> > has style problems, please review.
> >
> > NOTE: If any of the errors are false positives, please report
> >       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> >
> > Does this happen only to patches I make? Am I making a silly mistake
> > while making a patch?
> > I use 'git format-patch -1' to generate the patch file.
> > If I am going wrong somewhere, please let me know.
> 
> Also, The patch I sent (this thread):
> $ perl scripts/checkpatch.pl -f
> ./0001-staging-comedi-comedi_fops.c-changed-void-__user-to-.patch
> ERROR: trailing whitespace
> #29: FILE: ./0001-staging-comedi-comedi_fops.c-changed-void-__user-to-.patch:29:
> +-- $
> 
> total: 1 errors, 0 warnings, 31 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or --fix-inplace.
> 
> NOTE: Whitespace errors detected.
>       You may wish to use scripts/cleanpatch or scripts/cleanfile
> 
> ./0001-staging-comedi-comedi_fops.c-changed-void-__user-to-.patch has
> style problems, please review.
> 
> NOTE: If any of the errors are false positives, please report
>       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> 
> Am I using 'git format-patch' or 'checkpatch.pl' the wrong way?

Are you checking the right thing here?  Here's what I got:

$ ./scripts/checkpatch.pl --terse x.patch
x.patch:19: CHECK: No space is necessary after a cast
x.patch:25: WARNING: Missing Signed-off-by: line by nominal patch author ''
total: 0 errors, 1 warnings, 1 checks, 8 lines checked


I use --terse to make it more obvious what the issue is.

Heck, check it yourself:

$ b4 am https://lore.kernel.org/r/20200715044813.fww3regsgsbgyp7b@pesu-pes-edu
Looking up https://lore.kernel.org/r/20200715044813.fww3regsgsbgyp7b%40pesu-pes-edu
Grabbing thread from lore.kernel.org/driverdev-devel
Analyzing 7 messages in the thread
---
Writing ./20200715_bkkarthik_staging_comedi_comedi_fops_c_changed_type_in_assignment_to_unsigned_int.mbx
  [PATCH] staging: comedi: comedi_fops.c: changed type in assignment to unsigned int *
---
Total patches: 1
---
 Link: https://lore.kernel.org/r/20200715044813.fww3regsgsbgyp7b@pesu-pes-edu
 Base: not found (applies clean to current tree)
       git am ./20200715_bkkarthik_staging_comedi_comedi_fops_c_changed_type_in_assignment_to_unsigned_int.mbx

$ ./scripts/checkpatch.pl --terse 20200715_bkkarthik_staging_comedi_comedi_fops_c_changed_type_in_assignment_to_unsigned_int.mbx
20200715_bkkarthik_staging_comedi_comedi_fops_c_changed_type_in_assignment_to_unsigned_int.mbx:32: CHECK: No space is necessary after a cast
20200715_bkkarthik_staging_comedi_comedi_fops_c_changed_type_in_assignment_to_unsigned_int.mbx:38: WARNING: Missing Signed-off-by: line by nominal patch author 'B K Karthik <bkkarthik@pesu.pes.edu>'
total: 0 errors, 1 warnings, 1 checks, 8 lines checked


I used the b4 tool to download your email in mbox form from
lore.kernel.org and then ran checkpatch on it.


And the signed-off-by error is real, you need to also fix that.

Try the above yourself to verify this.

thanks,

greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
