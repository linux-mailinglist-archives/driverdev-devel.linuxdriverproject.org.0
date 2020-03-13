Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EA618483E
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 14:35:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D544C2736B;
	Fri, 13 Mar 2020 13:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bff4dP55yzPd; Fri, 13 Mar 2020 13:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 15D432722B;
	Fri, 13 Mar 2020 13:35:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E2A91BF5E0
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 13:35:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9A17389570
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 13:35:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mu3Cbi8D-TiT for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:35:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA8588956D
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 13:35:25 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C9B79AB98;
 Fri, 13 Mar 2020 13:35:22 +0000 (UTC)
Message-ID: <c36e9ed78f123c8f5808ae167467d2a8799e6081.camel@suse.de>
Subject: Re: [PATCH 1/2] staging: bcm2835-camera: Drop unused ignore_errors
 flag
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.org>
Date: Fri, 13 Mar 2020 14:35:21 +0100
In-Reply-To: <1584049059-6772-2-git-send-email-stefan.wahren@i2se.com>
References: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
 <1584049059-6772-2-git-send-email-stefan.wahren@i2se.com>
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
Content-Type: multipart/mixed; boundary="===============0526138590561655853=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0526138590561655853==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/Onds4ncF8v/4ttMZtwE"


--=-/Onds4ncF8v/4ttMZtwE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-03-12 at 22:37 +0100, Stefan Wahren wrote:
> The struct bm2835_mmal_v4l2_ctrl contains an ignore_errors flag which
> was always set to false. So drop the unused flag.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-/Onds4ncF8v/4ttMZtwE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5rjBkACgkQlfZmHno8
x/732Qf9GdHYBx5NARiYlVGyOAb43cvwUM3tilkkyZL6qJqkzDILI5vWPtT2NGeY
05aqFAqsTyUhqEG/FeM4qLQgLAefgbGl4/B8i6G2aFMUUMvi4dRdOZAKXPsPdbWh
ynpmx6GqTe3qWHH9jekuf3kawpJJbSOI5pkHvGnmTSjdOwVnsENaz4m1Qyfi5ng/
/VIZcLW1XF3MAA32F3e7dicINLQcSpMy9bqlS5QqhJN5EWTX4apByfBRa0sNEiis
qS/2Vf6G0II6y5drX7jIbsjtcQOP2uC/Ck6NgNCC0jo7rQLykiSU9PvKnGnv/IHN
LkoGEB1lbwvAhZcxeWBNhdcWxeO9Qw==
=UVCs
-----END PGP SIGNATURE-----

--=-/Onds4ncF8v/4ttMZtwE--


--===============0526138590561655853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0526138590561655853==--

