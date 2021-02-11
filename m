Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1228318C05
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:30:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 909926F6BF
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 13:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wKUZECTvF5e6 for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 13:30:01 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 449316F666; Thu, 11 Feb 2021 13:30:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1F4E6F625;
	Thu, 11 Feb 2021 13:29:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7B531BF94D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD24B8654E
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mczT8l5OfCbs for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:29:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A47DE864BD
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:29:30 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id o15so4057762ilt.6
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 05:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+1PGaICu35HhDzgMzO5NHONNx9MaqmRJbxjeQ/aAm4g=;
 b=RjyuLWY072LWh3cz4MddJBWKw67LrG6KF2Gn98KWQbCOiGCrLiPYw2Nza6xS4jywni
 Yn6ylocApTCXn8C1NITTuWKOU57tc8oczW+uTYBHvkbr59xszDQ/Io2zNCE0Ag/s6hGj
 JKK77s/YFzLXHPLlOhczVB55hWUjS5qPYaPHMMBILd24LurOHadnb2htZlFlPI9oF+iJ
 izrwDpU6qEdPAM2k7+2i6liwSsmumYZLcEwycs37qJCUE2acV4TQrNplB9+7ExlLMh6l
 78av5uLZRusQKp87vQLSst5JM/xoSoIPsOUkVm37PM+RWIY9mQn/HjmaW87Kc3LV01Mf
 fv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+1PGaICu35HhDzgMzO5NHONNx9MaqmRJbxjeQ/aAm4g=;
 b=O9cFqN97So11ev5IDo29yiZRBtbvgqA7cuHIa0ANhZrZOMIeWFW20l6Xe0z/2+5hun
 BPw/+lFHf/q+CWBgi+QsXW9pPFvLYFUfXdOVWVeNZJ0n9j2qAA+ssQo4K5fujZsjQVLx
 H3TsD0t7LHiSPe6HHq0NgZjDgusvTb1LtmHqBR2kb8topznd0ri8LS2NV0HuIUtvCcLJ
 dhqRq6p3nNp7xnXiwQcioF1sI4Sv7vSpTqDGbE1wbHqdITQxw0wYPnrELKVTH0yY7PZy
 QxbXXX7YhoYh/k2WgluNqN+L5LNeFzBD63hT7lkVENTiYhaB7DSLEmFhjrugyb8Nm3Vc
 BiSQ==
X-Gm-Message-State: AOAM533N10cfQwdhupvzSv4WNJ3FbtS79W46LzeUWOM1ZTuWEzxvq2q4
 wQhxajZ2ueYhnZh3W8CZbcmeOiKYURAdrqfID9M=
X-Google-Smtp-Source: ABdhPJx7BZ/fjvJqT5ulGBLAfu2CVUG6bEAiMcbbdG9h2iiY5UTWo2gsgGuj9eXcqw63RflxRg4e8HHPNYp+txWfE0c=
X-Received: by 2002:a05:6e02:144d:: with SMTP id
 p13mr5524827ilo.41.1613050169789; 
 Thu, 11 Feb 2021 05:29:29 -0800 (PST)
MIME-Version: 1.0
References: <20210211092239.10291-1-yildirim.fatih@gmail.com>
 <YCUAy1VhLV3lwa3H@kroah.com>
 <20210211105704.GA10351@TRWS9215.usr.ingenico.loc>
 <YCUQtJk1XMsBRGBz@kroah.com>
 <20210211122324.GA10415@TRWS9215.usr.ingenico.loc>
 <YCUopYrr8dAr6yio@kroah.com>
In-Reply-To: <YCUopYrr8dAr6yio@kroah.com>
From: Fatih YILDIRIM <yildirim.fatih@gmail.com>
Date: Thu, 11 Feb 2021 16:29:18 +0300
Message-ID: <CAGt6v+NAmNNi8b0FbtvrvEfgnmOmait0J4O8WqadwO7bPXOqLA@mail.gmail.com>
Subject: Re: [PATCH -next] staging: ks7010: Macros with complex values
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ok, thanks!

On Thu, Feb 11, 2021 at 3:52 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Feb 11, 2021 at 03:23:24PM +0300, Fatih Yildirim wrote:
> > On Thu, Feb 11, 2021 at 12:10:44PM +0100, Greg KH wrote:
> > > On Thu, Feb 11, 2021 at 01:57:04PM +0300, Fatih YILDIRIM wrote:
> > > > On Thu, Feb 11, 2021 at 11:02:51AM +0100, Greg KH wrote:
> > > > > On Thu, Feb 11, 2021 at 12:22:39PM +0300, Fatih Yildirim wrote:
> > > > > > Fix for checkpatch.pl warning:
> > > > > > Macros with complex values should be enclosed in parentheses.
> > > > > >
> > > > > > Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
> > > > > >  1 file changed, 12 insertions(+), 12 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
> > > > > > index 39138191a556..c62a494ed6bb 100644
> > > > > > --- a/drivers/staging/ks7010/ks_hostif.h
> > > > > > +++ b/drivers/staging/ks7010/ks_hostif.h
> > > > > > @@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
> > > > > >  #define TX_RATE_FIXED                5
> > > > > >
> > > > > >  /* 11b rate */
> > > > > > -#define TX_RATE_1M   (u8)(10 / 5)    /* 11b 11g basic rate */
> > > > > > -#define TX_RATE_2M   (u8)(20 / 5)    /* 11b 11g basic rate */
> > > > > > -#define TX_RATE_5M   (u8)(55 / 5)    /* 11g basic rate */
> > > > > > -#define TX_RATE_11M  (u8)(110 / 5)   /* 11g basic rate */
> > > > > > +#define TX_RATE_1M   ((u8)(10 / 5))  /* 11b 11g basic rate */
> > > > > > +#define TX_RATE_2M   ((u8)(20 / 5))  /* 11b 11g basic rate */
> > > > > > +#define TX_RATE_5M   ((u8)(55 / 5))  /* 11g basic rate */
> > > > > > +#define TX_RATE_11M  ((u8)(110 / 5)) /* 11g basic rate */
> > > > >
> > > > > But these are not "complex macros" that need an extra () added to them,
> > > > > right?
> > > > >
> > > > > Checkpatch is a hint, it's not a code parser and can not always know
> > > > > what is happening.  With your knowledge of C, does this look like
> > > > > something that needs to be "fixed"?
> > > > >
> > > > > thanks,
> > > > >
> > > > > greg k-h
> > > >
> > > > Hi Greg,
> > > >
> > > > Thanks for your reply.
> > > > Actually, I'm following the Eudyptula Challenge and I'm at task 10.
> > >
> > > First rule of that challenge is that you are not allowed to talk about
> > > it in public :)
> > >
> > > That being said, you didn't answer any of my questions above :(
> > >
> > > greg k-h
> >
> > Ohh no, missed the rule. Sorry for that, I feel rookie :)
> > You are right, they are not complex macros.
> > Besides that, type cast operator doesn't have the highest precedence.
> > So, I think we can use enclosing paranthesis.
>
> I don't think they are needed, see how these are used please.
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
