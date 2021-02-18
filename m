Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB33231EC66
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 17:43:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4523487359;
	Thu, 18 Feb 2021 16:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hekHMma-P5hI; Thu, 18 Feb 2021 16:43:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C9648731F;
	Thu, 18 Feb 2021 16:43:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46D461BF3D9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 436018732D
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8T3+8OmQ55I9 for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 16:43:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A0018732C
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 16:43:08 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id e9so1832863pjj.0
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 08:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tV7hlg3a/xcbw+h5u+v8UaZGqFRe1DSPxTh2rWORcsQ=;
 b=GItZJv4oCbpA1Mc3jm/mM4dqNhu7dMePFVpR5qyi1HvGDg+1m3W6nQMPC4urYvCh47
 H2Su/N+OKB6TcDvB80etPTmfSXpB55MId7unYcR6o05sB7/IZUq0jH+CT8LSCDQLB64e
 hmjaq3mYLBw9XRKj04CnMh+kVyMkff5CgheqHiqon1U0FCU7L7wcPRsfWIMc4EnYv2uF
 qiNt2IbVj5YiUWLKbSUnt+476cgMXlPRF8xLaFNs6AYKZnfWQwEQUtG8ToM7baUV6Ps2
 3ccJwMFoFUW8wIoL4rUtmNIMLr8Z9j63uY7vlEjNoouQWCL71BBjK/3IQKOboYZ+bsQr
 sgiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tV7hlg3a/xcbw+h5u+v8UaZGqFRe1DSPxTh2rWORcsQ=;
 b=tc0WfwBQyRX4XS2VG8kv3UfV+CUy9skzILfsu+FIUORpYFU9Bd5y4T1HyQzwHjRWiu
 FVRmkS02igLsy2EVx3Dv75ECat06dkXGLmlZKI+5cXzwr0WIdgROWQhwj1/0uYo02bdF
 d05pOTfpaZflKXXOoj4JQ1vJSuQbRN7zuUCwH9QjMwrN5L/JG9ZRM3F4Afu9Zm1/Ra4M
 lAvN3URUpvpPqobFXxrtoLhHz1cHdjLm/AItWzj9rnryQEX8TuXlTvcJUgQ5f6zQpTjP
 VEH72NYiqGyoUiABf0mWhGJ71RRK5DA/atGxiw3UZdEb2KKVEj5hIfVMxR/dzmqdslP7
 chjQ==
X-Gm-Message-State: AOAM533U8le6yhBmdJi2EWq6dqqBQX+5pCWQavOuDaTVK8ZoHxRELxIX
 EpfbYpUiou3WO1dCDTZ9IzU=
X-Google-Smtp-Source: ABdhPJxKBkK1is59xf0j2ggYOW1fj4HpPH2bbZHqEkfVXcLbVXwcPuNWrkPu+LqPwZZyEPYH5elrHg==
X-Received: by 2002:a17:902:6bca:b029:e2:c5d6:973e with SMTP id
 m10-20020a1709026bcab02900e2c5d6973emr4724523plt.40.1613666495877; 
 Thu, 18 Feb 2021 08:41:35 -0800 (PST)
Received: from atulu-nitro ([2401:4900:3155:553b:247e:8a1b:ccde:ac6f])
 by smtp.gmail.com with ESMTPSA id k5sm5945066pjl.50.2021.02.18.08.41.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 08:41:35 -0800 (PST)
Date: Thu, 18 Feb 2021 22:11:28 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Message-ID: <20210218164128.GA9289@atulu-nitro>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
 <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
 <20210218104755.GA7571@atulu-nitro> <YC5bsXa+1KSuIh+v@kroah.com>
 <20210218125220.GA19456@atulu-nitro> <20210218155159.GL2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218155159.GL2087@kadam>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 06:51:59PM +0300, Dan Carpenter wrote:
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
> > 
> > (Why depth? I'm currently staying in a remote area where internet
> > download speeds are less than 100Kbps. I tried a normal git clone of
> > the staging tree and it's estimated time was more than half a day. Not
> > to mention, it fails due to loss of connection midway every time)
> 
> I live in Africa and used to have this problem before Africa got
> connected to fibre optic.  Greg's suggestion of using `wget -c` to
> download a git bundle is a good one.  However, in my experience
> `wget -c` is not 100% accurate on super flakey internet.  Then if it
> fails the verify will fail and you'll have to re-download the entire
> thing.
> 
> If you want I have a different option.  What I made a clone of Linus's
> tree.  Then I did:
> 
> tar cvvf linux.tar linux/.git
> for i in $(seq 0 116) ; do dd if=linux.tar of=linux.tar.${i} ibs=1M count=20 skip=$((20 * $i)) ; done
> 
> Now I have put those on a private webserver I have.  You can download
> them by doing:
> 
> for i in $(seq 0 116) ; do wget -c http://51.158.124.72/kernel_split/linux.tar.${i} ; done
> md5sum * > my_md5s
> wget http://51.158.124.72/kernel_split/md5sums
> diff -u md5sum my_md5s
> 
> Re-download files which don't match
> 
> for i in $(seq 0 116) ; do cat linux.tar.${i} >> linux.tar ; done
> cat linux.tar | tar xv
> cd linux
> git reset --hard
> 
> Let me know if this works for you.  I will leave the source up for a
> week or two before I delete it.

Hi Dan!
That's a great work you did there. Thank you for trying to help,
really appreciate it. :D

As of now, I digged into my old backup partitions and found an image
of an ubuntu VM that I used to mess with linux source a couple of weeks
ago and luckily I had a clone of both linux-mainline and linux-next
trees in it. So I have updated those and using them currently.

My internet problems are temporary, as I will move back to my original
location, which has good internet speeds, next month.

Again, thank you for trying to help me! I will definitely contact you
if I ever need them. :D

Regards,
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
