Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1E53169A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 16:01:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99F1F872E4;
	Wed, 10 Feb 2021 15:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oHevn4kyxbs7; Wed, 10 Feb 2021 15:01:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AE7086FD5;
	Wed, 10 Feb 2021 15:01:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9EB961BF3FD
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:01:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 97EA3868BB
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:01:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7oFMu5epPTB for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 15:01:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 134A786891
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 15:01:51 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id b21so1397824pgk.7
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 07:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=beJP1mYrkSB9mBgiVe08BgvkPCu0WrVWSYUe1T5cFT8=;
 b=JmIFfWvmUP1+frG/lAkaqmY/IXMtopiZCRe9kvND+RaZK7hebEHmzLVsHrefm3xOPB
 0y0NhuswZTgIKWPwQ/DrS7xlAGDDGiRn9vDgcXrxyuFg7DIcd70f+lrzaqDLoXC8+wtu
 9+3SiFHFTHnfmzqHg2iFD49T97GUrn71t4r5Xk01IaoaomKo1l0iFv3vhTRcVsuhHaHk
 7/bPo8fKQ9AJh6zt+/r/NJP9ukPSDGNqSVBkLK1InlyiV5S/524LW4jio2oqM9C+LoS3
 WSfXz06h8XuECd5Yn6F0+GHo1Dp4outBSdWLsHUjjyuZS2/TK/2AK1bm+9b4ctbINZME
 KFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=beJP1mYrkSB9mBgiVe08BgvkPCu0WrVWSYUe1T5cFT8=;
 b=LfI8wp4sC0eHxjsBoBpcYdjIw/eTodHzjEkPLuSK5iW3ZEZ7qGyJfzY3Utb370LTCA
 LUlL9bvew42gbs8ylIYSVXcV1rU6MT6Lb6vB8vS27Z6m5KDePSZUFB/p6/jYufLv2n8M
 K9EZsHoI9uUaGjtultd7P+mRe63OT1wsyFNolu5PVZ5gFzwysLy6wU4pu4mVEzsFUidP
 U2Iojlc3Ah9GNLVf6bnIWNCxHZ5OhUexY5jJF/yXjAOCHgNoiKfmUz0S4xbi2KPEpEGu
 2mRLrR2l+R3vg4W+SIu6sUVVwEoc4Fwr/mQ+FzztFLnASuj8fls/kE12x0jAJVjideic
 WvaQ==
X-Gm-Message-State: AOAM530rdFYP0HRe3Vf8jHGBiEuFqplrIGXybYPNUqxloORxkxGMytEd
 yjtr2xRQlXsFLkwvLWYzdOM=
X-Google-Smtp-Source: ABdhPJwC+Uvy/gzCp/1OSVlsPTqUU2JoH2LX9RLXrZ9/C4CeS5MQZnrciTxFhUyij+/J5IWuTSH1tQ==
X-Received: by 2002:a62:5a45:0:b029:1e5:4c81:c59 with SMTP id
 o66-20020a625a450000b02901e54c810c59mr3645349pfb.51.1612969308755; 
 Wed, 10 Feb 2021 07:01:48 -0800 (PST)
Received: from localhost ([103.200.106.135])
 by smtp.gmail.com with ESMTPSA id u3sm2901202pfm.144.2021.02.10.07.01.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 07:01:48 -0800 (PST)
Date: Wed, 10 Feb 2021 20:31:33 +0530
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3] staging: gdm724x: Fix DMA from stack
Message-ID: <20210210150133.chf4gwefgcvaewnd@archlinux>
References: <20210210142512.23152-1-ameynarkhede03@gmail.com>
 <YCPz7jy6BLRzmvU3@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YCPz7jy6BLRzmvU3@kroah.com>
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
Content-Type: multipart/mixed; boundary="===============0998420258825164217=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0998420258825164217==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ydswyj5saqachrzt"
Content-Disposition: inline


--ydswyj5saqachrzt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 21/02/10 03:55PM, Greg KH wrote:
> On Wed, Feb 10, 2021 at 07:55:12PM +0530, Amey Narkhede wrote:
> > Stack allocated buffers cannot be used for DMA
> > on all architectures so allocate hci_packet buffer
> > using kmalloc.
> >
> > Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> > ---
> > Changes in v3:
> > 	- Remove superfluous buf pointer
> > 	- Reduce size of allocation of hci_packet to match number of
> > 	bytes used for DMA
> >
> >  drivers/staging/gdm724x/gdm_usb.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> > index dc4da66c3..80c58a3ef 100644
> > --- a/drivers/staging/gdm724x/gdm_usb.c
> > +++ b/drivers/staging/gdm724x/gdm_usb.c
> > @@ -56,20 +56,24 @@ static int gdm_usb_recv(void *priv_dev,
> >
> >  static int request_mac_address(struct lte_udev *udev)
> >  {
> > -	u8 buf[16] = {0,};
> > -	struct hci_packet *hci = (struct hci_packet *)buf;
> > +	struct hci_packet *hci;
> >  	struct usb_device *usbdev = udev->usbdev;
> >  	int actual;
> >  	int ret = -1;
> >
> > +	hci = kmalloc(5, GFP_KERNEL);
>
> Why "5" and not:
> 	hci = kmalloc(sizeof(*hci), GFP_KERNEL);
> ?
>
> thanks,
>
> greg k-h
I really need a cup of coffee :)
I'll send v4

Thanks,
Amey

--ydswyj5saqachrzt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEb5tNK+B4oWmn+0Z9BBTsy/Z3yzYFAmAj9U0ACgkQBBTsy/Z3
yzblYAf9H3EOJk/l30Do38RCSkbDmugXm/zeGUYvILtXRiTHX/xDK2Bzo/c1j2Gz
jiqUFbLs1/MgehpgDxj4bST8Z0FeGLOOhkf+Jr/KRNbAUwy4GB8KcUhBI8+v7s/U
icimCI49xSO3yk4SN17BfADrODZM4oUuQPewlfHNYYYg+amq1PGYHBIre4vHWWdg
/jzDLtQG8vJqPBDgLKBRWwwGPxQfvR6Vxpqs0lw394r/LQePk5lau+GSgCBPsqZp
8cAyIHu4xmD601IjbcmlPCRJpXHPFzCWzw0Y+iI9IbKLkDYe1828pgoPFojR5/Hf
zv93hZDStFHoE9kE6KwuRLlNYJ8JWQ==
=Ux+e
-----END PGP SIGNATURE-----

--ydswyj5saqachrzt--

--===============0998420258825164217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0998420258825164217==--
