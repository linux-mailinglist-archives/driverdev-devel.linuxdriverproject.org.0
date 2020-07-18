Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9DA224B6A
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 15:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D3E785727;
	Sat, 18 Jul 2020 13:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ALbHS3DN6khQ; Sat, 18 Jul 2020 13:19:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC31482441;
	Sat, 18 Jul 2020 13:19:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 139BF1BF283
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:19:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D68320363
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:19:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d74BPlNnDNsl for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 13:19:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 1FEA820362
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 13:19:10 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n5so8043873pgf.7
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 06:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=bW56Dq/EZQ7Q0OxXWw3lSP4NAzICRQndu6/ZLfdw/eU=;
 b=lJpYIhhryLyntBJ0OGcZIbxju01m3oYcIhETi0dMSh5uePg0c0Q+y+BLuEvQ9ZQowu
 2dFUjjhy24tQmuib5A/VMpjqurNaRbmiHGbpbt3kPgg0VN2XeNLXVq3tauUsAik4uIMg
 4BwK7L8XSTIdcyRmoui4tpu9cydMpK8YEU0CLnVIaatENE+Y9kDNfcTxd9sGll45+g8P
 6YIC1Pol3Eid2XdSikbBdAJMMAEOX/+ja48Z/JSgLjeG+UdoWcqSnm6A0j5OhK70ugZo
 hMwXxSjYLVFsP1Hc/hHCTs+QzA3BxHPAJRByUTBHwZ2CQsD0sJNRZ7Hg7WlAsEVBBJlZ
 Prmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=bW56Dq/EZQ7Q0OxXWw3lSP4NAzICRQndu6/ZLfdw/eU=;
 b=nkCnf6igjCVwaVHiK0cJTII5Zstp0jwkqanP6XbOsrSqu4L6CBDKd6V0rIqNEo6egN
 mhsNqrb9ao/EWcjZ+s5MLzUgVDluD48YIPeSHSSbIm1ZxykTo/ij32v4vEfPiF1UQM+x
 JmrLS5fhJ8eHDDPjvBaY1bAy5cHU5YQgB4YlcH0LLpdalVBecaBgKdqIXmK2rp2TJqDP
 VXpIV8Z9/Q0/xs9+VdmtguucLEjRQNVty+iuVTGrVAwK7Ks0YUlwchF/7qfTx6MYDme1
 Kxsf+R1+SRUoNgUUjncE9BFRArGJgPBNO3NyxV+LnGwOxPmXGG+BEdkTyGaddhabbSfd
 HxZw==
X-Gm-Message-State: AOAM533tjbWviEAuP6EZ6OV2lEnAqARMS4PRrZXDNkInaTIKA+vtpDKV
 DaftNetWy2ArPXjiBEro7G1Dko4PRbP/Ww==
X-Google-Smtp-Source: ABdhPJxceziaeE//any/1Ek+Lh/N/UukPxOOP9stjgcSoj2QsLa6Jau86qLHgQMAmF+rFxE81qUTKQ==
X-Received: by 2002:a63:5619:: with SMTP id k25mr12218506pgb.139.1595078349459; 
 Sat, 18 Jul 2020 06:19:09 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id 129sm10446524pfv.161.2020.07.18.06.19.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 06:19:08 -0700 (PDT)
Date: Sat, 18 Jul 2020 18:48:56 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rts5208: rtsx: Replace depracated MSI API
Message-ID: <20200718131856.GA10837@blackclown>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3308679258785541470=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3308679258785541470==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated pci_enable_msi with pci_alloc_irq_vectors.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index e28e162d004e..adc80e766412 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -310,7 +310,7 @@ static int __maybe_unused rtsx_resume(struct device *de=
v_d)
 	pci_set_master(pci);
=20
 	if (chip->msi_en) {
-		if (pci_enable_msi(pci) < 0)
+		if (pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI) < 0)
 			chip->msi_en =3D 0;
 	}
=20
@@ -881,7 +881,7 @@ static int rtsx_probe(struct pci_dev *pci,
 	dev_info(&pci->dev, "pci->irq =3D %d\n", pci->irq);
=20
 	if (dev->chip->msi_en) {
-		if (pci_enable_msi(pci) < 0)
+		if (pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI) < 0)
 			dev->chip->msi_en =3D 0;
 	}
=20
--=20
2.17.1


--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8S9sAACgkQ+gRsbIfe
747zJhAAnYwOribTqVdCoKelWsg/J1bRcpu3igKxafUf9i6Jdyk+XmaL4ZtRFsG4
Gc5EQT8o6bhufzzW+We8doUAjusxMIpEBL4+TzN0vK0YdmNeN/Ebi8Be6JmsGa8U
BEedBfiYtT6jVuRC2AdquNK3XJ3U4+8FXkSfG0NuGhwViwks0TzQHOAZJCxuS5Cq
+XFhBNXpjK8E+IOXOFKEUB1cngLfwYKOZopITObQO182b7NND2yWLR5U7TLJlBHX
rE8Nv3Ie7On89qoXSfDUrYNZ7jHok9FRO3K5D2L7v7Uzdcy9JoarwG9cwN3nsWXy
A1l40jF8ctR+VhukddlrMs6cl/lGoIX3j6oBW/rm7MuW/TgLRnefZLKi9ffAmq5s
29JyX9k2ZuqyWUcuXkSLxri/hzqGzKv66Zg4QeeKjPVdNWc1Lg15zAtiXnkLT2j9
coiA8+9d6FfPonwPsYHxwxtMK+BYxUtnAzfbII3uIBHB0av6GVpjjgSIaMvsPcRZ
R/XnG4XO8zqXyttXxJqzS82BhGvVUvEbtSK/wdqbMeYGrX/4HGjMv6wA4TrCU5wH
2t0J/yEE+timKORy0b00Q7paKNTrKO4fiYE3yEg48AHFNzjOIOmuPOJDffX/9imb
4RkGNUBQLqgvUr8fMvzhqmH2yL39UnGW9j50TBnwfXH0GetHv/o=
=PY3U
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--

--===============3308679258785541470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3308679258785541470==--
