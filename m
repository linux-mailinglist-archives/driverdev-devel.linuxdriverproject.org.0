Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 676A81F1FFB
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jun 2020 21:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37AC9861D7;
	Mon,  8 Jun 2020 19:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZesrzDFO60Bj; Mon,  8 Jun 2020 19:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EE76862D4;
	Mon,  8 Jun 2020 19:34:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18EE81BF393
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 159048821F
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzF4pmzEUhmT for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 19:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 97D4F88223
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 19:34:05 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id n23so22008076ljh.7
 for <devel@driverdev.osuosl.org>; Mon, 08 Jun 2020 12:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qsN50RK5r6jDucbLG6NxXwSMIZheMgVO+8udfaUFEhA=;
 b=dnPpG0sRgWJSwbphbBzlq6YmOObuGHcgN3CFvKiU+huwVjg+2CRTE23BcRjG7iDJUq
 sLmFZCJFRIjxW7Qa+IYWpCjcAfV6dKqhIQf4+ymNh9wdF9ye5UnkiJnXekhYt8+Sx04Y
 SkK3HbcXNBE+uspuN45JcFfAp8ixin0Maw7yVe+rlSYQd2UB3JVG2xIGtqOkk3tHtaGW
 S3mYm65yYjhDClDTl9/+uoaijEXqK5JaOtu/F+rL2OFUsKLEGOHmJWFaR+lDc+hYPPiS
 rGJtDWGh/bl4fvEW/+xLXw4DA862+2NFTPO95MsB8YPlxAo7garOjhhs8p1ufwbIPAme
 Q70Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qsN50RK5r6jDucbLG6NxXwSMIZheMgVO+8udfaUFEhA=;
 b=FVmGLFbwpx+Y25vTRBpXdViAH8G2T6SN5vY8s0ySAtOZ69nLPdUc0JFTPyMU3AOKeP
 cHKnCJlWc0X+xW1bMcvG8h33qtwInO4CeCsJaxJ2wdthRSlpS8UeGoejMJKh+AMI3/KI
 zjc4+vu14NZhqsrYQfo8LnBYEwRrrWSZ8d/5b3KnnmjPBud7wEPM04NlSbH6wKn6/1T5
 1757TBnDP+675/MQa1TjcQ8H2hj8LxuRh07LMH7zWRuaJRSUxAj7IUeXSSqA0gx2KWP9
 kZPXgzZbsu/KsuZPmOsi5ZcczEdj9inhC5SdIAjciwAB9hmj/OIrEQVN1pJB5gUG6lPD
 0mww==
X-Gm-Message-State: AOAM530eLuIA3Hmhrcs1nV9WRfBgPRBAB00RMPG943efnRvENO9Ltdk2
 bjeLjLUnLQnjoyrAkv4gC02cbPzLsTjo9oqNeXA=
X-Google-Smtp-Source: ABdhPJzmUAhskEMJMcCtJ8j3JnStIVXdACrsqSv1JVkoISUUXzUrO/vK2clj0h978rDhlNppkpd4b1q4FHaP5RHRX98=
X-Received: by 2002:a2e:83c7:: with SMTP id s7mr12235681ljh.68.1591644843450; 
 Mon, 08 Jun 2020 12:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <1590947491-11194-1-git-send-email-jrdr.linux@gmail.com>
 <7e725dd0-7423-b85b-ff56-9705419d13b9@nvidia.com>
 <CAFqt6zbsNcHWF-0Na2xMKdJQs2kVkLHTCw=cytvdo+z-axx97Q@mail.gmail.com>
 <20200608191459.GZ30374@kadam>
In-Reply-To: <20200608191459.GZ30374@kadam>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 9 Jun 2020 01:03:51 +0530
Message-ID: <CAFqt6zYqnRWYSKoZ2yAdcAK7WWa311Mmmc3Y3dm8CO9r79ZtYg@mail.gmail.com>
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: Convert get_user_pages() -->
 pin_user_pages()
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Bharath Vedartham <linux.bhar@gmail.com>, harshjain32@gmail.com,
 John Hubbard <jhubbard@nvidia.com>,
 =?UTF-8?Q?Simon_Sandstr=C3=B6m?= <simon@nikanor.nu>,
 linux-kernel@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 jane.pnx9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 9, 2020 at 12:47 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Jun 09, 2020 at 12:31:42AM +0530, Souptick Joarder wrote:
> > > > @@ -189,10 +192,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> > > >       sg_free_table(&acd->sgt);
> > > >    err_dma_map_sg:
> > > >    err_alloc_sg_table:
> > >
> > > So now we end up with two unnecessary labels. Probably best to delete two of these
> > > three and name the remaining one appropriately:
> >
> > Hmm, I thought about it. But later decided to wait for review comments
> > on the same in v1.
> > I will remove it now.
>
> These are all unrelated to pin_user_pages().  Please don't do it in the
> same patch. Staging code is there because it's ugly...  If you don't
> want to do unrelated changes to label names then you don't have to.

What I am planning is to put this changes in a series. One patch will take care
of pin_user_pages() related changes, 2nd patch will take care of minor bug
fix in error path + level correction and 3rd patch
will take care of set_page_dirty() -> set_page_dirty_lock().

Does it make sense ?

>
> Also on a personal note.  The label name should say what the goto does
> just like a function name says what the function does.  "goto put_pages;"
> Or "goto free_foo;".
>
> Don't do this:
>
>         p = kmalloc();
>         if (!p)
>                 goto kmalloc_failed;
>
> This is a come-from label name and does not provide any information that
> is not there on the line above...
>
> If you send a patch which uses your own personal style of label names,
> I won't say anything about unless there is a bug.  But just know in your
> heart that you are wrong and I have silently reviewed your patch to
> drivers/staging.
>
> regards,
> dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
