Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 693F02F0040
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Jan 2021 14:53:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6C8F869F4;
	Sat,  9 Jan 2021 13:53:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Snx8sh4YaWSV; Sat,  9 Jan 2021 13:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DEC386910;
	Sat,  9 Jan 2021 13:53:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F81A1BF291
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 13:53:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7BDE6868FB
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 13:53:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QGRcCn5+jJML for <devel@linuxdriverproject.org>;
 Sat,  9 Jan 2021 13:53:29 +0000 (UTC)
X-Greylist: delayed 00:18:52 by SQLgrey-1.7.6
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9DF73868F0
 for <devel@driverdev.osuosl.org>; Sat,  9 Jan 2021 13:53:29 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id w124so14865933oia.6
 for <devel@driverdev.osuosl.org>; Sat, 09 Jan 2021 05:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=V6kzdP2xat9iocod2DKVN/cLtAYKJvORnSBIgaoo6+I=;
 b=d72Tkx0cui223Epc1i+fCO9dgKUqSalR/M1wfB7aVXhtEABiBc7ENn3RbKglOeEP4K
 Ixoms7B+P/DWWZnYP1IythsQgOnqWaTbaA0zESykWSbCrr5TuwXZAo6knFHbAnPkr9zg
 vmIW1nM4yuT4tZNIWxxwp3KP8sckmbcWWglhxJwle1ZfwwSjFhKRnFl5SJeq0v35CewY
 O4NMvcitKG31FUGmAbuT+G/2rTnXQQjvTkZ+5JCyPptgaeCdXnS1JgNjxWfH1xGhZL6r
 EymHjqsMVLcB2iOvgQISvOL7rzSoqeCvV8gnxaaPEJRPBCyjr6PCIPe3CxA85GsJIJNm
 GsUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=V6kzdP2xat9iocod2DKVN/cLtAYKJvORnSBIgaoo6+I=;
 b=UXBErKFrnOHUfMpUd/EOngOUl4i4XEDXY6shDf+0h9oOQ8PtXCq1SK2BhFrtS2TYEN
 0tA5cXcpIZMfoFndAmEq/NlKBsnAJb9GfmQJP8ULtNKI0b7slNSf7wAl8e/zp+V2GMkO
 kQBJRJZ1WLsRh3p4VU9hjZTirH2ZaV0zqxutvSCZmaOy6IgpcEkpvVZUIVuYIzd2sU8u
 16D5xjeUn9qxIdjk5Qq+cRSVp8kD7D8f3j9oTTHeGQpz7N3CdhLQjAJ0c2RBG/yif/Op
 CXdoAe/5ZHuepXTA8MAUH+Icu4Gvb6+ZibDRKNv1UbJt1iIZgXbdTKnjS3TNyVY05xBs
 vj9Q==
X-Gm-Message-State: AOAM532aLhzrJEUrVC9J336sruNYiB+PnlGEao8gjyiL2aVGVx9EzbP5
 E9SmPnMAIbJ2N7Z0bk8PCYBufqvIl+VG5Q==
X-Google-Smtp-Source: ABdhPJx1E81FOsQLowFml13y0YFhYGLrEGX3Ic1/SX3apoOBMdw/Q7kEnIKPs5jtNJMvGZI6o2Uc7A==
X-Received: by 2002:a17:90a:c306:: with SMTP id
 g6mr8986891pjt.104.1610198857739; 
 Sat, 09 Jan 2021 05:27:37 -0800 (PST)
Received: from localhost ([2406:7400:73:4813:5519:9c74:24bc:5cec])
 by smtp.gmail.com with ESMTPSA id y5sm8053301pjt.42.2021.01.09.05.27.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 09 Jan 2021 05:27:36 -0800 (PST)
Date: Sat, 9 Jan 2021 18:57:31 +0530
From: B K Karthik <bkkarthik@pesu.pes.edu>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: greybus: audio_helper.c: Replace strlcpy() with
 strscpy()
Message-ID: <20210109132731.tczawd5p74xnfz7p@pesu.pes.edu>
MIME-Version: 1.0
User-Agent: NeoMutt/20171215
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
Content-Type: multipart/mixed; boundary="===============3536521101450432689=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3536521101450432689==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kls55wqpg7fma2yb"
Content-Disposition: inline


--kls55wqpg7fma2yb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

In gbaudio_remove_controls() , replace the usage of strlcpy() with
strscpy() because strlcpy() only limits the *destination*
size, and the source is always read fully.

https://lore.kernel.org/r/CAHk-=3DwgfRnXz0W3D37d01q3JFkr_i_uTL=3DV6A6G1oUZc=
prmknw@mail.gmail.com/
was quoted by checkpatch while showing this warning.

Signed-off-by: B K Karthik <bkkarthik@pesu.pes.edu>
---
 drivers/staging/greybus/audio_helper.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greyb=
us/audio_helper.c
index 3011b8abce38..1ed4772d2771 100644
--- a/drivers/staging/greybus/audio_helper.c
+++ b/drivers/staging/greybus/audio_helper.c
@@ -166,7 +166,7 @@ static int gbaudio_remove_controls(struct snd_card *car=
d, struct device *dev,
 			snprintf(id.name, sizeof(id.name), "%s %s", prefix,
 				 control->name);
 		else
-			strlcpy(id.name, control->name, sizeof(id.name));
+			strscpy(id.name, control->name, sizeof(id.name));
 		id.numid =3D 0;
 		id.iface =3D control->iface;
 		id.device =3D control->device;
--=20
2.17.1


--kls55wqpg7fma2yb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEE88CpXiCXh4Qs88cHZmzYLLde5wcFAl/5r0MACgkQZmzYLLde
5wc1MQwAxhSWhwtY2mD97K2T1quipOm7mKH5OHygx9T/aAr8t5k92DznAVswiHV1
KE/jBYTfu1P0MYp/74rWvcb8fm5+fKoICSu5WIn6XIbiuIw010CY48QJilmcyDp5
Kq2UNpmGtCrE2eI8ePFnkiRgK7Y3KVS/OlMoVLd+msLevI+Rf/Is/RsV1UARHb9t
uQed1rw//LB8qM2FV+MpoY5z9a8kcohX10TPTbsepXr0TRqpkdvAFcDNbg2+kdHr
UIXCinZXW6vpN9+YoxfMndrFHqUjj0mAEW42pNhA4Kd61+kXW4BJgEWhch/naERx
SdSxQDaU547U0vqoaYsbIiAEF5M0nVmcsSaqFO33GHSDYy11QmyIGYbh9mHhe/u5
KYaVd/geKHpFk014AmdBnKlSZ9zc7GkxSF56AU0S2Uwu+mcic0lTLUfMkLIpxxNL
oxZO2c0bxUNVDQutoTsF4idVSc5rFwBAKD+iby3x7smxeZpSQ/GhVchG4FWTGxgc
eSfg+mBK
=6954
-----END PGP SIGNATURE-----

--kls55wqpg7fma2yb--

--===============3536521101450432689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3536521101450432689==--
