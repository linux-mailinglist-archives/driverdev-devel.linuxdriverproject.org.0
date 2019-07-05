Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1516007B
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 07:11:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 43AC82264A;
	Fri,  5 Jul 2019 05:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99ri3l28gK1y; Fri,  5 Jul 2019 05:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B713022650;
	Fri,  5 Jul 2019 05:11:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82A891BF5F5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 05:10:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7DC3C86E4F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 05:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SRaegd0-B9uR
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 05:10:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 948D286E3F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 05:10:56 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w9so6603131wmd.1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 04 Jul 2019 22:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qHsAHy4/koCi0j0/cyiEeVNCpvxVdrS20tGaCE7+zec=;
 b=Ov8uHUS2opyq253mZ4Jhr2seQWtfHzT6KORwO8evf6b8Puln5VxvllTDpFR5Lw5K+j
 WYUmXb7Wf1D8EO9kN20hehke66WGBYiCxgQlM4lUW4wr+IEJRR4O8bq7ZuxvmeweQtMs
 MVPprw68niyN4Km283YECfhiIMYhKK5ayjiwDaBJsBIX/X/F7FiIR6EX1qeDqB8j574k
 ho0yDT4ikclukKCq0TYmG10n1lL8/e3HF8BolBDwtMfb9EZeJG42qI6Th5KengZUexRY
 mug6gJCmbGtUxA0AzART6AaM5vDeAELHdee6obisMKpnK5iclRHhRSMFu+1RD7/0Y+Ct
 8tvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qHsAHy4/koCi0j0/cyiEeVNCpvxVdrS20tGaCE7+zec=;
 b=jlGhvavdOUpUWPGlzP1C8Zva5/XVMtWPYa/gBQCM0P2Q6nlTCnD5qRXKYHmfrRIuYn
 Op/Xi3uPlQ9Hz6mBUvaze9HmckQdEcUQWSc7se5kDdkq1I0E/SJHxUt0rriLq8JXPaeE
 v1MUKiFbBydWdWRjT86jMxsHXgTRGX107ygYkj/vmNRDOLnZjSnbRcQ1IzDlhVMNktDz
 x9B7ZIceVa9iiEnVPPfNmN4FFKR2wv21jEjAresakC2MgN7WgrOcW6rR2juD4KGwcJzn
 0P7o5SGyADUce/pt6s0AlQ8uv0okvhw8Mj8ldu0PFIvnJ5mErxjWAN5WpxRi1EjDcu8y
 uFhQ==
X-Gm-Message-State: APjAAAXYA1h3AmhuC65qCGhkGK3HfhmFIG2S5E57+vtdGOJuNZijzdMq
 fBHZKAptZCXKi68V9vnJFgGx7vKU35k086nMmjU=
X-Google-Smtp-Source: APXvYqxyJrJzaNf+2Ajm93g9khTu7Mq9QzZ9IBUGATtTjad4zlm8l6iU39/1SwDEW2VIcXOs+NWSkXhgSCykVmUeMeQ=
X-Received: by 2002:a1c:544d:: with SMTP id p13mr1464541wmi.78.1562303455006; 
 Thu, 04 Jul 2019 22:10:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190705025055.GA7037@ares>
 <CAPTh4OuL5k8YAbkcnDLQQ4YRFkeaYZ6PwqWPisLtST7oz2+haQ@mail.gmail.com>
In-Reply-To: <CAPTh4OuL5k8YAbkcnDLQQ4YRFkeaYZ6PwqWPisLtST7oz2+haQ@mail.gmail.com>
From: Amit Kumar <free.amit.kumar@gmail.com>
Date: Fri, 5 Jul 2019 10:40:43 +0530
Message-ID: <CAPTh4OuKv4Fx2DOWygCO0oXAm8xLw2f47igrnvhDEf2HWWyuEA@mail.gmail.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
To: "Tobin C. Harding" <me@tobin.cc>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 5, 2019 at 9:02 AM Amit Kumar <free.amit.kumar@gmail.com> wrote:
>
> On Fri, Jul 5, 2019 at 8:21 AM Tobin C. Harding <me@tobin.cc> wrote:
> >
> > Hi,
> >
> > I am doing a tutorial at OSSNA in San Diego on getting into kernel
> > hacking.  I'm only a couple of years deep into kernel hacking so I
> > wanted to reach out to those more experienced than myself (and those
> > less experienced).
> >
> > Is there any thing that you would really like to see covered in this
> > tutorial?
> >
> > If you are a grey beard is there anything that you have been lamenting
> > us newbies not knowing/doing?
> >
> > If you are a newbie is there anything that you are struggling with that
> > you really want to learn?
> Thank you.
> Where can I find your tutorial?

I forget to tell, merely creating and sending patches is not important.
Also I would like to know how to manage patches, using git, mutt, quilt
and so on.
Sending patch through git-email is good. But different versions of patch.
Applying patch from mutt. Replying to patch recipients.

> Regards,
> Amit Kumar
>
> > Current format/content: the tutorial will attempt to bridge the gap in
> > the learning process between the 'first patch' page on kernelnewbies.org
> > wiki and being 'comfortable' patching the kernel via LKML.  Outcome will
> > (hopefully) be a small patch set into drivers/staging/.  (Don't worry
> > Greg only one group got to this stage last time, you won't get flooded
> > with patches :)
> >
> > Thanks,
> > Tobin.
> >
> > _______________________________________________
> > Kernelnewbies mailing list
> > Kernelnewbies@kernelnewbies.org
> > https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
