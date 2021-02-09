Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661F53156DD
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 20:36:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66D3386B2C;
	Tue,  9 Feb 2021 19:36:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lGzUAobMcKso; Tue,  9 Feb 2021 19:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BEBB285888;
	Tue,  9 Feb 2021 19:36:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A08DD1BF284
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 19:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D35886224
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 19:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZx3P2CIeGxM for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 19:36:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9046D86796
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 19:36:06 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id e7so4190576pge.0
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 11:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XjEcIQFFk/DsYt3Z7ezRvXcADPPGVZJbm6+98Oh58aM=;
 b=ZinSA+0OpNXz9XeLKj8gV9wRbCXFqTQ7PLNK6gbHycJhhx0vHnjxuTcKTLNJJIICIc
 bfiTf801xPiH4ivaBBoN0GokTKt18JfLP2gg1FV4xcv4wghUFHo4dp1k5buXHYTQzoZY
 mlYEq2dW0PuYUeiTay0h8fsNEP2r6o1I+xdEpRxQimu9cKbCpFyuzeH5tvqlCudgvmxJ
 bfSVovZghJcAQH1+gXWuxdPmlPAldrhYL3eRTVlgktFiyCtgtyrawds2k72o9CCdNoaZ
 G0IRyfKgyA9wmwJxfKh5JbkKPplPgOWUPk2F9LRh/neMfBvzVB2tzCYrPLMwr52ei5f2
 dbpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XjEcIQFFk/DsYt3Z7ezRvXcADPPGVZJbm6+98Oh58aM=;
 b=C8K5EERGPu6n5NUwLfFQ6LxZsaZloZEFVwL9mNdN025MJC6Qj5pPM1uloGMb12lUo6
 +57IHoBB9fXN9L8kT6GGm2SSmSU1jo6j4y5L1TimBTDg7aKDFNpFBbw9zvvEQlHPTg/s
 E8TJ2F65jtBQ7Ghhp3eVzMjtcm1rTL6OMGoOLxRlHpJjLEvOAXHAkXNDVqywy9kzLL0K
 aIyx7sMa2c3zEzsKuLDaowETvabZQwG8R+thErV8/DLK1dXqedTvRX7HYXg0HssaaI0k
 QyfdMP1URTJvLN25BYsUSIZlswb5iPcJngc8H8MiC77/MkE4TcSS8PCXJkv2mtX6CQFz
 Q+4Q==
X-Gm-Message-State: AOAM533lcaCSI+FlAVa9DwiWv5GWDb6yy2uVwQx0d/rhUFoLKI1q9k4c
 ifU8vhQiA1VJ69ahmh7W6RE=
X-Google-Smtp-Source: ABdhPJw22DOE1L6KGpNIvwuEFjs8f7KzCZ8FBLWo1V/U3uWxQA4vIE2ALXCmdUO284Ddvcrgt5F6cQ==
X-Received: by 2002:a62:ce82:0:b029:1d9:1872:294b with SMTP id
 y124-20020a62ce820000b02901d91872294bmr19233956pfg.36.1612899366224; 
 Tue, 09 Feb 2021 11:36:06 -0800 (PST)
Received: from localhost ([103.200.106.135])
 by smtp.gmail.com with ESMTPSA id 194sm20446771pfu.165.2021.02.09.11.36.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 11:36:05 -0800 (PST)
Date: Wed, 10 Feb 2021 01:05:52 +0530
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: gdm724x: Fix DMA from stack
Message-ID: <20210209193552.bj343ls6t7r3xxei@archlinux>
References: <20210209145415.29609-1-ameynarkhede03@gmail.com>
 <YCLJHNvKhiMJmTP8@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YCLJHNvKhiMJmTP8@kroah.com>
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
Content-Type: multipart/mixed; boundary="===============1576957690549743643=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1576957690549743643==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3nrjkvplolsm5uhf"
Content-Disposition: inline


--3nrjkvplolsm5uhf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 21/02/09 06:40PM, Greg KH wrote:
> On Tue, Feb 09, 2021 at 08:24:15PM +0530, ameynarkhede03@gmail.com wrote:
> > From: Amey Narkhede <ameynarkhede03@gmail.com>
> >
> > Stack allocated buffers cannot be used for DMA
> > on all architectures so allocate usbdev buffer
> > using kmalloc().
> >
> > Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> > ---
> >  drivers/staging/gdm724x/gdm_usb.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> > index dc4da66c3..50dc463d4 100644
> > --- a/drivers/staging/gdm724x/gdm_usb.c
> > +++ b/drivers/staging/gdm724x/gdm_usb.c
> > @@ -56,7 +56,7 @@ static int gdm_usb_recv(void *priv_dev,
> >
> >  static int request_mac_address(struct lte_udev *udev)
> >  {
> > -	u8 buf[16] = {0,};
> > +	u8 *buf;
> >  	struct hci_packet *hci = (struct hci_packet *)buf;
> >  	struct usb_device *usbdev = udev->usbdev;
> >  	int actual;
> > @@ -66,6 +66,10 @@ static int request_mac_address(struct lte_udev *udev)
> >  	hci->len = gdm_cpu_to_dev16(udev->gdm_ed, 1);
> >  	hci->data[0] = MAC_ADDRESS;
> >
> > +	buf = kmalloc(16, GFP_KERNEL);
> > +	if (!buf)
> > +		return -ENOMEM;
> > +
>
> This is great, but you just added a build warning, which implies that
> the patch is incorrect.
>
> You also have a memory leak here, which is not acceptable :(
>
> thanks,
>
> greg k-h
Apologoes. I'll send v2.

Thanks,
Amey

--3nrjkvplolsm5uhf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEb5tNK+B4oWmn+0Z9BBTsy/Z3yzYFAmAi5BgACgkQBBTsy/Z3
yzbR6wf8CE2iLWxMDz7+ihnsHFdLlTi+mSjNVW6Yqk3xMxNYVwY6nv5EiViy1Eus
AwBUPcoecH9RZDZMjwCAlevr8x+kw7YDiDAxbab78OW8Feyl5cRJiyVvWPcm9m2t
Xy8VSfZd9iSTdmyziPwe6njtt0kVd1e0+JB0HEOCsY2gWzqGTAEnotSW/wb2sepZ
U84IRZJceRoppXIaKFJEMLk4XO2ZXHyKGs/ElwA1T57otfHrq7lajKmKYgtaaBUU
0e1NOmcESAVwnOp8PdI2UfAY5Y8XZSONkjncfNOo/Wdx9BIYMI56EU48ka7+GSB0
ysT7+tg4zPIHLkXr6qoyb6095JqJ7w==
=76Pr
-----END PGP SIGNATURE-----

--3nrjkvplolsm5uhf--

--===============1576957690549743643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1576957690549743643==--
