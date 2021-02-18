Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B54D31EA0B
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 13:52:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C7A886E45;
	Thu, 18 Feb 2021 12:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zogp6jKBYf+B; Thu, 18 Feb 2021 12:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0544486E33;
	Thu, 18 Feb 2021 12:52:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB541BF3BA
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 12:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B5AC605D9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 12:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xh1UAUsAsm5J for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 12:52:29 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 76EFD605EF; Thu, 18 Feb 2021 12:52:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16CBB605D9
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 12:52:28 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id f8so1209987plg.5
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 04:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WtJG2gNtFvYKB4xLzXdqRCDe6hB+LE9X1M8Q+UfN854=;
 b=qsd6ryJkDj5inFk6cBr8fDz/aMqdlifJhMcipvy6+zAhzHeA9dvWs4qhOla9ZyeJWw
 R2rIusjUc0pU25Sw5TOxspkGtTSISes7AGFGvvJuwEi0zoulnf7MyStFjjnMutLr/eJq
 4QidPwI8F0FmoKAwzsXgnW1tWRq3csUFXQrk0aQ4h1CJsqP6wbwkDwy4Rgt1y41dwq9d
 Y9HJ6i8td8CPvoT2vcm8Lwv9dnI26LhmFtRdLphwsKVzgDZo/d+7K85XYHY5g7ipV7e5
 IJpV2qSe0aik9yqRABAMJ9TTFgEQxjhVBzz/E66lo3xRwQblEWuuup1sWZ44KM3B8qqs
 z5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WtJG2gNtFvYKB4xLzXdqRCDe6hB+LE9X1M8Q+UfN854=;
 b=KtSOmhKWrjCsLxxukIRk0IcnKK1HAxcAUuDLbKave6oOmjLbaYe5VF657Yqp5A0lzS
 aOjb8am1Qg/slEI1I6PshYDBa3X3q5hGS5J9eoGlqwQcgCtuHx+0hrqwRVJ8yEYgy1B3
 GJ7X1kFFtiHWXGyokjY82m0ai/3JY+OyAy0eRAeQ96cvdZhKm8VqnPIbhLFQVXuU3Pfy
 xmczxLFdjMN0ECeHBGs5y7ja1tIRCokp8PxiUEqfW2aPuklVg84yMfuIkU+fZo+i17bV
 CccDE3gwF7AeErYBNWHupO4KAM4tc8dZ1OCTEghqsriqZx620BQrfs4linITWDdqpF8C
 DXJA==
X-Gm-Message-State: AOAM533qwEkbvJwGE82tSA4jSaRi2e2fOCA67WDnGc20Js9ILVjAHZtq
 wnDDbaqKMWSQd/kcrE/afk0=
X-Google-Smtp-Source: ABdhPJx3lZFklCVME3XvBfaJ8akaMuMBM2dR5+DuJNebs2SzT6FT60D6WqHwEGUqjKov5BSDw4TS1A==
X-Received: by 2002:a17:90a:6bc5:: with SMTP id
 w63mr3919763pjj.28.1613652747397; 
 Thu, 18 Feb 2021 04:52:27 -0800 (PST)
Received: from atulu-nitro ([2401:4900:3155:553b:559f:4399:2a05:67d4])
 by smtp.gmail.com with ESMTPSA id 184sm5976555pgj.93.2021.02.18.04.52.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 04:52:26 -0800 (PST)
Date: Thu, 18 Feb 2021 18:22:20 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Message-ID: <20210218125220.GA19456@atulu-nitro>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
 <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
 <20210218104755.GA7571@atulu-nitro> <YC5bsXa+1KSuIh+v@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YC5bsXa+1KSuIh+v@kroah.com>
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

On Thu, Feb 18, 2021 at 01:21:05PM +0100, Greg KH wrote:
> On Thu, Feb 18, 2021 at 04:17:55PM +0530, Atul Gopinathan wrote:
> > On Thu, Feb 18, 2021 at 10:31:15AM +0000, Ian Abbott wrote:
> > > On 18/02/2021 08:44, Atul Gopinathan wrote:
> > > > Fix the following warning generated by sparse:
> > > > 
> > > > drivers/staging//comedi/comedi_fops.c:2956:23: warning: incorrect type in assignment (different address spaces)
> > > > drivers/staging//comedi/comedi_fops.c:2956:23:    expected unsigned int *chanlist
> > > > drivers/staging//comedi/comedi_fops.c:2956:23:    got void [noderef] <asn:1> *
> > > > 
> > > > compat_ptr() has a return type of "void __user *"
> > > > as defined in "include/linux/compat.h"
> > > > 
> > > > cmd->chanlist is of type "unsigned int *" as defined
> > > > in drivers/staging/comedi/comedi.h" in struct
> > > > comedi_cmd.
> > > > 
> > > > Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> > > > ---
> > > >   drivers/staging/comedi/comedi_fops.c | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > > > index e85a99b68f31..fc4ec38012b4 100644
> > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > @@ -2953,7 +2953,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > >   	cmd->scan_end_arg = v32.scan_end_arg;
> > > >   	cmd->stop_src = v32.stop_src;
> > > >   	cmd->stop_arg = v32.stop_arg;
> > > > -	cmd->chanlist = compat_ptr(v32.chanlist);
> > > > +	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
> > > >   	cmd->chanlist_len = v32.chanlist_len;
> > > >   	cmd->data = compat_ptr(v32.data);
> > > >   	cmd->data_len = v32.data_len;
> > > > 
> > > 
> > > This patch and the other one in your series clash with commit 9d5d041eebe3
> > > ("staging: comedi: comedi_fops.c: added casts to get rid of sparse
> > > warnings") by B K Karthik.
> > 
> > Oh I see. Not sure if this is the right place to ask, but which tree and
> > branch should one work with when messing with the code in staging/
> > directory? (wanted to avoid such clashes in future)
> 
> staging-next is the best one to use from the staging.git tree.  But as
> the above commit was merged in 5.9-rc1, way back in July of last year, I
> have no idea what tree you are currently using to not hit that...

I'm using the staging tree alright, cloned it yesterday. Except I used the
--depth parameter. I believe that is the culprit. How bad a mistake is
that?

(Why depth? I'm currently staying in a remote area where internet
download speeds are less than 100Kbps. I tried a normal git clone of
the staging tree and it's estimated time was more than half a day. Not
to mention, it fails due to loss of connection midway every time)

Thanks!
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
