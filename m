Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 707233161A1
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 09:59:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12A3F6F5FC
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 08:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 795ghy3wSUie for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 08:59:19 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id A08076F5A9; Wed, 10 Feb 2021 08:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CD596F67A;
	Wed, 10 Feb 2021 08:58:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A6CA1BF330
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2551E8481F
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sDxdl4XZ-DlK for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 08:58:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8EFD4847E5
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 08:58:27 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id my11so2639241pjb.1
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 00:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=L0/WCK79u4jPyX14Fa6fB/Tf2pwYkuo5vf8cwq7WihA=;
 b=VvoSMbIBtE6TwgFr+sI9fVN0TDY69YNtnXI0+mFoPmPmSbcW0Dy6UQqwWyl8/3CVZb
 v/om2TUK0Rk+/ZF36X+uZHXx2IYC2445yUtMqZFTaor92hX/MrSvIZEhKypAr4iWoXjQ
 Go/fqKnqSxSDP7hHCNBJTUfgrdEIfe4ssbqlE4VsDAAwDp0mHnUNHG6B+vB0S581FxNt
 wmKHN5oHz1A7rqySv3B4Df8QdZhXHGMJZ6Tj7jx9DgNQUFy4tf39eSN8MF2sj+9LEen8
 Xu4rNqWSnWhtkeaKfhnOsZsyrPXgcTqfCmEJVcFP7AOv+lcjVQv2tPK1EkZ0X9jzNP4C
 ccGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=L0/WCK79u4jPyX14Fa6fB/Tf2pwYkuo5vf8cwq7WihA=;
 b=JxS9RbaC9l5RIvZLYMBu4vU0WduPn0xw8aGWHUl2nMe/am0vuVLPUTdEfJmjMrqqRU
 xpGKM9FVx8M/NAUaC85q2DNoiaEebdUk5BVX6vF+axIGeG9173m3OolSE6BDeLPdjYPk
 jZRgcpEwjRnrs3FnljqGlax7dpouSGFJzPPUvJSIfWmk7+iCFzc3kpyoz9Jk39p93oh5
 yszAh0HCf6Pl6nW9gt+IIV53ekS1HNCRKrqPoodL8UQqIW+wHzABJOurTxi4iaNDvQJ+
 21hKlciZxJntS1vR88FcPUU3hyiackuhEj3aJODuWY4JMVtqHZXx+XQYP3J7HeaqWwo3
 ilpg==
X-Gm-Message-State: AOAM533kIaFYV+2mtj9LZQP8mGraithcREbEsfvxC3BwD1Eux17iVWaD
 R0lnjND4QJSaxOqCZzcPtfgCLqDSLL0=
X-Google-Smtp-Source: ABdhPJyn66NKIEHIu0/ohiieMG0WLN8hvyCkuHxiliUEDHK1mjF/X2r04ZICF2ODInM8tHKAlOH9aw==
X-Received: by 2002:a17:90b:4a03:: with SMTP id
 kk3mr2120826pjb.206.1612947507189; 
 Wed, 10 Feb 2021 00:58:27 -0800 (PST)
Received: from localhost ([103.200.106.135])
 by smtp.gmail.com with ESMTPSA id y2sm1450272pfe.118.2021.02.10.00.58.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 00:58:26 -0800 (PST)
Date: Wed, 10 Feb 2021 14:28:11 +0530
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: gdm724x: Fix DMA from stack
Message-ID: <20210210085811.7dunnfly6cqw67m3@archlinux>
References: <20210210080134.1978-1-ameynarkhede03@gmail.com>
 <YCOUIFVuvJuPP3lX@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YCOUIFVuvJuPP3lX@kroah.com>
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
Content-Type: multipart/mixed; boundary="===============5949371824822717638=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5949371824822717638==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="imubcj7qugnas5hs"
Content-Disposition: inline


--imubcj7qugnas5hs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 21/02/10 09:06AM, Greg KH wrote:
> On Wed, Feb 10, 2021 at 01:31:34PM +0530, Amey Narkhede wrote:
> > Stack allocated buffers cannot be used for DMA
> > on all architectures so allocate hci_packet buffer
> > using kzalloc().
> >
> > Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> > ---
> > Changes in v2:
> > 	- Fixed build warning
> > 	- Fixed memory leak using kfree
> >
> >  drivers/staging/gdm724x/gdm_usb.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> > index dc4da66c3..c4a9b90c5 100644
> > --- a/drivers/staging/gdm724x/gdm_usb.c
> > +++ b/drivers/staging/gdm724x/gdm_usb.c
> > @@ -56,11 +56,15 @@ static int gdm_usb_recv(void *priv_dev,
> >
> >  static int request_mac_address(struct lte_udev *udev)
> >  {
> > -	u8 buf[16] = {0,};
> > -	struct hci_packet *hci = (struct hci_packet *)buf;
> > +	u8 *buf;
> > +	struct hci_packet *hci;
> >  	struct usb_device *usbdev = udev->usbdev;
> >  	int actual;
> >  	int ret = -1;
> > +	buf = kzalloc(16, GFP_KERNEL);
>
> checkpatch did not complain about this?
No. checkpatch shows no errors and warnings.
>
> And why do you need 'buf' anymore now?  Why not just allocate hci and
> pass that to the request instead?  Saves you an extra cast and an extra
> pointer.
>
> thanks,
>
> greg k-h
Thanks. I'll send v3. I assume now we don't need kzalloc anymore as we initialize
the hci_packet so kmalloc(sizeof(struct hci_packet),..) will do.

Amey

--imubcj7qugnas5hs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEb5tNK+B4oWmn+0Z9BBTsy/Z3yzYFAmAjoCMACgkQBBTsy/Z3
yzbVKAf+Iph1lZz0+d3r8rBFI2plXv7eFKjbXmVguuPe3pI8qKhgxAmDq0KMTOai
qMtCIV4Iy08Y5UAZ5uXvswK6SULC9QJZ5M+e3U21lZmr3W1Ift6RUZKuxtOYrqwa
HSaKMXnuSxP5wF1KqGnCf+cdiNsWel26p4qgODylPn5Gfv2kpRiLIBvzRgSV7EaI
80Am5yQY2u5Jz+WsNK/uxq7Fj60yMlyFHlgRwiHwgguboLSGAhShcaDcY+/LaE/3
oyCrdQIQ/OYbb54zVpH+X/6coDZpm60ltmEqFscuGqtypSDom5eZalUsMggTlkl9
dbAsVy9gvdm4R7BE+/xoJY0L4Us3NA==
=FHTN
-----END PGP SIGNATURE-----

--imubcj7qugnas5hs--

--===============5949371824822717638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5949371824822717638==--
