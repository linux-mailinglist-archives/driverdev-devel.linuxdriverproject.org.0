Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7F021CFFD
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 08:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AEC3B26261;
	Mon, 13 Jul 2020 06:49:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1dtc4GamJQa8; Mon, 13 Jul 2020 06:49:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E53F525AC3;
	Mon, 13 Jul 2020 06:48:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81F341BF47E
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 06:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E69488F20
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 06:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K4KgxWLx+vX9 for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 06:48:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB61B88F1B
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 06:48:40 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id p1so5098951pls.4
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 23:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SAPtRk62vgok+OCp4FDhzKpYNdP7Sd2Zxk67EZLZW4s=;
 b=JzKhR6162GFC5VhCrC2ZMjPibXyVrn4NpK4CoC4bL8nEOnU8GB4RLXSE9CbyR3q12d
 DLj9MXIISzjfzQ2Sz2Z1M/ZVzYDgyng/kB7yktmW3FkuA59LOaXJvFNtCbRPQGZw2X8Z
 2yRY67djD27N56uVmv5yCmUAULIJXGD4phkKg0sVLCiMtzM0QTJJzyJ/iaMrLq0NolEy
 go1Z9Tqu86OEIDULwaC2THAhlIHMLCsDge5biXgqfHZyvg3g+pRoJOX9ShKV13EooyKC
 L7n08q2Kw6lVHA26tXwOU8f5FfWFGIsAIX2pWrTAtiEwHBCW/xVmWa/Zwk1BEahMRCLT
 XIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SAPtRk62vgok+OCp4FDhzKpYNdP7Sd2Zxk67EZLZW4s=;
 b=ILYpWY/bkbDA/UyGYlrgKu73+w5r+YI0LF1fZowJaTfrWT7qs4QLoCTWElPb0zxiPp
 YxQzDvEFIEgch69jAww/1nE/E3HksrSDXgNIow+jFg4ZuhPdTpZNAsx66J2jqhEtHlod
 VsqE0eQnsZ8UC1fSMWsVLEqwRouHumajy/awBkjZJc98+n1nNIDhYq6h3bN95pawfLxZ
 eyPBnWm1G7+1Q01r0/jpw9xwHGA9+Kz3p4HdlGjtdQaH2CEb2S2zK1tWhaMe98WrM6m4
 ataOGKieiiQ6C421O9Rh5qYbew1SkaFsOq/+foh1PDiptnk+7jKrAoweNNCXpI6xf9EZ
 pjqQ==
X-Gm-Message-State: AOAM530dbGkIo4JDs87UNOd9Gh+gVNyGIOv+id9j9cuDVZPWk+8hVUAd
 7I708oqtVYLrrWxEwlAIXVE=
X-Google-Smtp-Source: ABdhPJwyBbQTl0SHlr8Oiv1p8vvgdsnUG1JFu3GYsBRjd72qXfgQNtST22obAK9eHquVC2aUN3SABg==
X-Received: by 2002:a17:90b:1386:: with SMTP id
 hr6mr18072499pjb.93.1594622920276; 
 Sun, 12 Jul 2020 23:48:40 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id g5sm13096103pjl.31.2020.07.12.23.48.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jul 2020 23:48:39 -0700 (PDT)
Date: Mon, 13 Jul 2020 15:48:35 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH] staging: qlge: Remove pci-dma-compat wrapper APIs.
Message-ID: <20200713064835.GA11354@f3>
References: <20200711124633.GA16459@blackclown> <20200713045959.GA7563@f3>
 <20200713054424.GD12262@blackclown>
MIME-Version: 1.0
In-Reply-To: <20200713054424.GD12262@blackclown>
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6460669978789655948=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6460669978789655948==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020-07-13 11:14 +0530, Suraj Upadhyay wrote:
> On Mon, Jul 13, 2020 at 01:59:59PM +0900, Benjamin Poirier wrote:
> > On 2020-07-11 18:16 +0530, Suraj Upadhyay wrote:
> > > The legacy API wrappers in include/linux/pci-dma-compat.h
> > > should go away as it creates unnecessary midlayering
> > > for include/linux/dma-mapping.h APIs, instead use dma-mapping.h
> > > APIs directly.
> > >=20
> > > The patch has been generated with the coccinelle script below
> > > and compile-tested.
> > >=20
> > [...]
> > >=20
> > > @@ expression E1, E2, E3, E4; @@
> > > - pci_dma_sync_single_for_device(E1, E2, E3, E4)
> > > + dma_sync_single_for_device(&E1->dev, E2, E3, (enum dma_data_directi=
on)E4)
> >=20
> > The qlge driver contains more usages of the deprecated pci_dma_* api
> > than what this diff addresses. In particular, there are some calls to
> > pci_dma_sync_single_for_cpu() which were not changed despite this
> > expression being in the semantic patch.
>=20
> Hii Ben,
>         I couldn't find any instances of pci_dma_sync_single_for_cpu in
> the drivers/staging/qlge/ driver, I ran a simple `git grep pci_dma_sync_s=
ingle_for_cpu/device`
> and got nothing.
> If I am wrong, please send the line number of the usages.

You're right, sorry. I was missing commit e955a071b9b3 ("staging: qlge:
replace deprecated apis pci_dma_*") in my tree.

--mYCpIKhGyMATD0i+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkvpDtefvZykbqQVOaJBbS33YWS0FAl8MA8MACgkQaJBbS33Y
WS3Viw/9F4tUPBlh3yVIBpSQ1Ax5GZhlnpGL3XUpFA7Z1aBtZIU+1W9EbDXmZNOo
KO5Nbqr0CfNDPeKJRpB2K+YVriga9F7B299BVvnqKvEvv5NcxSGfVzpEWpyJL3RL
tmjpcquRyY6huKBbYVyfa3D0iUkrURoGmPm9QbpA1JNcKGs55qIyHbwqI+3nYrZt
DZYf5VruMkqQh7gqhW9koHjUyANhWAL4qCLSoQsZAC+HNsY7UsAWLU8sPqD18UaZ
yE1tSSqOyl4R52tGVzaH5WFMbT8xYhCZ7ZXc862LjoEcPoB4jPeHDdDxxq8w2VhS
Kt2O3b5HC8VFByaA32sHVRYpG1iFtMY8MEb6VM+N6qTUmZVNkVJkNTDYpEHSfJ/U
x+j0bunXKUUdnaS14vuzgpfG/L2XAFq9wezZUWvoVg8NWTabHOyeRlNPF1aVYeGr
eJsJ2wtGPNEVPcDpZMo9nSCZeSevun1/9OyFYEkXKO/OQ1vXORY54jik2rv4pPx6
vmYS413oRgOru8drLJR5jiRoZuGjk2RsiEVwdrqkj7pdf7FJ7fr6tYbnoHeWJPz4
h6Wa2prcQ16lPhndAtne+xjc77/O8zqDUmBLShf2ca/5+QgQPuJv6+kC0S9DIK/7
DcAik0SP5lG9iiOAuRxPgQUCYu+prWCBuRcR+2ITbnDd4s2A5cY=
=YM6/
-----END PGP SIGNATURE-----

--mYCpIKhGyMATD0i+--

--===============6460669978789655948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6460669978789655948==--
