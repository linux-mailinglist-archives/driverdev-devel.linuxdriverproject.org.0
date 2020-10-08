Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9E72871B5
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 11:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE00E84BE7;
	Thu,  8 Oct 2020 09:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdHSVYSwtYMk; Thu,  8 Oct 2020 09:38:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07DAF80139;
	Thu,  8 Oct 2020 09:38:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFBE11BF576
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 09:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BB2B82E12C
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 09:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rO9eeYziqCza for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 09:38:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 87FB7203D2
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 09:38:07 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id F004EABC1;
 Thu,  8 Oct 2020 09:38:05 +0000 (UTC)
Message-ID: <ba10795b535daf1b430db97d3b1388c7407f0058.camel@suse.de>
Subject: Re: [PATCH v2] staging: vchiq: Fix list_for_each exit tests
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Thu, 08 Oct 2020 11:38:04 +0200
In-Reply-To: <20201006134748.GA2076872@mwanda>
References: <20201006134748.GA2076872@mwanda>
User-Agent: Evolution 3.36.5 
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 kernel-janitors@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Jamal Shareef <jamal.k.shareef@gmail.com>
Content-Type: multipart/mixed; boundary="===============1325665801880516126=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1325665801880516126==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-bJZNEHK0zokYDxMMYOJM"


--=-bJZNEHK0zokYDxMMYOJM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-10-06 at 16:47 +0300, Dan Carpenter wrote:
> After a list_for_each_entry() loop, the list iterator is always non-NULL
> so these conditions don't work.  If the "waiter" is not found then this
> results in an out of bounds access.
>=20
> I have fixed it by introducing a new "found" variable.  In one case, I
> used an else statement for readability.
>=20
> Fixes: 46e4b9ec4fa4 ("staging: vchiq_arm: use list_for_each_entry when ac=
cessing bulk_waiter_list")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-bJZNEHK0zokYDxMMYOJM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl9+3fwACgkQlfZmHno8
x/577Qf/daJSMYN1mVGd6kbFmgeUNSamil+eQQmoE3RQSpYvT4Z7pCUFg7RggER3
0aRrcagMt0mZ2qrQdr+CEEMz2Xx9nK9s/bn1HX1QqyTpitm3zDCIDqlpqLBy8bBU
tI8Ba6sFktxj4wS4bahtGG8vQvYQDu9shuip+8jUDNqLj9ufp6rhMpDuiyPfXrKj
4IMs8tohRI6eED/MvLrTqg6hjjZOPYDH7brsszdoJqf4OjPA7Od9VkErR439zkaZ
G5REV/XkIShJo5IOf+toT6IAEl7eDR8xzKr2goe7hN+miLVoKtd22uM05NWINBnI
uavRa8OK57hu/cZVUcEB2PgavmZjBA==
=45fL
-----END PGP SIGNATURE-----

--=-bJZNEHK0zokYDxMMYOJM--


--===============1325665801880516126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1325665801880516126==--

