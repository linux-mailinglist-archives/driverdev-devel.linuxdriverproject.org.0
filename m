Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1D7184846
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 14:37:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A6F78721C;
	Fri, 13 Mar 2020 13:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJNBQzj-xBcA; Fri, 13 Mar 2020 13:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 370A88719A;
	Fri, 13 Mar 2020 13:37:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60B361BF5E0
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 13:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B1FD8719A
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 13:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0DjPnBS72JtL for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:37:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E78F86E65
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 13:37:51 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0EBFEAB98;
 Fri, 13 Mar 2020 13:37:50 +0000 (UTC)
Message-ID: <5e712df62569b7f1e7fe23ca3c96095115342382.camel@suse.de>
Subject: Re: [PATCH 2/2] staging: bcm2835-camera: Use designators to init
 V4L2 controls
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.org>
Date: Fri, 13 Mar 2020 14:37:49 +0100
In-Reply-To: <1584049059-6772-3-git-send-email-stefan.wahren@i2se.com>
References: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
 <1584049059-6772-3-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.4 
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9043793899486582577=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============9043793899486582577==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-T9K9GSOSBduXnP/Fp9VY"


--=-T9K9GSOSBduXnP/Fp9VY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-03-12 at 22:37 +0100, Stefan Wahren wrote:
> The initializer lists for the V4L2 controls are hard to read.
> So improve this by using designators.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-T9K9GSOSBduXnP/Fp9VY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5rjK0ACgkQlfZmHno8
x/5Vhgf8DPu4Lw8wytH0r96hjKBxhr8+SICHTsnDRhoz+mhzgfDy3UNcKE5FBJEc
WVfofTsCttXEAgVXmmrt2ab1yJpT3UHSq8C+3ZxOo9uQtY4mjWdkf29t0GsbdCQE
8Dbe28B6Kdb4O4LQhL19uJ+9KROJPLTJicveNAKZ2sPb8IcrbDgtp0MhLT3a6vz/
hBRB6Rarlu+vufrNfJvUjDUIyerpHAm7XyWCuV2TEzX//XTTcGwMPcJUV/WFTRt8
tHd+no4B9bl7kXWdgqtMIggR/LUvnOZ+vXq13vjV8OHY+matmM5gPvh4B4zOSWXE
Gdv5gL9xOoS4nE8xRyH9qWFHelauyQ==
=nA3f
-----END PGP SIGNATURE-----

--=-T9K9GSOSBduXnP/Fp9VY--


--===============9043793899486582577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============9043793899486582577==--

