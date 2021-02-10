Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C38316A62
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 16:40:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 461926F479
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 15:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fSa7n4HhdCw0 for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 15:40:01 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 939646F79F; Wed, 10 Feb 2021 15:40:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F3206F8EB;
	Wed, 10 Feb 2021 15:38:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A5201BF2F1
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01CC76EAA1
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GqQoJhP58fZi for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 15:38:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 985A56F8D7; Wed, 10 Feb 2021 15:38:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18DBB6F710
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 15:36:36 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id e9so1353194pjj.0
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 07:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AExeMbU6/3BxOHLnhv3fYTbsrsNViVB+RCtpeImP3T8=;
 b=b3Ae+56yg1cB1V8FTSmCrOT0NAYqlRdeUMT2k/4uSx5NA5k10+m8hcnijT2xXmt9QH
 h9O15ZWnBdAf/0UBAhiQRKMmV4ZMpBiLv4i1uXHJ6X8ew9qUQecxzNDMCJ1Ie8absEa2
 BurQ2T+PVNOwhQZrApTAZF8jtbZvqvFGKclqEBjR6JIxSLOSsCsGNhk5pMq41xQVv6gi
 Jsx8vhiJGkSKGQuqEwSN8mQnt+zCsGWJeegTi69txmqy94HKS5vaCD2GrIMDdY6Ddu6C
 1nHXcjjtMhHjRV+cyv5SxHN645T5UmvjxGHseSIcUKDpeY0kWxIRJjD7ouM15B+ZilUI
 /SIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AExeMbU6/3BxOHLnhv3fYTbsrsNViVB+RCtpeImP3T8=;
 b=iM9xQM/z6iag+QJYKVLak0g0KRaLAYTvBgAbf2wjRaNNI9wUStKcAN/3YAV/j7zWQ0
 DXQbMCQe9qCvYAWOYMZzaptqg6JaA5D5IuH1CyYJ7iRA768S5VTbQpg3IbyA6FpID92S
 pQRTUM8XcciBZeFSWjpWLZE3RAE0p+h7Qr/eyWmAypSKsFYg+01mraFcyu6a7aWudiLL
 Dt+gSwhrwTMeC6Ade+nGYfi/NZC7Qj4uqP44RCyrtDGdZKBqOfi2glqgsjvt/vQmyAre
 rJQVlkcs/6Nrsby9+a6dxM3A/ZP4qzE8zErK95hTf6nlhYfQcq+tkqqT7IRBkjzxO4Zg
 kIkw==
X-Gm-Message-State: AOAM5325I5HGiMBp3OnMHTfpSFq47FOhUfWNxGUpUEyRN59u4PKXvPok
 OJ4VzIT9OR0LzC/efETT/TY=
X-Google-Smtp-Source: ABdhPJwyfWnpxMVVCqKFPkQcSKqZvbs0LaPo4DQFOW+BgK9wBo3szV3izhRJt4FsVlgJ6AXy6glWZw==
X-Received: by 2002:a17:90a:4598:: with SMTP id
 v24mr3520249pjg.135.1612971396414; 
 Wed, 10 Feb 2021 07:36:36 -0800 (PST)
Received: from localhost ([103.200.106.135])
 by smtp.gmail.com with ESMTPSA id k69sm2841896pfd.4.2021.02.10.07.36.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 07:36:35 -0800 (PST)
Date: Wed, 10 Feb 2021 21:06:21 +0530
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3] staging: gdm724x: Fix DMA from stack
Message-ID: <20210210153621.3nmwsegn5a7mb5v5@archlinux>
References: <20210210142512.23152-1-ameynarkhede03@gmail.com>
 <YCPz7jy6BLRzmvU3@kroah.com>
 <20210210150133.chf4gwefgcvaewnd@archlinux>
 <20210210151924.GA20820@kadam>
MIME-Version: 1.0
In-Reply-To: <20210210151924.GA20820@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3016451356878620383=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3016451356878620383==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jyslrfw62hrxq7ip"
Content-Disposition: inline


--jyslrfw62hrxq7ip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 21/02/10 06:19PM, Dan Carpenter wrote:
> On Wed, Feb 10, 2021 at 08:31:33PM +0530, Amey Narkhede wrote:
> > On 21/02/10 03:55PM, Greg KH wrote:
> > > On Wed, Feb 10, 2021 at 07:55:12PM +0530, Amey Narkhede wrote:
> > > > Stack allocated buffers cannot be used for DMA
> > > > on all architectures so allocate hci_packet buffer
> > > > using kmalloc.
> > > >
> > > > Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> > > > ---
> > > > Changes in v3:
> > > > 	- Remove superfluous buf pointer
> > > > 	- Reduce size of allocation of hci_packet to match number of
> > > > 	bytes used for DMA
> > > >
> > > >  drivers/staging/gdm724x/gdm_usb.c | 10 +++++++---
> > > >  1 file changed, 7 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> > > > index dc4da66c3..80c58a3ef 100644
> > > > --- a/drivers/staging/gdm724x/gdm_usb.c
> > > > +++ b/drivers/staging/gdm724x/gdm_usb.c
> > > > @@ -56,20 +56,24 @@ static int gdm_usb_recv(void *priv_dev,
> > > >
> > > >  static int request_mac_address(struct lte_udev *udev)
> > > >  {
> > > > -	u8 buf[16] = {0,};
> > > > -	struct hci_packet *hci = (struct hci_packet *)buf;
> > > > +	struct hci_packet *hci;
> > > >  	struct usb_device *usbdev = udev->usbdev;
> > > >  	int actual;
> > > >  	int ret = -1;
> > > >
> > > > +	hci = kmalloc(5, GFP_KERNEL);
> > >
> > > Why "5" and not:
> > > 	hci = kmalloc(sizeof(*hci), GFP_KERNEL);
>
> 5 is correct and sizeof(*hci) is 4.  The hci struct ends in a zero
> element array.  You could do:
>
> 	hci = kmalloc(struct_size(hci, data, 1), GFP_KERNEL);
>
> I'm not sure it's more readable.  But you still will have to resend
> because the patch passes "&hci" to usb_bulk_msg() instead of "hci" so it
> will corrupt memory.
>
> I always encourage people to write the patch and then sit on it over
> night and send it the next day.
>
> regards,
> dan carpenter
>
Yes I was about to send patch with kmalloc(sizeof(*hci) + sizeof(u8)).
Now I'll take your advice and send the patch tomorrow.

Thanks,
Amey

--jyslrfw62hrxq7ip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEb5tNK+B4oWmn+0Z9BBTsy/Z3yzYFAmAj/XQACgkQBBTsy/Z3
yzbaowgAmz+E/S2FJPQNOQbR3rn7hOqy0HcAUM5WNjZ8Q4Qnd5+K28z5mr1M47or
VFNNjtfq1pr46zPGUUm3sIsd+nfYkun5Ya+KlV6nbsw5uUqnUKQktietlN25k7No
MkEEze4w8FLZ55tgW0SuHPR+iAR++1FZuMDgDmJhlWJYN/oiHBqgq6TsRsRi3sT0
pev8ihSRzZRERb+msPAX8URUT+6qC+r7iHNMFfU9k9SpUBf1KRtzmab4F6+nZwRp
WUEeALP6HrKiMfWs6+74Hyp+MCyhHTOQ+BgUs5O51DKXT07NGf4BdfdAW+UwO1Ws
3grFxtVbeqWgnDKlWPCgOX0CEeuiGA==
=6vKP
-----END PGP SIGNATURE-----

--jyslrfw62hrxq7ip--

--===============3016451356878620383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3016451356878620383==--
