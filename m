Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1394721CEED
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 07:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4D0A89413;
	Mon, 13 Jul 2020 05:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aiCNicaH8Jyo; Mon, 13 Jul 2020 05:44:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3996388A38;
	Mon, 13 Jul 2020 05:44:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC5741BF489
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 05:44:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D8D03203C9
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 05:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4nCRKhlwK1TS for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 05:44:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id B6F5E20354
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 05:44:31 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id t6so5567606pgq.1
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 22:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uaxK61b6eNFTeIyPEZWODnxtmcqDzzyQf4r5VKLOXqY=;
 b=V+E3GxcXuiz/woTyBNXb7juJ9L7hVv0pBhu9EPiwKhfi8tdWrO+O71qGQBGqe2qUpP
 MYOjEPCOaYS7/lQVrl0+kEon4tn7Eydy5gr4AvhaJl7iNmUsA2MKuru25bz+lJsGtL40
 3BeDmEw1ptfAcOfZcm659AFUpn9yjHD1GMu63AQY4j6OXjghI4lhxuwFDx/QNlQoHZ3d
 s4OcTrHW1yc7R9xqbfNHzvEKiUd5bECjoO5qFL0FUYpooZm5vFAUc0w0XNEnaeSTBqXt
 CQyTzqmDUPhUf+GTTAB9kYK3eKnLn7ChbT3VxiEttUHk7/uhTydqtatVqRKC6T2lkZoa
 ceAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uaxK61b6eNFTeIyPEZWODnxtmcqDzzyQf4r5VKLOXqY=;
 b=Irso0g7E6mCrY3aG87IqB1Fc6sW1DHvK5gRmwY0OqLznkoFX+NUflrtWRwTd6Iw2mj
 uo5EyY/KLoFAFrLldrKGSntoGGcLQuAVB8ImPLeGmgf9VeTU+1o5cvuHAqytg5w5eyZs
 Xryl1ykuA9q0MUSojfco9BufHtCZs67SjzJb7ZaLtYSx5xsw04vOZ0dgwxuSnAuCy6yg
 rnTQnEk+ygkR0zOgDCuHRPS8YvIStF1O9wZp3zrIPv/qn1wiiM/Lg64lHxf4UMw6cgbb
 wGF1PBqodi9+L1YUtMGNodi8DCuFR7RsFA8484f/6hZzEDT8Cf+D/0d8K5oJZ5hcGPFS
 ro5w==
X-Gm-Message-State: AOAM533Sq93+7bBREkmkgqtr6sA3hJGby+EjBwVi9KBKdfrxWVgQYgiZ
 Duy8vhRQyGkdAJcEQ1DHsP0=
X-Google-Smtp-Source: ABdhPJw/12Yazmj19RCOWmGDUqGyyKoudOD7lCbkADDZiDrqZOVC54yhfYS3CM0I5o3CL56JuFLg+Q==
X-Received: by 2002:a05:6a00:14cf:: with SMTP id
 w15mr7563038pfu.237.1594619071175; 
 Sun, 12 Jul 2020 22:44:31 -0700 (PDT)
Received: from blackclown ([103.88.82.220])
 by smtp.gmail.com with ESMTPSA id s10sm32792311pjf.3.2020.07.12.22.44.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 Jul 2020 22:44:30 -0700 (PDT)
Date: Mon, 13 Jul 2020 11:14:24 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH] staging: qlge: Remove pci-dma-compat wrapper APIs.
Message-ID: <20200713054424.GD12262@blackclown>
References: <20200711124633.GA16459@blackclown>
 <20200713045959.GA7563@f3>
MIME-Version: 1.0
In-Reply-To: <20200713045959.GA7563@f3>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: multipart/mixed; boundary="===============8642405584327959055=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8642405584327959055==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7DO5AaGCk89r4vaK"
Content-Disposition: inline


--7DO5AaGCk89r4vaK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 13, 2020 at 01:59:59PM +0900, Benjamin Poirier wrote:
> On 2020-07-11 18:16 +0530, Suraj Upadhyay wrote:
> > The legacy API wrappers in include/linux/pci-dma-compat.h
> > should go away as it creates unnecessary midlayering
> > for include/linux/dma-mapping.h APIs, instead use dma-mapping.h
> > APIs directly.
> >=20
> > The patch has been generated with the coccinelle script below
> > and compile-tested.
> >=20
> [...]
> >=20
> > @@ expression E1, E2, E3, E4; @@
> > - pci_dma_sync_single_for_device(E1, E2, E3, E4)
> > + dma_sync_single_for_device(&E1->dev, E2, E3, (enum dma_data_direction=
)E4)
>=20
> The qlge driver contains more usages of the deprecated pci_dma_* api
> than what this diff addresses. In particular, there are some calls to
> pci_dma_sync_single_for_cpu() which were not changed despite this
> expression being in the semantic patch.

Hii Ben,
        I couldn't find any instances of pci_dma_sync_single_for_cpu in
the drivers/staging/qlge/ driver, I ran a simple `git grep pci_dma_sync_sin=
gle_for_cpu/device`
and got nothing.
If I am wrong, please send the line number of the usages.

> Dunno what happened but it should be reviewed. After converting away
> from all of the old api, the TODO file should also be updated.

Thanks for reminding me this, I would send a follow up patch to remove
"pci_dma_*" from "avoid legacy/deprecated apis (ex. replace pci_dma_*, repl=
ace pci_enable_msi,
  use pci_iomap)".


Thanks and Cheers,

Suraj Upadhyay.
> [...]
>=20
> >=20
> > diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlg=
e_mpi.c
> > index fa178fc642a6..16a9bf818346 100644
> > --- a/drivers/staging/qlge/qlge_mpi.c
> > +++ b/drivers/staging/qlge/qlge_mpi.c
> > @@ -788,8 +788,9 @@ int ql_dump_risc_ram_area(struct ql_adapter *qdev, =
void *buf,
> >  	char *my_buf;
> >  	dma_addr_t buf_dma;
> > =20
> > -	my_buf =3D pci_alloc_consistent(qdev->pdev, word_count * sizeof(u32),
> > -				      &buf_dma);
> > +	my_buf =3D dma_alloc_coherent(&qdev->pdev->dev,
> > +				    word_count * sizeof(u32), &buf_dma,
> > +				    GFP_ATOMIC);
> >  	if (!my_buf)
> >  		return -EIO;
> > =20
> > @@ -797,8 +798,8 @@ int ql_dump_risc_ram_area(struct ql_adapter *qdev, =
void *buf,
> >  	if (!status)
> >  		memcpy(buf, my_buf, word_count * sizeof(u32));
> > =20
> > -	pci_free_consistent(qdev->pdev, word_count * sizeof(u32), my_buf,
> > -			    buf_dma);
> > +	dma_free_coherent(&qdev->pdev->dev, word_count * sizeof(u32), my_buf,
> > +			  buf_dma);
> >  	return status;
> >  }
> > =20
> > --=20
> > 2.17.1
> >=20
>=20
>=20



--7DO5AaGCk89r4vaK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8L9K8ACgkQ+gRsbIfe
747xhxAApBto7Dbd7UotsciB3ZqhS3Rg74Hrfr/+WoBAk94f18vyobZG69zfN1uO
i8xzQr4C5LnN2gVr9R2EoOSYxaddNvXmog5evd6nsgW1SboyUUZBBZ9P/OXqrzXr
GUpbP/aYt0ITuUCoa7zyvnGDom4S+u+/RV4++0fnKU+9iv6KxHUHxO/jQ6uz0eBN
JlhHTN2i/4ML6j6w97vx4ALqfTxkxAmZMlvvMGboqHbMeQybiPwQ/4qiEBQPexdK
1YFrORjBseJF9VPK8vbVBB9qBe7bAKvlaETlWHCqsUmjLbf7rwBUu9VeO9AMydZ2
XwD7OzOv8JLZO/rpAvn1wPWaFUfInUwObgHXTXEYtvs02VrMoODYVJWxCtVK6Ldj
ESB812VmuqD+ukBzQim1tfzovuFB2tvJH0DwnzZc5e47trUP0Im5E8+nUW9erkrP
nlpXrH522wnLTMONaKvFIGaa1gzI1056f51OmnSY+iFrQMSnT8LRFPGXB7WrnGqz
wBz+K7C0+qkuyoIw+D4MfS6X1etpszwkCFFpbQHT5uSM3ce0m8LMUYwIBESWn/Vr
xn0KQJQc5P8m4v8DRYX0+uIWjsuo2Pev3WciLA6dvrREz6g+gnJE/dZq3W63rLsi
oLy5hJTjwGfmn9pc7gLC2Ma+8BN7MaRLZvbxT+6IvJUcHhsMF+o=
=u72M
-----END PGP SIGNATURE-----

--7DO5AaGCk89r4vaK--

--===============8642405584327959055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8642405584327959055==--
