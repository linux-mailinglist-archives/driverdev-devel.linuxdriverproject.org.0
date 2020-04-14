Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FA41A7834
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 12:13:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B0642204BE;
	Tue, 14 Apr 2020 10:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id io0WbQ8pXDiK; Tue, 14 Apr 2020 10:13:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BEDE420390;
	Tue, 14 Apr 2020 10:13:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 215CB1BF255
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 10:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1BAC687884
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 10:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SCdMDs7XKoi2 for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 10:13:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C996387877
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 10:13:37 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 86AE4AD9F;
 Tue, 14 Apr 2020 10:13:34 +0000 (UTC)
Message-ID: <aa55686f19ce8afaa383b9c9ef52d0a87f5c6eb6.camel@suse.de>
Subject: Re: [PATCH] staging: vc04_services: remove set but not used
 'local_entity_uc'
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jason Yan <yanaijie@huawei.com>, gregkh@linuxfoundation.org, 
 marcgonzalez@google.com, jamal.k.shareef@gmail.com,
 nishkadg.linux@gmail.com,  bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
Date: Tue, 14 Apr 2020 12:13:33 +0200
In-Reply-To: <20200409085339.47255-1-yanaijie@huawei.com>
References: <20200409085339.47255-1-yanaijie@huawei.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
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
Content-Type: multipart/mixed; boundary="===============4217906416323411497=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4217906416323411497==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-juXL22/nRsflnczJYuVl"


--=-juXL22/nRsflnczJYuVl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-04-09 at 16:53 +0800, Jason Yan wrote:
> Fix the following gcc warning:
>=20
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2356:16:
> warning: variable =E2=80=98local_entity_uc=E2=80=99 set but not used
> [-Wunused-but-set-variable]
>   int local_uc, local_entity_uc;
>                 ^~~~~~~~~~~~~~~
>=20
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks,
Nicolas


--=-juXL22/nRsflnczJYuVl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6VjM0ACgkQlfZmHno8
x/6KtQf/WWaeBaE3Fg3/MPD+6pLhpA1yJ8ifZMJQ7lV2vGPy27O/uYxGO3vP6dF/
ATOajy2Ua1PzffJ8799dQLDV6WUAXnZM0/s1wIicj3CKpOywNDpvvax/8+RCpWOb
CxPorX454DgecibOHfzA/7wy2lrCV6zvc14F3lLB6o45ylKCEpygIBZC85KPEBnV
bBgxSo3VOcgrQDMieB0bcb6m2Sz/niEqmf2PxSo3vD85oMTYgYrADf1Le+Jbam02
3D+JmZKv3BkAzHkxHMhMGIWATzlo1Ub4BshVpgU4sy2Ru90dl4WBuiOrzgItRf4s
GzgoEf75Ky0YWFolvldyijhZ1DHF0g==
=4j5h
-----END PGP SIGNATURE-----

--=-juXL22/nRsflnczJYuVl--


--===============4217906416323411497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4217906416323411497==--

