Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364ED318890
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C4ED87585;
	Thu, 11 Feb 2021 10:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id km7i7n3oVqkE; Thu, 11 Feb 2021 10:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7FEC87561;
	Thu, 11 Feb 2021 10:50:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC6551BF9B5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63C7E6F52A
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zLOhNFmP1BYp for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:50:54 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 126516F53B; Thu, 11 Feb 2021 10:50:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F04D36F52A
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:50:46 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id b9so9290641ejy.12
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:50:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V0m6ZYdNg9bPuLZo7iX6eWN4cNFxLWh6FNh/M1D/UdU=;
 b=sd9TcOWnNtnpjPCYYOY4yfjzt75E4oJLkl5Z0jklGLuPNZHhdyVlq6t3gGQcCG912U
 rLfo7RKFVlMDKpTezxIgAmvS9dNaBSC5m0iLZjFPibyVdbpWNHVrxaLz7GMNL8ytJOuR
 PNHBZdODCCTX0KXGJcc6Vh9S3q6fTkmIczPrfEJBIPyGATF+YP0fMiqy4HsU3PJL322B
 TCTRQEG87b5TLnIUT+bLO/UfnMfSoJUCvH2sQUJ3h5JvzyZwbX01bmXOkxsP75970dfM
 AeYDxtt5hUqLQ7jAg7jnlJuqTpD5GNr6eKmXkENOjsup14JaoYhwpU6o+ZV75Mn1DnS1
 om6w==
X-Gm-Message-State: AOAM530+0UnxMiP2ubS/Sk27YiQgKJhcfKlJcZo6gCj5uisa+FwmKnpm
 2/G69I4S4TcjUtN2WaLf2LITH44cMKBnTg==
X-Google-Smtp-Source: ABdhPJzaRYJiJj3LDNtPoUFqyIeakxc7hBTeoVt40x0CAG0W/Jv4qneecP0kjwBQgE1VKPmqBJ6bPQ==
X-Received: by 2002:a17:906:93f0:: with SMTP id
 yl16mr7662385ejb.430.1613040643082; 
 Thu, 11 Feb 2021 02:50:43 -0800 (PST)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com.
 [209.85.218.42])
 by smtp.gmail.com with ESMTPSA id u27sm3934782edi.79.2021.02.11.02.50.42
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Feb 2021 02:50:42 -0800 (PST)
Received: by mail-ej1-f42.google.com with SMTP id l25so9332486eja.9
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:50:42 -0800 (PST)
X-Received: by 2002:a17:906:b055:: with SMTP id
 bj21mr8020838ejb.355.1613040642341; 
 Thu, 11 Feb 2021 02:50:42 -0800 (PST)
MIME-Version: 1.0
References: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
 <20210211075715.GD2696@kadam>
 <CAJ5zXr3ONFFHL7g8Xt=BjM9SJK16HEwiqhkBPTbrBTwa=DDqog@mail.gmail.com>
 <YCUK6Bi9lFziF6qG@kroah.com>
In-Reply-To: <YCUK6Bi9lFziF6qG@kroah.com>
From: karthek <mail@karthek.com>
Date: Thu, 11 Feb 2021 16:20:30 +0530
X-Gmail-Original-Message-ID: <CAJ5zXr26co5c5kCFqGN2Rt3Kbk+i5GKAsvzgF-4Zz3jg0xZ+bw@mail.gmail.com>
Message-ID: <CAJ5zXr26co5c5kCFqGN2Rt3Kbk+i5GKAsvzgF-4Zz3jg0xZ+bw@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: remove obsolete commented out code
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 4:16 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> A: http://en.wikipedia.org/wiki/Top_post
> Q: Were do I find info about this thing called top-posting?
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
>
> A: No.
> Q: Should I include quotations after my reply?
>
> http://daringfireball.net/2007/07/on_top
>
> On Thu, Feb 11, 2021 at 04:00:04PM +0530, karthek wrote:
> > Should i send them as patch series?
>
> Please do.
>
> thanks,
>
> greg k-h

Yeah, it is clearly mentioned in lfd103 which i do remember
but i want you to know that it's purely accidental
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
