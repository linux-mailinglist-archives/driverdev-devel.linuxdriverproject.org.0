Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D321720A0BC
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 16:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68E1987E6A;
	Thu, 25 Jun 2020 14:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F3QXTy4d9ysE; Thu, 25 Jun 2020 14:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF86587DC8;
	Thu, 25 Jun 2020 14:18:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C91D31BF41C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 14:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C574286886
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 14:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i8dHMqbs3jFO for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 14:18:47 +0000 (UTC)
X-Greylist: delayed 00:22:12 by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED8BE865E0
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 14:18:46 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id k6so1213366oij.11
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 07:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=O6XWpAIm/07NSaAOsW+eHsOPwj9NO+y2KozfprF3MfU=;
 b=iJZijdp0c4rgMpbSmneJ/7Y0r69e5W6O14v+/Yh6yx60yuOg/LuDbpgJ85E5VhHBCM
 wH6LaEtu4HnNDLKdhiocMlPnbPqqxaxTfmClWYA8+qKBDGfLk6TFfgVIU2Fah09zaEGt
 eijSbz4wnvdVuFwO4W/uK57q/cvGAFmcP/OqbhpIyvxgP43VOFJKCB22RpN6mI5C7Mbm
 eXCtbDH4PCucy+ENIN8FuwYe9ogGJSREXLeX7TewvJ8Y2jR5yeKv7f8F2qHcoAQ8X02D
 SLluvWTcTqrIwlNUrxHB7nIzGDlkSQx507VEDn9Wh4FWV6uJQXGuv8sjGGMIG2+FUgCP
 JXWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=O6XWpAIm/07NSaAOsW+eHsOPwj9NO+y2KozfprF3MfU=;
 b=UvP+3+0LgHNne2sXtfOtbglW0Kte1Z/w/PyA3lrQgp3L/KUJuENOYLD0QH9fjicrNj
 tL2ExHj+A1slHK3aCWYyaTtK6p2wr7ARrCtelFipoBrknKuJCCV4QVKP68azpA124s+f
 NBh6u+8uKt7vGU1I0X0/yH3DAiVS3rQe9AQARytP1dtIWnaVCDoqM4IVjrlca5JgIMQB
 sr+Hj3kN/fi1Ce0qqNoVT6YVWjmUjLUPExNaHM4bQZBFDxH8NgvU4Y97uL7xgM7S3Jft
 Yu7ARkRNgBiV6VofwZY4MrXzz8eZziTgUpSu13GRA/a+su/pC5vZQFFnc17pE1xtKPP4
 P0+Q==
X-Gm-Message-State: AOAM5308i+xa+tnPXBCGAV6mziRqMjXq1I1rApc9Pq5Og9BiW0CdL1UT
 qLDkA9qKkCWP0CNsyUCYTCMKg8HKUYM9Dw==
X-Google-Smtp-Source: ABdhPJw0XHLBftq9f1yqYhGK7B1rnEDK++/JqGPEqJB/M/z+kCDZMRNU1E6tlnSLrwoI1PKGBTx8lQ==
X-Received: by 2002:a17:90b:4d08:: with SMTP id
 mw8mr3395070pjb.119.1593093060504; 
 Thu, 25 Jun 2020 06:51:00 -0700 (PDT)
Received: from localhost ([2406:7400:73:51e4:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id oc6sm9666571pjb.43.2020.06.25.06.50.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 06:50:58 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 25 Jun 2020 09:50:51 -0400
To: Marc Dietrich <marvin24@gmx.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, ac100@lists.launchpad.net,
 linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: nvec: changed coding style, line should not end
 with a (
Message-ID: <20200625135051.msl37vuz5fbgiuz4@pesu-pes-edu>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
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
Content-Type: multipart/mixed; boundary="===============5712143244944975896=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5712143244944975896==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rewokx577v3vntjb"
Content-Disposition: inline


--rewokx577v3vntjb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/nvec/nvec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 360ec0407740..16afbe1dfdeb 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -382,8 +382,8 @@ static void nvec_request_master(struct work_struct *wor=
k)
 		msg =3D list_first_entry(&nvec->tx_data, struct nvec_msg, node);
 		spin_unlock_irqrestore(&nvec->tx_lock, flags);
 		nvec_gpio_set_value(nvec, 0);
-		err =3D wait_for_completion_interruptible_timeout(
-				&nvec->ec_transfer, msecs_to_jiffies(5000));
+		err =3D wait_for_completion_interruptible_timeout(&nvec->ec_transfer,
+						msecs_to_jiffies(5000));
=20
 		if (err =3D=3D 0) {
 			dev_warn(nvec->dev, "timeout waiting for ec transfer\n");
--=20
2.20.1


--rewokx577v3vntjb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl70q7oACgkQ471Q5AHe
Z2oxxQv+OOy01Ou3vqU5dN75Df6fs0uJzKJ4lacNDjmMVI7YZvO95FHX6uw2W2ZE
1QIRzE43pNJ9IGkAOr88VNZPddYk9YIf+pQ/0N5P8Ey1l6HpjfzXLsYmkJ7sh/kR
lYUZFLnlzHDSeQWN/GWyYm6is9AKCV7wz566vDg/8ttx7+XRgoyMurqYZeHLT+0B
EHaMLNbnW1HAS++UYxKyZ2+G2VwgTbM5Mb/k08C15t0Op19XwxAHTyEhPFPBYedR
i5oSli2HjK/zFOf8GfnztOtd0E65JNnsPkzlUxADw6OgAvpQlwVkhOb99qwTMQ7c
CZgoM0zhwGmnypFC5nFyMFjAyD8LjBfxU6JoJaWrEsILl+ZLNrG6ruCiZBfAaIwV
BVXKkTfSU7YKZeBVZM2rIvZOnUjWJSKXPd2mnrfvdv/1y0iFx3Dz/EP4l/NDr8sl
81r1GaaE/qwPF2GGPj7bHgTkL3vRZrrxsvYbucY+NQofp/qkbt7olHd4ic8eSE28
uZZcI5eN
=6J1G
-----END PGP SIGNATURE-----

--rewokx577v3vntjb--

--===============5712143244944975896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5712143244944975896==--
