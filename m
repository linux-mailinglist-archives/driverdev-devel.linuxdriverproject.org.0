Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E0231643A
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 11:48:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54E0E86224;
	Wed, 10 Feb 2021 10:48:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NuMspH49d-m6; Wed, 10 Feb 2021 10:48:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9CEF786072;
	Wed, 10 Feb 2021 10:48:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF94E1BF47D
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 10:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB6866F508
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 10:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmjDrru9yzz4 for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 10:48:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 605946F585; Wed, 10 Feb 2021 10:48:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AFD166F508
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 10:48:44 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id j5so959237pgb.11
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 02:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hh731gWK/+w9llsFAgOpwQUfpMkvGJtarMtHikRhFf0=;
 b=dPUgqNTT61Q7/OkwxtprPL0+hwMUmL5JUAjiMSOA5PGKhnn2SfmUFfRQABQ2x4sUsR
 Pwa/kEzzde5zrTbPV4Jvjo3vDIhZM621jFUAA7y3FD68Do60k3IhPK39yO77hAX0Gemf
 bqmfN4+tMfpP+uOmF1CJrTbzFpuyiLysEm0mfVhuqdBGqnBQW36N5dAL/V5oiBqBNMQW
 zwkMgurousYTgsMi1GKBPRh6O0485aFFXTiCfyM09vMQODpy1idmGjNjlDpgpzCuW9Vn
 Wf4m9QDV7u/ocTtVVrrPanfhvwn0m3FZYneFxGcv9SLOwaqiTdHQBOgqvL9ZhGmiCiZn
 lgIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hh731gWK/+w9llsFAgOpwQUfpMkvGJtarMtHikRhFf0=;
 b=NjTW2tm1pd4IQ1Jygzv7TSSwoGsANFkQf4Aiwkp5XM5fVy0moopvWajam980dLlL1G
 lOtx3hG//+U6wduiQnNU5yMAChJo+mujdOj074cJaXfDQLjo8SVtWQm4FwlhPX9z/i8c
 TlimaDTo3pZ7eFG4qCPDvi3Q7U+lWEV9VVYo7C8Y1IacsYUo07JUjcyRg1GfW+eLjDS/
 FLjO6ygy/icnwCfMTYCz6AGygDjQz7gxz7W7ZxTJvsm8RMwm6SnW04CJIhhEpdCw7fwr
 L3c1V8LZ73HNEi8bPFutjG5NyuUx27kji8BNhH4u1T6Yj13ROVTFY03s16gN26PcHYzr
 MglQ==
X-Gm-Message-State: AOAM531V39xq6pW20eoNNs/BDKv2k3rVg90TmX98Uq+G+R4L+otzUy3p
 nh1og6cnwvWR9FFLTRUB5Bsqn1oqK0k=
X-Google-Smtp-Source: ABdhPJxtrn+hHJV7vv5re1RBNyjD+P62IxjXjZzsPEWgOXtupdaYkwHMCdUiemtu9kDdtU3WtGHx4A==
X-Received: by 2002:a62:7d03:0:b029:1bb:5919:6dec with SMTP id
 y3-20020a627d030000b02901bb59196decmr2698734pfc.76.1612954124132; 
 Wed, 10 Feb 2021 02:48:44 -0800 (PST)
Received: from localhost ([103.200.106.135])
 by smtp.gmail.com with ESMTPSA id s18sm1794327pjr.14.2021.02.10.02.48.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 02:48:43 -0800 (PST)
Date: Wed, 10 Feb 2021 16:18:28 +0530
From: Amey Narkhede <ameynarkhede03@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2] staging: gdm724x: Fix DMA from stack
Message-ID: <20210210104828.5kmdhrt6kaglmlmv@archlinux>
References: <20210210080134.1978-1-ameynarkhede03@gmail.com>
 <YCOUIFVuvJuPP3lX@kroah.com>
 <20210210085811.7dunnfly6cqw67m3@archlinux>
 <20210210090442.GV2696@kadam>
MIME-Version: 1.0
In-Reply-To: <20210210090442.GV2696@kadam>
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
Content-Type: multipart/mixed; boundary="===============2891124167986084350=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2891124167986084350==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="knuynokjtvzjzo4t"
Content-Disposition: inline


--knuynokjtvzjzo4t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 21/02/10 12:04PM, Dan Carpenter wrote:
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
> > >
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
> We only initialize the first five bytes, but it also seems as if we only
> use the first five bytes which raises the question of why we are
> allocating 16 bytes.
>
> regards,
> dan carpenter
>
That makes sense. I kept 16 bytes as original implementation allocated
16 bytes on stack.

Thanks,
Amey

--knuynokjtvzjzo4t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEb5tNK+B4oWmn+0Z9BBTsy/Z3yzYFAmAjufwACgkQBBTsy/Z3
yzZjMgf/bKfhQf2JVB5X5W3OlSgMymWcO2ex2LjEc9biSbGRzufzyGbSprgy7Xri
S0kjg3C5bzuGVZ31W+os/zlbKNx/jw852EoXnlzt+1UPqQm3nHNKuJ4sQPYKeJnY
JhMvo54xrLlnYluJ0V1tp9CwT+38Bew9ZS3ylq3Sm5AtsSE9JHwny7HVU+yY6LHO
a7xNDbx74qXMOupXPCD7S8CniRvKKaGvx0FsxTlZk7W07uauKNgacik87gkFPvzn
52nb++/5ukoCueuW8f/jydoGuGUscUl73PTtQLlpGnha+a7PqTO/2bE6d4CZk0Yz
S5hg7dijv+l1tB8l+9kUwqi4JYzBIg==
=dc20
-----END PGP SIGNATURE-----

--knuynokjtvzjzo4t--

--===============2891124167986084350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2891124167986084350==--
