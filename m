Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CABA013D285
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 04:06:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E234B85F32;
	Thu, 16 Jan 2020 03:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NrLfSdm0NPhw; Thu, 16 Jan 2020 03:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3317585ECE;
	Thu, 16 Jan 2020 03:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 266B41BF470
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 03:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1ECD785E8D
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 03:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 88lLRirqse-m for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 03:05:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A470A85E25
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 03:05:57 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id d71so17889607qkc.0
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 19:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LJXi3vdwLF4lZXgyRozqe9++joE7H5IFfCU/LjltzQY=;
 b=KRm9UZCJE4pz/a+99Sz+RiaIemu8Dlo6SdSo2xAP5Ue7KgqUdB7y9Lk/6Lpl57RKu5
 5OyJ6ySiqRTYO1AhS4TgH6Andf4C75oANif3jnF1dPUt8JiWM04+/pTrgroZJlkzOO1X
 u0LW6HYnc84VoQmPMxTcXD1vfSvnibUjqZludyQAdclOARerF0jdMaJqjS4zzO2WX6bn
 mwd38AIZNiHN+bxyYL/jCQ6l1JlKoSNU3igy5nfFL/YjfSHigX7noAJH6i4nvvgdA5he
 qlG3JnQOudZymM9GrGfRMAhgXsyhIycx1dHVroEgga2jpfhYPd3SHRoduEfVTWMU5WjE
 oVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LJXi3vdwLF4lZXgyRozqe9++joE7H5IFfCU/LjltzQY=;
 b=a6RxBYLtfzDp5mTrJWVVMb/i6YkBLOdsl9C7P1wnkuydHdkKGrIqmnFFij/12PJEQq
 6i8MvJ46Jx8tvQBHLcIKgqSaYaoEIY5UJTo0K/NZjLmjRUY97HHl3lQzf3twFhOSOwsM
 4nPvRoWC1UrRcdjT/1QYbZ9QbLSzfy2ZpW2DgBDjFXidyudp8b6cQjEPf2BSjHWsSgmO
 YK02NJu/E13Vdc/EpjQBlbTKJt+sKMHUh3CvQgGR4zw1haqBOB6TjnANfg3P9otpJHYH
 iY6+cZPvq+4RNw4cf1neUnjcz2nOd/dJo/nrEkReZxRPhlJexFz5Cx2K69AMVskyF8hi
 5MdQ==
X-Gm-Message-State: APjAAAWlKWgosWznkT/tCJ7FPJkhPeTdUfw7t4EXTd2xnbbcUhbOnb4X
 qqiployZ0yX7hp+a0U6PTAo=
X-Google-Smtp-Source: APXvYqxwnCQm3M4EHGsoNuCvF1xxDfP2yY/q2dMuG6bSGbxkLAiZEr27yLTMBQeDjE+VCRwxQoQN5Q==
X-Received: by 2002:a37:9bd2:: with SMTP id d201mr30463062qke.55.1579143956599; 
 Wed, 15 Jan 2020 19:05:56 -0800 (PST)
Received: from felipe-pc ([179.209.47.80])
 by smtp.gmail.com with ESMTPSA id k14sm9385626qki.66.2020.01.15.19.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 19:05:55 -0800 (PST)
Date: Thu, 16 Jan 2020 00:05:21 -0300
From: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] Remove warning: "dubious: x | !y" detected by sparse
Message-ID: <20200116030521.GA2258@felipe-pc>
References: <20200115012515.GA16012@felipe-pc>
 <20200115062156.GF3719@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115062156.GF3719@kadam>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geordan Neukum <gneukum1@gmail.com>, Hao Xu <haoxu.linuxkernel@gmail.com>,
 Jamal Shareef <jamal.k.shareef@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

Thank you for you comments, I'll fix the issues in v2. Also, sorry for the 
duplicate email, I sent the first email only to you (now I think I'll get it 
right).

On Wed, Jan 15, 2020 at 09:21:56AM +0300, Dan Carpenter wrote:
> Add a subsystem prefix to the subject.  "Staging: kpc2000:"
> 

I totally forgot about this guideline for staging.

> On Tue, Jan 14, 2020 at 10:25:15PM -0300, Felipe Cardoso Resende wrote:
> > The way I chose to remove the warning was to define a macro to
> > make it clear if a flag will be enable or not.
> > 
> > Let me know if you would prefer it to be done in a different way.
> > 
> 
> All this should go under the --- cut off because we don't want it in the
> final git history.
> 

That makes sense.

> > Signed-off-by: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
> > ---
>   ^^^
> 
> The commit message should be something like.  "Sparse complains about
> "dubious: x | !y".  This patch adds some macros to make Sparse happy and
> the code more readable.
> 

I see.

> I like the patch.  enable_flag_if() is slightly weird because normally
> the condition would come first.  It feels sort of like Perl or something
> to put the condition afterwards.  But this patch is very small and self
> contained so it's fine.
> 

I totally agree it's not usual to put the condition at the end. I did that
so the three macros would start with the flag as the first argument, but after
writing the code it seemed to me that it helped to keep the focus in the flag.

> Just fix up the subject and the commit message and resend.
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
