Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF404F56E
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 12:59:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB50381FA0;
	Sat, 22 Jun 2019 10:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSTUgkvqzgzP; Sat, 22 Jun 2019 10:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76D1881D87;
	Sat, 22 Jun 2019 10:59:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE7251BF20D
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 10:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB19281B87
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 10:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B1K4fAdeUaFX for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 10:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B2F681B72
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 10:59:04 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90F2E2070B;
 Sat, 22 Jun 2019 10:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561201144;
 bh=xCov3n+vVgxiEJrOvTFgrxXtp1jxZHWTifXs1Kued78=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JflgTq93DHvJsBs9KZsE4pfr6HhNO5f5igz5LyQ9l83Ad+iYEKNHNWkA56EYQkSxy
 XnK7Ud++qZ3+eHf+5ehYJ5m2ph4BkeOLwqG4lYnipWQaOAVFIzePGg7bNSdAYsZ28b
 W/cKvQq72CDGjwZPGvhL5oJVCaHsuK/YNYE0l41g=
Date: Sat, 22 Jun 2019 11:58:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: iio: ad7150: use ternary operating to ensure
 0/1 value
Message-ID: <20190622115858.21ceef2d@archlinux>
In-Reply-To: <20190617084033.GG28859@kadam>
References: <20190614165059.7bifufvhxofy6ybu@smtp.gmail.com>
 <20190616111516.1af0d41b@archlinux> <20190617084033.GG28859@kadam>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, Melissa Wen <melissa.srw@gmail.com>,
 Stefan Popa <stefan.popa@analog.com>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 17 Jun 2019 11:40:34 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> On Sun, Jun 16, 2019 at 11:15:16AM +0100, Jonathan Cameron wrote:
> > On Fri, 14 Jun 2019 13:50:59 -0300
> > Melissa Wen <melissa.srw@gmail.com> wrote:
> >   
> > > Remove idiom and use ternary operator for consistently trigger 0/1 value
> > > on variable declaration.
> > > 
> > > Signed-off-by: Melissa Wen <melissa.srw@gmail.com>  
> > Hi Melissa,
> > 
> > In general I would consider this unnecessary churn as, whilst
> > it's no longer a favoured idiom, it is extremely common in the
> > kernel.  
> 
> It's still my favourite...  Why wouldn't people like it?  It feels like
> last week I just saw someone send a bunch of:
> 
> -	foo = (bar == baz) ? 1 : 0;
> +	foo = (bar == baz);
> 
> patches and I thought it was an improvement at the time...

That one is nice enough, it's the !! that Linus came out fairly
strongly against though not sure I can find the particular email. 
That one is a fairly kernel specific idiom that I'll be honest I've
rarely seen elsewhere ;)  I remember wincing at the thread
on this as it was an idiom I personally rather liked.

In cases where it doesn't matter because foo doesn't need to 1 or
0 then what you have is nice and clean.

I can't say it's one I care that much about, but I am happy if code
that happens to be under cleanup anyway has this little bit made
the 'preferred style'.  There is something to said for consistency.

Jonathan


> 
> regards,
> dan carpenter
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
