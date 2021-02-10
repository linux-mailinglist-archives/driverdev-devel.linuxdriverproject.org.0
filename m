Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8922D316461
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 11:55:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06EC184B1F;
	Wed, 10 Feb 2021 10:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1SGts8DlydMs; Wed, 10 Feb 2021 10:55:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE69D84AE1;
	Wed, 10 Feb 2021 10:54:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAB901BF47D
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 10:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2EEA84B1F
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 10:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6r_Nnjni5T8b for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 10:54:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6499C84AE1
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 10:54:57 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id o63so982238pgo.6
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 02:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jBIUHOWtg2dF5e3zXMZeQ47GV+A9ufzsrhcBdcwlOIo=;
 b=PbcnLvfL7EHMpCXcXx+QTCQp2HAv0KSKug3hp/01z9XnzXtjBy8t7wN3PJ8eGZjY6q
 6de8pm2zJtdayjbLy87dafKVYOPvXFhtMK1D8gvRSXxeq5BnytQLM/0pMOwuv9ZZLipK
 DB3xXjXdOuboVfXx/o1U604M9QCJWHPunzVPLS8OSjMYyiDdR035eLT39EM0rVL0dSyI
 3X0giWKXciV1u6YFxuluFkjRnPjSscWo1YpeVqZJ4WlixccDQDyqZWJ4A5Oy4mHP92xD
 XrWzaa4SVG+aI5JSDODUH8CXlTpSbeIqPDgVmRyrp6FKfSZP02JWSQsky0unqbCP8zSL
 Ph+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jBIUHOWtg2dF5e3zXMZeQ47GV+A9ufzsrhcBdcwlOIo=;
 b=mm3NfY9ng2MyP8cz4YvISQwe7//RtjiIwpCdOzJUX1g8wbLKk2A55Ww3SyX01LC0Ji
 JBY62imYxDw6SOKwLucvbSdVP0ng8NohgPJJrydtjLySMT1UtjVpQxCim15C1xGRpISk
 smTC38hmMo07Vb3mDbqeN7/GeYAV36hColRy98+TKMVKpPqA9z5dsxwpWC4fcz+XJO+g
 r6ySejS+M783DOkz39kGCFDlkmZhFF0FTADIfAK+zzAHWkPHEzJPhwCYqQjl+eItnAHd
 51ObGSW9qiVsbALnMgJb64fUVAzHnXQ525BvKRfbRQYDbU1yju2vHn6NaOsijXYJpMpy
 tUDw==
X-Gm-Message-State: AOAM532YJsPwQ+id31dtU4ZyaGHhDbxAKEUc/rdHKaJQI4h1lyE6A0XJ
 nNRsKHlq3SSZ7g6rbs7vCvk=
X-Google-Smtp-Source: ABdhPJzpgEDu8+JvRLSOi20pp034PJU0empTTSivHkAp73/RAwLGw3QhYWOtK3oKl1hKpRlNQ42WGA==
X-Received: by 2002:a05:6a00:16cd:b029:1c9:6f5b:3d8c with SMTP id
 l13-20020a056a0016cdb02901c96f5b3d8cmr2776402pfc.1.1612954497049; 
 Wed, 10 Feb 2021 02:54:57 -0800 (PST)
Received: from localhost ([103.200.106.135])
 by smtp.gmail.com with ESMTPSA id y73sm2067698pfb.17.2021.02.10.02.54.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 02:54:56 -0800 (PST)
Date: Wed, 10 Feb 2021 16:24:41 +0530
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: gdm724x: Fix DMA from stack
Message-ID: <20210210105441.56pvgjes3txfwn6c@archlinux>
References: <20210210080134.1978-1-ameynarkhede03@gmail.com>
 <YCOUIFVuvJuPP3lX@kroah.com>
 <20210210085811.7dunnfly6cqw67m3@archlinux>
 <YCOit8SI7k1Gv7dl@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YCOit8SI7k1Gv7dl@kroah.com>
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
 dan.carpenter@oracle.com
Content-Type: multipart/mixed; boundary="===============1801484823663054040=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1801484823663054040==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="npqdei4u57mrjtde"
Content-Disposition: inline


--npqdei4u57mrjtde
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 21/02/10 10:09AM, Greg KH wrote:
> On Wed, Feb 10, 2021 at 02:28:11PM +0530, Amey Narkhede wrote:
> > On 21/02/10 09:06AM, Greg KH wrote:
> > > On Wed, Feb 10, 2021 at 01:31:34PM +0530, Amey Narkhede wrote:
> > > > Stack allocated buffers cannot be used for DMA
> > > > on all architectures so allocate hci_packet buffer
> > > > using kzalloc().
> > > >
> > > > Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> > > > ---
> > > > Changes in v2:
> > > > 	- Fixed build warning
> > > > 	- Fixed memory leak using kfree
> > > >
> > > >  drivers/staging/gdm724x/gdm_usb.c | 9 +++++++--
> > > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> > > > index dc4da66c3..c4a9b90c5 100644
> > > > --- a/drivers/staging/gdm724x/gdm_usb.c
> > > > +++ b/drivers/staging/gdm724x/gdm_usb.c
> > > > @@ -56,11 +56,15 @@ static int gdm_usb_recv(void *priv_dev,
> > > >
> > > >  static int request_mac_address(struct lte_udev *udev)
> > > >  {
> > > > -	u8 buf[16] = {0,};
> > > > -	struct hci_packet *hci = (struct hci_packet *)buf;
> > > > +	u8 *buf;
> > > > +	struct hci_packet *hci;
> > > >  	struct usb_device *usbdev = udev->usbdev;
> > > >  	int actual;
> > > >  	int ret = -1;
> > > > +	buf = kzalloc(16, GFP_KERNEL);
> > >
> > > checkpatch did not complain about this?
> > No. checkpatch shows no errors and warnings.
>
> Please add a blank line after variables and before logic.
>
Will do thanks.
> > > And why do you need 'buf' anymore now?  Why not just allocate hci and
> > > pass that to the request instead?  Saves you an extra cast and an extra
> > > pointer.
> > >
> > > thanks,
> > >
> > > greg k-h
> > Thanks. I'll send v3. I assume now we don't need kzalloc anymore as we initialize
> > the hci_packet so kmalloc(sizeof(struct hci_packet),..) will do.
>
> Why is it needed now?  And why would that change?
>
> thanks,
>
> greg k-h
I was thinking about allcoating hci_packet(hci) but as Dan said
we only use first five bytes so kmalloc(5, ...) should work.

Thanks,
Amey

--npqdei4u57mrjtde
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEb5tNK+B4oWmn+0Z9BBTsy/Z3yzYFAmAju3EACgkQBBTsy/Z3
yzaCXgf/TkdeP+yE2c++y1LMX2H1wbyMJPaAsXWCaefA2pwj6IZbzoMV9d8E3RoE
9zZBBPzr88FQ3QVapx8mcfnnFv5sAMFLpJCm0n2c8lnC7pmIICwKr2ZTck9tLcXU
Mx7nYzBxVAunkn90KMkfjFy19J18BYi56Tca7FN+GHqlNR3Qd7wIy9EODk4krgU2
voAHnwhq/15MzCL20hC7Zn3VEnZnAMXYYSZ33DETvcW3/0nobh/Nx5pWHw1vEwmL
Ki7Pt4jjBMd48ht82jNMLkWd8IJYWAreSdN1iDKyq3jDzc52Op+wc8lGdZKg17q/
WIGwoSfzcRmFz8hIk/lVXIj0Wkr0qg==
=YyVo
-----END PGP SIGNATURE-----

--npqdei4u57mrjtde--

--===============1801484823663054040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1801484823663054040==--
