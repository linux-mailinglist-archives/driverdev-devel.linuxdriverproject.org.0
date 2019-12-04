Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E34051129DF
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Dec 2019 12:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F3FD86C19;
	Wed,  4 Dec 2019 11:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QgvI1AjIok17; Wed,  4 Dec 2019 11:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 110DD86B57;
	Wed,  4 Dec 2019 11:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A78F81BF2C0
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 11:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A3E9C86B57
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 11:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJNBbtMpIjkD for <devel@linuxdriverproject.org>;
 Wed,  4 Dec 2019 11:12:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
 [172.104.155.198])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1149E86B2C
 for <devel@driverdev.osuosl.org>; Wed,  4 Dec 2019 11:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E7qPmeZQCeZnBw7vktfSs91ft3ZUnMQS1eNsGHChlmw=; b=UxkLwO10l/Ds2GlFZA+ElLv8V
 R0UVJexSJ9SC2MVnhtpYihYSxQTBZlyzv+ebb/zQDjGfg152RTJVfa+gwaDagc01+Pv+Hq2dJ04Nw
 FmumjGBHINg0Jo3H4K5yyiGvn4GBzdOqhvEGaPuQXXVU0dlSHAactCMA5QkJ/O81XVpUY=;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1icSa8-0008Ao-Rm; Wed, 04 Dec 2019 11:12:32 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id E1C66D003B4; Wed,  4 Dec 2019 11:12:31 +0000 (GMT)
Date: Wed, 4 Dec 2019 11:12:31 +0000
From: Mark Brown <broonie@kernel.org>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH v4] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Message-ID: <20191204111231.GO1998@sirena.org.uk>
References: <20191123051927.5016-1-rodrigorsdc@gmail.com>
 <20191123114119.7b0c3447@archlinux>
 <a55b9c576eded8c91a985aabbba89180561ab156.camel@analog.com>
 <20191201114032.1a972dda@archlinux>
 <20191203163850.GN1998@sirena.org.uk>
 <20191203165154.00005793@Huawei.com>
MIME-Version: 1.0
In-Reply-To: <20191203165154.00005793@Huawei.com>
X-Cookie: Cleanliness is next to impossible.
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>, "Popa,
 Stefan Serban" <StefanSerban.Popa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============2518394951592456421=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2518394951592456421==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TYjWXklH5JTzT8n9"
Content-Disposition: inline


--TYjWXklH5JTzT8n9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 03, 2019 at 04:51:54PM +0000, Jonathan Cameron wrote:

> If the driver picks a mode because that's what it says on the datasheet
> it prevents odd board configurations from working.  The question
> becomes whether it makes sense in general to assume those odd board
> conditions don't exist until we actually have one, or to assume that
> they might and push the burden on to all DT files.

The cost should be for the weird boards, not everything.  If you
just wire up a device with a normally connected SPI bus without
throwing random inverters or whatever into the system then you
shouldn't need to do anything special.

--TYjWXklH5JTzT8n9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3nlJ0ACgkQJNaLcl1U
h9A7LAf6ArffahUWag0IWm38Zvw8s67pu0SYN7jM4XCObUNoeV5QsckVPwodOPAg
NSAhJb7SIYuo+lqhEXB032ubmEj9Y/W07D73riDqCbQ+Gzw6vD/9IjKxWo71xzHb
Y8wi3KtLpaHMsAHGXUwSJEj77RsQnx+GpuIqFH2SETfGhDWrpkz7haS4BxPSHPKk
iYd8tPh06asd+F761p4EkwwMe4d9U1AcvLN0U3mf4HMw7f28xBcYA8fDAUbx9xAf
BAak3S7zi+PLn3kldPDpJMiMVube3MB6E84b5CPoTOx6+4AS3q0Rq3FRYKO113QE
WtWei5N/N1Sxxy84HIJu2xuGh8Kliw==
=kH9y
-----END PGP SIGNATURE-----

--TYjWXklH5JTzT8n9--

--===============2518394951592456421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2518394951592456421==--
