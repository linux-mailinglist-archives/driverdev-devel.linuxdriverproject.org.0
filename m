Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B02A2877
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 22:56:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F7348737C;
	Thu, 29 Aug 2019 20:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CTX2lPpoNsxD; Thu, 29 Aug 2019 20:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DEF9870C4;
	Thu, 29 Aug 2019 20:56:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B51B1BF2C1
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 20:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33CAE88561
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 20:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWR241JIB2dz for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 20:56:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59D7188326
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 20:56:35 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id k2so3664956wmj.4
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 13:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5OTD/ZF052UijPlaWHCU7Ea6/DP3zSnIydnyfbQXH7E=;
 b=CwuTR8XUyaLrdcjJY8/b566IfEuB1F8FTncyUSw/jAoq8v+gWEvkj7YHi47i1uX/eq
 a0OuCmIDRaosbb3VIoSMbiy/1/MdDR0H1cnkr/IhTXridpk2ZWFNLil18EUcIXrsXDU7
 LMoVbc3C6/mRCWWjKN0MgWfhMCA7v12O7FJvXN6UHKZkKa8eAF5iwVcZCxSPfqE/stRn
 J+WaL22jPUxTXElwUyjVHuXfqvwMVwyQjkq2TXn1BXC81WOjLzMFLWfGiFxVj04pb71l
 NMp/yG8LRyqU9hR2bzSGDsTBWGwayFAsbpHhHeqer+JVT+j/zmno0ijiyEQxdOAutwkH
 CqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5OTD/ZF052UijPlaWHCU7Ea6/DP3zSnIydnyfbQXH7E=;
 b=BQCul8p95vz6uJxDAVwkVBdppafdyEvofR+zYTdOdKTxuWGdLrnU8B/SSbRlqcvDm2
 54nxakCZI4J/ZZH6/2S8L2tueYFLTIWMQqY9MPDX0tWDAlr4g5Vnrp8ttivgnWNg2weO
 UMliXltvWy2Bn5S/rln9r4Qg5N3DBXUvQZr3Ogb0aKohdiozpjGBfJ3mtNy6SG/J72uS
 s5HcgFuSSL7ghy3wGcyVekNkw86ng+G7EpegHZljifzEme023/LXwVYJz78bi1ijlw8Z
 dXucZsgVL3LpO0mwLFi4F/Y+axJq13FY5YE5HzHvNR9MoRvTdMzVNetsSau2u1V6gTmA
 0zSA==
X-Gm-Message-State: APjAAAVR9tdfIyELbaUfzTVV5ZKtvITjdOMKZA8NnpZlbn3igpMBRh26
 hXyABCUtyUujNdqDyJT7PmU=
X-Google-Smtp-Source: APXvYqygssWtVylOkfeDXUlxBM6Q63NK3RvJdvkErdIKchX1tJ0I8+1y3Yzz+aHslkBbBxKFZdcCYw==
X-Received: by 2002:a7b:c775:: with SMTP id x21mr14634755wmk.90.1567112193854; 
 Thu, 29 Aug 2019 13:56:33 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id e14sm3883812wme.35.2019.08.29.13.56.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 13:56:32 -0700 (PDT)
Date: Thu, 29 Aug 2019 22:56:31 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829205631.uhz6jdboneej3j3c@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <20190828160817.6250-1-gregkh@linuxfoundation.org>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, Sasha Levin <alexander.levin@microsoft.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0546873534288949770=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0546873534288949770==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="22htbofgnb45e3kb"
Content-Disposition: inline


--22htbofgnb45e3kb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wednesday 28 August 2019 18:08:17 Greg Kroah-Hartman wrote:
> From: Valdis Kl=C4=93tnieks <valdis.kletnieks@vt.edu>
>=20
> The exfat code needs a lot of work to get it into "real" shape for
> the fs/ part of the kernel, so put it into drivers/staging/ for now so
> that it can be worked on by everyone in the community.
>=20
> The full specification of the filesystem can be found at:
>   https://docs.microsoft.com/en-us/windows/win32/fileio/exfat-specificati=
on
>=20
> Signed-off-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>
> Signed-off-by: Sasha Levin <alexander.levin@microsoft.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Hi Greg!

I'm not really sure if this exfat implementation is fully suitable for
mainline linux kernel.

In my opinion, proper way should be to implement exFAT support into
existing fs/fat/ code instead of replacing whole vfat/msdosfs by this
new (now staging) fat implementation.

In linux kernel we really do not need two different implementation of
VFAT32.

So I'm a bit sceptical about usefulness of this exfat code/driver, if it
makes any sense to have it even in staging.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--22htbofgnb45e3kb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXWg7/QAKCRCL8Mk9A+RD
UscXAJwPPJqKcOQjnAYTGn7FOoM5do7AtgCfVuTe+I2XcSSZjydWed7Afnz64cs=
=Xup+
-----END PGP SIGNATURE-----

--22htbofgnb45e3kb--

--===============0546873534288949770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0546873534288949770==--
