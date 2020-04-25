Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA551B86C7
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 15:34:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B2CF722851;
	Sat, 25 Apr 2020 13:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUPjsayXPDQS; Sat, 25 Apr 2020 13:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3ABC32039B;
	Sat, 25 Apr 2020 13:34:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5672E1BF30E
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 13:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FE6C2039B
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 13:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSiaMoZ7HWep for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 13:34:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by silver.osuosl.org (Postfix) with ESMTPS id CE99020369
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 13:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587821640;
 bh=IHJr0EedB5g0v4EzA2wx0bNnO9PYSjipPdPGkVa4SwU=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=f4JVweYjLw53F+uNpzUpE2HiBzszaSwE1tAPftFGZbZmSQZVo7kF/Ko7XaQnP7Fum
 6ZQrvlhCQ+lBZyLEOGVQ+ugAqTlA9V8McyeUBywP8Qlslr84zdTnVbTSLOO80q+PMQ
 b+DsKvTO0XAA516wrHuxdheSHidO2EmtdUEwBJnw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N4QsY-1j1YhK15aY-011SPq; Sat, 25
 Apr 2020 15:34:00 +0200
Date: Sat, 25 Apr 2020 15:33:45 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 0/2] staging: vt6656: Check the return value of
 vnt_control_out_* calls
Message-ID: <20200425133345.GA3213@ubuntu>
References: <20200423153836.5582-1-oscar.carter@gmx.com>
 <20200425105626.GA2071483@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425105626.GA2071483@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:KXBYBCq2DCQlw3hPhjG7bnN9XK+vmznMHfD1l/dURAheFhBu1dL
 9/+ahVPvXZISDT+0glhxM/rLKOeJBzMwoeD3qFc4vOkz834ohoMf+kMe1F1250ACaZif7OM
 yZxZriAm7QGiyJU0aRDe03SvDdNrPeSoIObEh1xlzKR2JvtTLRDTF9Ay0aV72alS6GB16JR
 /TpHerwHqQc6bg8bxVIuw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:zNIjFPpz60s=:R2DLJ+tTejcjTD/tSOEl59
 6lN4YIFMLvk+eMiU9R9fCUWY8CzZkfWsfs4es8tjPxKDxZEtNRfZYFt3Z+cIM3v+bqqCwf1B+
 auPEaCHgHKPH4DxDPlwdfYwbB7A+1B+7eJqmR17yotv1qiMpbOrw1wVHH4aCgJWgsIk970wXK
 sC7HmLo6SnYKGSAVcF30deQkNLyRLwlPULNfclCPJANp1+1T723+01YfM9DeN7t6Q0JNeK4AA
 ihnishmzciGf25vQTzCMXvFhcQr/ZUC4DCjIIdlX4fYFNUVxw/m3HLi62TXgzIdyPgza9CkqC
 TlPgoDgz+lA09C62fyh6CUjORUswU5jfDdHmDgcfx+nnsy1Cszt1M6yfJ7xrS7mJkULz7o3UE
 aNNBBErEtLjo4ucSP7ZhjISKtFflkCjw1fjaAECAlZ+gHdF7Z/PZ3EsZzT1kQSDN0+M7SR30m
 mzite2idKAzDExIj05db8CFdg0qcC9y7JjKcKCGVOty5fpTgV2QgGkhs9b1w6wg6nOAN22SZ9
 D6XVBQHsgbzQ4nnMltjeu/10kINKq+lzavq4emqX28oM1aU+dsJjFkDBxReJ4s8z8QnKdzWaJ
 y7OCbR43RBX8l04w2RYgQ319Ngp2kFlz61UqD3vimpsbuWiHKkDaOhV8pIVAIIkk1niOJIr2X
 Xw8a+inpwgtdGlO5SnA5/BNlHH7Ek2PEo0ERykb4HxwB6Py5pItdD46MR9n0DL1jEj551o3HT
 g49NNH0STwnKC2rqvYumpL0TZaAEzEPL9KJ1m2oiaG/LuItmJBGobQK0HBBFIHeIJGj5GlkgC
 ENKNQKj9Bz/j0sEY+8u8hZylLhcUEpaqdFck1qnF41llIA+mizGNBj28TpfniwAnSXWlwkb/P
 8euALhf7Vmpm6bL53qlbRGgjQb8GIvJSgEJn0yNMFqi3CKJZpLhOwsnBW5F//bc0ua6Lsl0aY
 qlxxeuWFrZDadfdGDWI7zVwivqAQgjmau/OWJQT1Ur9mLw82rqjtcH4owv66kGrjYiAqw9fqO
 2E722y3BTwOQfaDVj+O1w02Z1p8T2BVQM0MlmVqSHBSObuL3hI+gTo5MeasfFi6ZgdO18rGTm
 kJAqfGzvzIpjbO9vwLc7C6oF7Qg32vNEuORxLrs2tyZD/xaVzOfIzHO4RnC9YdZM4iIhCzQq3
 M7kPG4wodVcyKJL5SZScSzYSGbhyrHIVbadeMVaM6lSkaS18n6imARFllzzsvLdBdvNS5Nzql
 mLqbJsEZGawvyPRUy
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
Cc: devel@driverdev.osuosl.org, "John B. Wyatt IV" <jbwyatt4@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, Malcolm Priestley <tvboxspy@gmail.com>,
 linux-kernel@vger.kernel.org, Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 25, 2020 at 12:56:26PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Apr 23, 2020 at 05:38:34PM +0200, Oscar Carter wrote:
> > This patch series checks the return value of vnt_control_out_* function
> > calls.
> >
> > The first patch checks the return value and when necessary modify the
> > function prototype to be able to return the new checked error code.
> >
> > The second patch removes the documentation of functions that their
> > prototype has changed as the function names are clear enought. Also,
> > the actual documentation is not correct in all cases.
> >
> > Changelog v1 -> v2
> > - Remove the function's documentation instead of fix them as suggested
> >   Malcolm Priestley.
> >
> > Changelog v2 -> v3
> > - Rebase against the staging-next branch of Greg's staging tree.
>
> Are you sure?  It still doesn't apply :(
>
> Please try again.
>
Ok, I will try again.

> thanks,
>
> greg k-h

thanks,

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
