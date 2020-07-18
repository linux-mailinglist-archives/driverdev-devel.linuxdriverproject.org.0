Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42084224C98
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 17:40:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D3F787846;
	Sat, 18 Jul 2020 15:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pTxxtl3fg6DC; Sat, 18 Jul 2020 15:40:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CC06877A6;
	Sat, 18 Jul 2020 15:40:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BD181BF5A5
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 15:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 659DD877A6
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 15:40:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BTpCwPBMVfyy for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 15:40:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D3B82877A0
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 15:40:42 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id mn17so7929190pjb.4
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 08:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=QC6uaWR6dusie0wlT5R1j0hRjcwCtYQTVPNPMCj1elU=;
 b=u5XRWCDEwVNvRlYCeFYHCCtYBeHFm3mH43DbR2tvhNuk3lyFOydU6bg09nFt430Dcc
 Ax8NNB9KYRwFp7C9gIrBQpDZTn+4cLLUFeuwKI98a52sWKrup9+8fdiYh0yJLZrTgL9y
 il+gx6cpkPK5ZUqiO7ugZ3vaE7vuLskXrLuGSUN46CZlYi7poBB2ITKrV4TWRKEYJocm
 GX1OY7fggtj8UHVDgo2uWRjzGcdMDC2cw1EKhTyI2iTTuAJe0S/7DmwUlyJ7RLF8WMle
 arkQgxvLKV3/sLe5hHsTvDqcBVOqwxADewXZTl8LeSo+XJhc3j2nINrwpQ1J2XWvBCOs
 iu0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=QC6uaWR6dusie0wlT5R1j0hRjcwCtYQTVPNPMCj1elU=;
 b=RH/jjtC+oW8bLWH+HigluEX0qALYq6h+DmL3JtpKllunUvA5NSXxMt9SG78+zLbfxq
 j5uVDyc//4GZeDuGu+gkxu5gxWarY8ijNUFVQaexmhOhs/5aapN/vCC3d0ujW6DGAnkx
 5fnTJo4VN0BFzQc5eGNYxNaHzlhZDVUAK/3+G3kY2Fmy0NwVi00+YvMezfEJtOdl19ek
 epvIFClokNNfnoFuoCBW9X6w23rK7XZo7ghIWNDHUZwh15jkUMHtTs6dES+uAA+9vK6f
 1+BZmuZ3KnsSQmn1FieLqAFet2OSgmb69woqoJxI4jklklvZerk9bNWuXGTSgWLCBNFe
 MROg==
X-Gm-Message-State: AOAM530LmpZ/nZghZQM3th7cgYc+NjcrUuWgrZrfzrEdh7T9ICOfwbv8
 2FU+6r+UaQc0Mfnk9jsqbe8=
X-Google-Smtp-Source: ABdhPJzh4ZFaYN9tEEiDLgn+AhUuJH9a0GEgjpvjHHnol+xqa6XewBBT431QVimiM0ZfbB0ZPkJuuQ==
X-Received: by 2002:a17:902:a981:: with SMTP id
 bh1mr11857962plb.280.1595086842407; 
 Sat, 18 Jul 2020 08:40:42 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id 17sm5956823pjl.30.2020.07.18.08.40.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 08:40:41 -0700 (PDT)
Date: Sat, 18 Jul 2020 21:10:30 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rts5208: rtsx: Replace depracated MSI API
Message-ID: <20200718154030.GA28042@blackclown>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7315198492100839038=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7315198492100839038==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated pci_enable_msi with pci_alloc_irq_vectors.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index e28e162d004e..b39d3f8b54df 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -310,7 +310,7 @@ static int __maybe_unused rtsx_resume(struct device *de=
v_d)
 	pci_set_master(pci);
=20
 	if (chip->msi_en) {
-		if (pci_enable_msi(pci) < 0)
+		if (pci_alloc_irq_vectors(pci, 1, 1, PCI_IRQ_MSI) < 0)
 			chip->msi_en =3D 0;
 	}
=20
@@ -881,7 +881,7 @@ static int rtsx_probe(struct pci_dev *pci,
 	dev_info(&pci->dev, "pci->irq =3D %d\n", pci->irq);
=20
 	if (dev->chip->msi_en) {
-		if (pci_enable_msi(pci) < 0)
+		if (pci_alloc_irq_vectors(pci, 1, 1, PCI_IRQ_MSI) < 0)
 			dev->chip->msi_en =3D 0;
 	}
=20
--=20
2.17.1


--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8TF+0ACgkQ+gRsbIfe
747CGhAAnpA18/QVMvwQ9y5YMfOm81IHq7L/c/rnpI8bfFWCWBat+xEn4uiSqe51
1uB2eqGDr6Mzzd6V/ub9NUmA7ZBH8SABfHdzSh8jLo1V+Ql/yxs2chakIMZuTISb
kgliiEH262QBb5vgwyzaAOdx0TCubFBbn4RQyrs2qnKpIacsWeMzIpMMMJQV5bup
HonQeIXlXooL010HxI8lBfDYV7Ih+blrnAW09rfiwXvq5xZufT5tild5zMsjtUVo
gTzyWXY8Kvctx83c4e5HPkaeuYXG9/NA23pSKExtE0EWEvOyGvzX2n7rdHg0kfFi
und2xSVuLZnTVIhczKOnLB9m1KEfm2LBWx8/a7d9yCL+52CSHsiXeKKxvQ5qE6Ic
W2O97yhC8Wd2yFpY3Wh3AQ4jtXeACKUm4bxbDRdaOvQK6hYORQqosOJQ5hfiFHR8
NsVnj6jaEoK1ydDErwCEvoh2qo9N27m97eIpBUAWMwlU1GueQUYR+Gv4lFPSzoRb
kpp9B7VxhXfGgCf2NhcAztuM85JH8AZHUc31ezC4mtOaNU9JCunkJPQlFptRCsXj
SbjKASQMy7opzABOjPbMy82EO5jtAlk4kidsjlh2mHswI/VobQMvHh48YB47H5iv
/HWg5drO/V1zTboW9UiZ7vYaRBpxC7Wq4fx8HEc6nt+5zltZwfY=
=MFt4
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--

--===============7315198492100839038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7315198492100839038==--
