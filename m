Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9367C1A7845
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 12:17:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0614F203B4;
	Tue, 14 Apr 2020 10:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o39hMHqJ2bzS; Tue, 14 Apr 2020 10:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 77C7520005;
	Tue, 14 Apr 2020 10:17:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1415C1BF255
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 10:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10B948541F
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 10:17:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j4Sm4KAakxTD for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 10:17:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4A81984F80
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 10:17:09 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A99E6AAFD;
 Tue, 14 Apr 2020 10:17:06 +0000 (UTC)
Message-ID: <f88988c4059799dd21c4c0bf9d13df494eff2c4f.camel@suse.de>
Subject: Re: [PATCH] staging: vc04_services: bcm2835-audio: Make function
 arguments alignment match open parenthesis
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: R Veera Kumar <vkor@vkten.in>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Tue, 14 Apr 2020 12:17:05 +0200
In-Reply-To: <20200413165905.6081-1-vkor@vkten.in>
References: <20200413165905.6081-1-vkor@vkten.in>
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
Cc: devel@driverdev.osuosl.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6225624272781117857=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6225624272781117857==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-HvMJdd4MlU6lzP+RDzxu"


--=-HvMJdd4MlU6lzP+RDzxu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-04-13 at 22:29 +0530, R Veera Kumar wrote:
> Make function arguments alignment match open parenthesis.
> Found using checkpatch.pl.
>=20
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks,
Nicolas


--=-HvMJdd4MlU6lzP+RDzxu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6VjaEACgkQlfZmHno8
x/7QNAf+KEkgvllarl1bp7iHEIeawYA2hzu5cIUgBMq3Qn9pI9VDHNI3I8DG4EQb
gOHmJHG635oIvSU3ZVXbgSPRdomFsuXGO7t6te5WdYuhkNVkNyuSuVioOJk6Qdfx
54HT/S9tPICxf3lMZ7ga2JlSDFlHOEtdFEGy7yi6c+miPwkscp1/c6vOxDojOEp1
0Z9iPRSVTGAjKPJOF0Pik1S5cEwowScrdFF2m7Oku0F6ae71sv0eJ+8rZGmqP8Bj
ypzQVcXJYr9pIAGnq/8tRlt4d+IzSSPKxUpTcZZ67RBC/3opTf183ajZGOCTjZd1
CMKcxOYHmJdhwso9ulwPstE+ogLEaA==
=UMAf
-----END PGP SIGNATURE-----

--=-HvMJdd4MlU6lzP+RDzxu--


--===============6225624272781117857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6225624272781117857==--

