Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A693210A2
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 07:02:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B312C83841;
	Mon, 22 Feb 2021 06:02:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8HBv7FQoJEHO; Mon, 22 Feb 2021 06:02:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57720837B6;
	Mon, 22 Feb 2021 06:02:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A80561BF3C2
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 06:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 978EC6F526
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 06:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aEa8flH86EMp for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 06:02:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D5726F51A
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 06:02:04 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id n20so1324530ejb.5
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 22:02:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ykFLf5yWwe+sB4RX2ZVcOTxdgfkTPnzYuHv9v6HvKj8=;
 b=GKqAXrwFcpuQIckBNEBdQYXE4RdBx69vbXnThrCF16jLDFDb7YeZteKLe+y+oAwCcg
 8qqzPUBDkV0umkaYeOutYnc78SRB8rB6dXUxfsQBSLPZ5fFvrux5Vqp6AKbV2I4YAcaf
 CruDyTtNgDB+I4WiVx8LKhAWu/n2KlmYB5EsuR8XtNc6h9/gXj3yNYjP9g+jGzqjZ+/U
 KBc4ETDju8IUzU0FPDbb46aJVRmm7APvlS3xdiqGq2CqxVp/4Zw44OlLWXBS6I5AvCHE
 hEAzqu9ZLfJXML8udyQpgDFbDTTg0geaWVqCc0Fn7RBZkTs+YQwgpKrfxdyBUufMJwKJ
 yhnA==
X-Gm-Message-State: AOAM530fqWTLAD24bMRFWoAMfNDKRx/C1e0KGvKoKspHrFiG33UuiE6J
 XEASwynve6CvBFyp9u6ky0iyBGXmm97vwg==
X-Google-Smtp-Source: ABdhPJxx6/39Lm9Uwq6vWdvHYcgheWHuR2uCcb8OoyPpOumYkVcetznUlijRkGeeU0kYys7wA4PjPQ==
X-Received: by 2002:a17:906:380c:: with SMTP id
 v12mr19276090ejc.65.1613973722683; 
 Sun, 21 Feb 2021 22:02:02 -0800 (PST)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com.
 [209.85.208.49])
 by smtp.gmail.com with ESMTPSA id t8sm3944206edv.16.2021.02.21.22.02.02
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 21 Feb 2021 22:02:02 -0800 (PST)
Received: by mail-ed1-f49.google.com with SMTP id h25so6677944eds.4
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 22:02:02 -0800 (PST)
X-Received: by 2002:aa7:d8da:: with SMTP id k26mr20950996eds.364.1613973722162; 
 Sun, 21 Feb 2021 22:02:02 -0800 (PST)
MIME-Version: 1.0
References: <YDDzqPT81QBGpTBB@karthik-strix-linux.karthek.com>
 <20210222054029.GF2087@kadam>
In-Reply-To: <20210222054029.GF2087@kadam>
From: karthek <mail@karthek.com>
Date: Mon, 22 Feb 2021 11:31:48 +0530
X-Gmail-Original-Message-ID: <CAJ5zXr0_QE6JLZ+rGeoaETexqvhS7LXdtAH3fqpZ=i1zxQJUYg@mail.gmail.com>
Message-ID: <CAJ5zXr0_QE6JLZ+rGeoaETexqvhS7LXdtAH3fqpZ=i1zxQJUYg@mail.gmail.com>
Subject: Re: [PATCH] staging: wimax: fix sparse incorrect type issue
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Mukul Mehar <mukulmehar02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 22, 2021 at 11:10 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Sat, Feb 20, 2021 at 05:04:00PM +0530, karthik alapati wrote:
> > fix sparse warning by casting to explicit user address-space
> > pointer type
> >
> > Signed-off-by: karthik alapati <mail@karthek.com>
> > ---
> >  drivers/staging/wlan-ng/p80211netdev.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> > index 6f9666dc0..70570e8a5 100644
> > --- a/drivers/staging/wlan-ng/p80211netdev.c
> > +++ b/drivers/staging/wlan-ng/p80211netdev.c
> > @@ -569,7 +569,7 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
> >               goto bail;
> >       }
> >
> > -     msgbuf = memdup_user(req->data, req->len);
> > +     msgbuf = memdup_user((void __user *)req->data, req->len);
>
> This doesn't fix anything it just silences the warning.  Linus Torvalds
> worked very hard to create Sparse for the express purpose of printing
> the warning.  People don't realize that warnings are very valuable
> because they show where the bugs are.
>
> Please look at this some more and figure out how to fix the warning.
>
> To be honest, I'm tempted to not accept any patch which doesn't also fix
> the buffer overflows when we pass:
>
>         result = p80211req_dorequest(wlandev, msgbuf);
>
> How do we know that "msgbuf" is large enough?
>
> regards,
> dan carpenter
>

Thanks dan but right after sending this patch i immediately replied to
it stating
to ignore this patch as i found this already applied in staging-testing branch
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=3a8a144d2a754df45127c74e273fa166f690ba43
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
