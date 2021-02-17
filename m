Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597131DECF
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 19:10:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 55EDA85FB9;
	Wed, 17 Feb 2021 18:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpJCkzQ2cjTI; Wed, 17 Feb 2021 18:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95E0185F63;
	Wed, 17 Feb 2021 18:10:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92E7A1BF40B
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 18:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B8456E7C0
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 18:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpPLhy1it7bj for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 18:10:07 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B19A16F57A; Wed, 17 Feb 2021 18:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A88B6E7C0
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 18:10:06 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id w18so8913299pfu.9
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 10:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=smbTqrlF1OKSavBRXV32uMxPnySvhK57w5+UGPsp0pE=;
 b=iCYp/wqQbf0lAfQyTZJC4Tpp4Uoo/e/ftBURBj65dQOsffIX9A1/b29tDwiSxSpBlV
 uA5Qh2XiSPPTGWSz7QgjlDHn3w/7JafCOT5gAuz+u6HdeazOqx9XKYdQBzbMYtJXHz2+
 SR/ZodXHJEavXSysanbYLuEjS3DAsXNNHRhDCAhIoSg5cWeZmOmsqnmXwG2pzTng4+Uo
 M5MVQFkY3Ex62HWjYGrWQwEWeKCerW3u6q1GXH86KIsgfL7RA+9geTesbdc4X04W7UJB
 v3YGiQcgCn2Bgc4iKiyxf/N+uiZb+Qh2IBkE3SGbafsnd0iVahhD8fb9IZyttfoO8CtU
 nYMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=smbTqrlF1OKSavBRXV32uMxPnySvhK57w5+UGPsp0pE=;
 b=JWOw70DqS2fKcM2SvoQRacjgaJ9ef6YM/RrYOXdwOY2EIG4ysRyL2YEnaaWeWiNQAz
 ykqWFeFE6pjwFWngZoYDggPFODJjrVUDekVK4gKQlLYhl1zcvNMM/SrGDJBC9ehjSk4K
 nt1a0JeGT5yuxIjSJkxPPrW5THpLCn2wDX8JmDhCwpUgt4bAUtMR4a4WtzPDUot1vi79
 IndqsMp9ZH/Vkvkm7oJJiCzlUKMlpD4pZn+wSkDWALs47nkqyiQQGfScTWECrFcX09Sp
 5DPYziq5TOmdjAdEKzUullEly7XE2y/nGM/C7f7Ckd2IhTJvUDlIBLOU8MpmMFN8TeVU
 HRwQ==
X-Gm-Message-State: AOAM530eOUoBFjlfBWBgD1lt797pVisPQkjhSUZJxbu7T8INnUnRYumo
 QtIqxfSBCl5QRBwl04SW71k=
X-Google-Smtp-Source: ABdhPJwJXdQeytcmBSrD7wMQDbQj12GCNRhhCvIy+S3PRCufhtd2+luzJUoIFOfzC05AV7KPMSVJOg==
X-Received: by 2002:a05:6a00:15d2:b029:1b7:30c1:8495 with SMTP id
 o18-20020a056a0015d2b02901b730c18495mr563274pfu.32.1613585405906; 
 Wed, 17 Feb 2021 10:10:05 -0800 (PST)
Received: from atulu-ubuntu ([106.200.12.170])
 by smtp.gmail.com with ESMTPSA id 202sm3062101pfv.89.2021.02.17.10.10.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Feb 2021 10:10:05 -0800 (PST)
Date: Wed, 17 Feb 2021 23:40:00 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: comedi: cast to (unsigned int *)
Message-ID: <20210217181000.GB10124@atulu-ubuntu>
References: <20210217165907.9777-1-atulgopinathan@gmail.com>
 <YC1T06VCh0K2BBW5@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YC1T06VCh0K2BBW5@kroah.com>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 06:35:15PM +0100, Greg KH wrote:
> On Wed, Feb 17, 2021 at 10:29:08PM +0530, Atul Gopinathan wrote:
> > Resolve the following warning generated by sparse:
> > 
> > drivers/staging//comedi/comedi_fops.c:2956:23: warning: incorrect type in assignment (different address spaces)
> > drivers/staging//comedi/comedi_fops.c:2956:23:    expected unsigned int *chanlist
> > drivers/staging//comedi/comedi_fops.c:2956:23:    got void [noderef] <asn:1> *
> > 
> > compat_ptr() has a return type of "void __user *"
> > as defined in "include/linux/compat.h"
> > 
> > cmd->chanlist is of type "unsigned int *" as defined
> > in drivers/staging/comedi/comedi.h" in struct
> > comedi_cmd.
> > 
> > Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi_fops.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > index e85a99b68f31..fc4ec38012b4 100644
> > --- a/drivers/staging/comedi/comedi_fops.c
> > +++ b/drivers/staging/comedi/comedi_fops.c
> > @@ -2953,7 +2953,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> >  	cmd->scan_end_arg = v32.scan_end_arg;
> >  	cmd->stop_src = v32.stop_src;
> >  	cmd->stop_arg = v32.stop_arg;
> > -	cmd->chanlist = compat_ptr(v32.chanlist);
> > +	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
> 
> __force?  That feels wrong, something is odd if that is ever needed.
> 
> Are you _sure_ this is correct?

The same file has instances of "(usigned int __force *)" cast being
used on the same "cmd->chanlist". For reference:

At line 1797 of comedi_fops.c:
1796                 /* restore chanlist pointer before copying back */
1797                 cmd->chanlist = (unsigned int __force *)user_chanlist;
1798                 cmd->data = NULL;

At line 1880:
1879         /* restore chanlist pointer before copying back */
1880         cmd->chanlist = (unsigned int __force *)user_chanlist;
1881         *copy = true;

Here "user_chanlist" is of type "unsigned int __user *".


Or perhaps, I shouldn't be relying on them?

Thanks!
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
