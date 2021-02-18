Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B80E31EAC1
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 15:12:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF29086E8B;
	Thu, 18 Feb 2021 14:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FYI7g81JeCx1; Thu, 18 Feb 2021 14:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A833E86E70;
	Thu, 18 Feb 2021 14:12:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DF1C1BF3C3
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 14:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAE4160585
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 14:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jK-yDsYC6nWx for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 14:12:23 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id C5E40605FE; Thu, 18 Feb 2021 14:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD84260585
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 14:12:21 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id b145so1376106pfb.4
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 06:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/9k5TLG+cSQGO44XklxxRtkxrKg7GM556fliUBGzq6o=;
 b=CtLo4NL2MqVEC59LE/m04PNwUtXe4pxcA5F5xZ3wVpEC3BuHCeHYBfjX7urIcacvAQ
 gN/APFPgl/JRtm/T7L+viVjD5ifJbNFrAjZfYPMtr/kpTTElXovfD5Gh+B1tjQ6YxeM8
 dssckpv2fPSvb7lYDHFmmK2Dq6OvN7w7TrlIbeCRchVhtbGSxYmEgsGbHzYSVNiGBhai
 W5wdRxxh2oD2VUrytfL2wnwRn11y+YjZ3tjGWAhZPandTw/oxZVkz1HV/gbL9nTHl1SF
 Dh2zcl7uS9i2Wh7bFkykkmPoW6QHsFbvJqSmi0DLLJuWfJMVr/QXFvlTzs2XaYpcx+CS
 8nDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/9k5TLG+cSQGO44XklxxRtkxrKg7GM556fliUBGzq6o=;
 b=EPFkIb7Enhx4CqHgh0wf6o4N639FRM+yaDE8maNk9TmKiRfPpkeZ7Iw6guZ8dDfQfA
 7igGVY0I+em2UGg6IW881dOG1yGv8Fd94WrPUEFpEDyfVtvg+zwO75NeLhUJmaUKQ4cP
 jimRxZa3LaMQeN3l3DOKQos+99C6RCPWY2PD1UTFFk7nmmECEk7ZFgiQGd/v39UXEyf7
 nidn6kxyQftEmDRaENa4c+YPRImvwsFI8cXXi2c55pXZUJp2dLT0GiF5VPGivMTaf304
 EX0Ol10PHdJsz8rUcFHbbuBOk1JQsB418imKX1cT+71d/Ghbmom5OtTyRnQmHYjflrNa
 JczA==
X-Gm-Message-State: AOAM533wSHmLqKJW01XevxtbzzOtG7q83GsZXHE9iNkT7csUOuM5o+aF
 tTKhO6PcZh/H92hFhbsUZ0s=
X-Google-Smtp-Source: ABdhPJxN6FD07z7UoqhokkRaf7VlnTVOKEaM2MOVnrHA8XEOAhvgeDNFdwmkAYc7YU8Pzw6bt/i2tQ==
X-Received: by 2002:aa7:8d0d:0:b029:1d7:3c52:e1f6 with SMTP id
 j13-20020aa78d0d0000b02901d73c52e1f6mr4604555pfe.39.1613657541296; 
 Thu, 18 Feb 2021 06:12:21 -0800 (PST)
Received: from atulu-ubuntu ([106.200.12.70])
 by smtp.gmail.com with ESMTPSA id q196sm6850635pfc.162.2021.02.18.06.12.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 06:12:21 -0800 (PST)
Date: Thu, 18 Feb 2021 19:42:15 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Message-ID: <20210218141215.GB2022@atulu-ubuntu>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
 <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
 <20210218104755.GA7571@atulu-nitro> <YC5bsXa+1KSuIh+v@kroah.com>
 <20210218125220.GA19456@atulu-nitro> <YC5vyPYs6TNOnRZ1@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YC5vyPYs6TNOnRZ1@kroah.com>
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

On Thu, Feb 18, 2021 at 02:46:48PM +0100, Greg KH wrote:
> On Thu, Feb 18, 2021 at 06:22:20PM +0530, Atul Gopinathan wrote:
> > On Thu, Feb 18, 2021 at 01:21:05PM +0100, Greg KH wrote:
> > > On Thu, Feb 18, 2021 at 04:17:55PM +0530, Atul Gopinathan wrote:
> > > > On Thu, Feb 18, 2021 at 10:31:15AM +0000, Ian Abbott wrote:
> > > > > On 18/02/2021 08:44, Atul Gopinathan wrote:
> > > > > > Fix the following warning generated by sparse:
> > > > > > 
> > > > > > drivers/staging//comedi/comedi_fops.c:2956:23: warning: incorrect type in assignment (different address spaces)
> > > > > > drivers/staging//comedi/comedi_fops.c:2956:23:    expected unsigned int *chanlist
> > > > > > drivers/staging//comedi/comedi_fops.c:2956:23:    got void [noderef] <asn:1> *
> > > > > > 
> > > > > > compat_ptr() has a return type of "void __user *"
> > > > > > as defined in "include/linux/compat.h"
> > > > > > 
> > > > > > cmd->chanlist is of type "unsigned int *" as defined
> > > > > > in drivers/staging/comedi/comedi.h" in struct
> > > > > > comedi_cmd.
> > > > > > 
> > > > > > Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> > > > > > ---
> > > > > >   drivers/staging/comedi/comedi_fops.c | 2 +-
> > > > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > > > > > index e85a99b68f31..fc4ec38012b4 100644
> > > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > > @@ -2953,7 +2953,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > > > >   	cmd->scan_end_arg = v32.scan_end_arg;
> > > > > >   	cmd->stop_src = v32.stop_src;
> > > > > >   	cmd->stop_arg = v32.stop_arg;
> > > > > > -	cmd->chanlist = compat_ptr(v32.chanlist);
> > > > > > +	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
> > > > > >   	cmd->chanlist_len = v32.chanlist_len;
> > > > > >   	cmd->data = compat_ptr(v32.data);
> > > > > >   	cmd->data_len = v32.data_len;
> > > > > > 
> > > > > 
> > > > > This patch and the other one in your series clash with commit 9d5d041eebe3
> > > > > ("staging: comedi: comedi_fops.c: added casts to get rid of sparse
> > > > > warnings") by B K Karthik.
> > > > 
> > > > Oh I see. Not sure if this is the right place to ask, but which tree and
> > > > branch should one work with when messing with the code in staging/
> > > > directory? (wanted to avoid such clashes in future)
> > > 
> > > staging-next is the best one to use from the staging.git tree.  But as
> > > the above commit was merged in 5.9-rc1, way back in July of last year, I
> > > have no idea what tree you are currently using to not hit that...
> > 
> > I'm using the staging tree alright, cloned it yesterday. Except I used the
> > --depth parameter. I believe that is the culprit. How bad a mistake is
> > that?
> 
> I do not know, I do not use that option, sorry.
> 
> > (Why depth? I'm currently staying in a remote area where internet
> > download speeds are less than 100Kbps. I tried a normal git clone of
> > the staging tree and it's estimated time was more than half a day. Not
> > to mention, it fails due to loss of connection midway every time)
> 
> If you already have a copy of the kernel git tree, there is never a need
> to download the whole thing again.  Just add another remote banch and do
> a pull, the difference should be very tiny now compared to what is in
> Linus's tree.
> 
> Or, to seed the whole thing, download a "git bundle" as described here:
> 	https://www.kernel.org/best-way-to-do-linux-clones-for-your-ci.html
> which you can use to work off of locally, and should be easier to handle
> over slow and flaky download connections.
> 
> hope this helps,

Oh this is great! Will definitely help me. Thanks a lot!

Regards,
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
