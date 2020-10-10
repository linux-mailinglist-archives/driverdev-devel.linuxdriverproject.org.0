Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E2128A086
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 15:18:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94BA82049E;
	Sat, 10 Oct 2020 13:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmkLdmCgluJK; Sat, 10 Oct 2020 13:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4589620488;
	Sat, 10 Oct 2020 13:18:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E347F1BF271
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BA2702047D
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RHCrPd-1QR9U for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 13:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id 21DFE203E2
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 13:18:33 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09ADBttA106263;
 Sat, 10 Oct 2020 13:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=teUTVOba2iGBVDpvjfpiEVZNYULjl/b3B311LmBLjHA=;
 b=fU4ehnUoC/0KczFjZe5afevFBI459x9ARKCtf0XgZuF/nRHZefu8d2mdi+2F7nyK/nUZ
 GpxyzZVdHeazyaXzxPfuBm4y+/SCUJO510/6GU4iYgaubIl6pzp+T9Kx8Tv1IJUD131j
 Y38MjH1FQL6hkihC8TLQ9NrfskZBcVeEdPZ5SyGrQj+8atpx6ksJ6JyY8EvDmjFQym0j
 BtvFvCM6WkTcp8PL6GR0AfdodzhrBds3hAHM07fmT0DuuKSdfoQPwYUzWzwqzhbrSCB+
 qHFi67EYyAv/WsQXrimnTIOOCoWq6OMGHVuuQw0txI2TeQ77l54IsWw2NNSTF6pBeBdj 1w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 3432fa8v55-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 10 Oct 2020 13:18:22 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09ADFTqJ017203;
 Sat, 10 Oct 2020 13:18:22 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 343309jjk4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 10 Oct 2020 13:18:22 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09ADIIHf030406;
 Sat, 10 Oct 2020 13:18:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 10 Oct 2020 06:18:17 -0700
Date: Sat, 10 Oct 2020 16:18:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 2/8] staging: wfx: check memory allocation
Message-ID: <20201010131810.GS18329@kadam>
References: <20201009171307.864608-1-Jerome.Pouiller@silabs.com>
 <20201009171307.864608-3-Jerome.Pouiller@silabs.com>
 <874kn31be2.fsf@codeaurora.org> <2852079.TFTgQsWz4P@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2852079.TFTgQsWz4P@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9769
 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 bulkscore=0 mlxlogscore=999 suspectscore=2 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010100125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9769
 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 impostorscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 mlxscore=0 mlxlogscore=999 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010100124
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 02:07:13PM +0200, J=E9r=F4me Pouiller wrote:
> On Friday 9 October 2020 20:51:01 CEST Kalle Valo wrote:
> > CAUTION: This email originated from outside of the organization. Do not=
 click links or open attachments unless you recognize the sender and know t=
he content is safe.
> > =

> > =

> > Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> > =

> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > Smatch complains:
> > >
> > >    main.c:228 wfx_send_pdata_pds() warn: potential NULL parameter der=
eference 'tmp_buf'
> > >    227          tmp_buf =3D kmemdup(pds->data, pds->size, GFP_KERNEL);
> > >    228          ret =3D wfx_send_pds(wdev, tmp_buf, pds->size);
> > >                                          ^^^^^^^
> > >    229          kfree(tmp_buf);
> > >
> > > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > > ---
> > >  drivers/staging/wfx/main.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> > > index df11c091e094..a8dc2c033410 100644
> > > --- a/drivers/staging/wfx/main.c
> > > +++ b/drivers/staging/wfx/main.c
> > > @@ -222,12 +222,18 @@ static int wfx_send_pdata_pds(struct wfx_dev *w=
dev)
> > >       if (ret) {
> > >               dev_err(wdev->dev, "can't load PDS file %s\n",
> > >                       wdev->pdata.file_pds);
> > > -             return ret;
> > > +             goto err1;
> > >       }
> > >       tmp_buf =3D kmemdup(pds->data, pds->size, GFP_KERNEL);
> > > +     if (!tmp_buf) {
> > > +             ret =3D -ENOMEM;
> > > +             goto err2;
> > > +     }
> > >       ret =3D wfx_send_pds(wdev, tmp_buf, pds->size);
> > >       kfree(tmp_buf);
> > > +err2:
> > >       release_firmware(pds);
> > > +err1:
> > >       return ret;
> > >  }
> > =

> > A minor style issue but using more descriptive error labels make the
> > code more readable and maintainable, especially in a bigger function.
> > For example, err2 could be called err_release_firmware.
> > =

> > And actually err1 could be removed and the goto replaced with just
> > "return ret;". Then err2 could be renamed to a simple err.
> =

> It was the case in the initial code. However, I have preferred to not
> mix 'return' and 'goto' inside the same function. Probably a matter of
> taste.
>

Ideally you can read a function from top to bottom and understand with
out skipping around.  Imagine if novels were written like that "goto
bottom_of_page;" but then at the bottom it just said "Just kidding".
"return ret;" is more readable than "goto err;"

These sorts of rules where "there is only one return per function" are
meant to make people think about cleanup before returning.  But most of
my work is in error handling code and it doesn't help.  If people don't
think about cleanup, changing the style won't make them start thinking
about it.  There was one driver which was written with locked code
indented one tab and the inventor of that style still introduced a
locking bug in his code.

	spin_lock(); {
		frob();
		frob();
		if (ret)
			return ret;  // <-- forgot to unlock;
		frob();
	} spin_unlock();

Btw, I have created a new Smatch check to find unwind bugs.  It's called
check_unwind.c and it's easy to add new alloc/free pairings to that
code.  This is the best way to prevent unwind bugs.  The style changes
don't make a measurable difference in real life and they make the code
messy.

And GW-BASIC label names are a pox upon the earth.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
