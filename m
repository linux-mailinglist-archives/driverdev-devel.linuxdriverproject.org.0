Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98A422523B
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 16:34:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A71FC87B25;
	Sun, 19 Jul 2020 14:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iwSOhbYIFH-2; Sun, 19 Jul 2020 14:34:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0900887463;
	Sun, 19 Jul 2020 14:34:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 215471BF422
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 14:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E37A8754B
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 14:34:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7TiGxLkLBFny for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 14:34:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D3E987463
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 14:34:16 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id u185so7794537pfu.1
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 07:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=cGafgwhjZbI9rRStyay6bRCQergbF17/kauj57yW04s=;
 b=UL8uP2hCYUdNNJlk+Vzx7IM76dw+syvmMrQLtsEY8DyaRA2aNYZHbQO8UAj/LrBR8B
 jNDSJyEzSXLWNC5VCdh3uXt3X89nuo6YnvD0qfPhbBD3QxhiDOEKF2L/i2bWtkO6fboW
 5yfV/p6fswda0gvCTBX953g6rr6CUgO3OiIXXzF0nzA8wx/Jawdjl/iakEyv6B8fsTJC
 Jhd9pOrQuFIuf8ndWPyda/ArxyPDwFraPSuJZdd//OmCeT1HDBk2CCgOuW0QbeRnaD1m
 He8RsEj3Kz8kHCzAdKUSsKJQ/bFJ4Vdw8T+DzF2k4Kk+94ExoY9Wn6wItnznUuE1w9Bb
 rXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=cGafgwhjZbI9rRStyay6bRCQergbF17/kauj57yW04s=;
 b=J/+DUQo+YTCJPiha1YOcWm9QeS7XTy51Gi71zo7tmLHsj/F8/ypqusuFtvV6RwTn4A
 8zBhg/IWMjM2q55VrQe7NAZzLbRJZVk3gtKp6bTz09iJEMpL0HiqKZlFWpESYyX4gzWJ
 X6eByVmpMcHwUtkTm+jv7My7bqZPOZ9Ek5NOd8t/+GMOGP54i7kGtcCUwcDMj3myHLwz
 ZqzKB7No1UG9hh6BSAKF0P4cG5TpQIAFqa0/bW7DVnSloXmYogBr4YjkkKRgMl1uF9fA
 ujPTTHipWLm9g66GAhY6H5r4l/jOPGL1ODsKlCixaJXglH4RHwdDosDzzwGYJVaUtFHn
 nlWg==
X-Gm-Message-State: AOAM532DanT3xEhGAjhvnlkuNAQ1pyLy1CQChSvtUSy6QHFJ79kzxBVG
 0NhiCV1GbAoFTA+afVKW/o1wqGNiMzQ=
X-Google-Smtp-Source: ABdhPJxXJjkwTcPp6ikYmK99x//73VrfJdDZCPGlg20GSKcaUL3PeUoxwD7FkLb3tKUipNNE9KbStw==
X-Received: by 2002:a63:7cf:: with SMTP id 198mr3899359pgh.309.1595169256065; 
 Sun, 19 Jul 2020 07:34:16 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id y24sm14524807pfp.217.2020.07.19.07.34.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 Jul 2020 07:34:15 -0700 (PDT)
Date: Sun, 19 Jul 2020 20:04:04 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rts5208: rtsx: Replace depracated MSI API
Message-ID: <20200719143404.GA32519@blackclown>
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
Content-Type: multipart/mixed; boundary="===============0985255160275320549=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0985255160275320549==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated MSI IRQ enablers and disablers
with pci_alloc_irq_vectors and pci_free_irq_vectors respectively.
Compile tested.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
Changes:
	v2: Replace MSI IRQ disablers too.
---
 drivers/staging/rts5208/rtsx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index e28e162d004e..898add4d1fc8 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -283,7 +283,7 @@ static int __maybe_unused rtsx_suspend(struct device *d=
ev_d)
 	}
=20
 	if (chip->msi_en)
-		pci_disable_msi(pci);
+		pci_free_irq_vectors(pci);
=20
 	device_wakeup_enable(dev_d);
=20
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
@@ -347,7 +347,7 @@ static void rtsx_shutdown(struct pci_dev *pci)
 	}
=20
 	if (chip->msi_en)
-		pci_disable_msi(pci);
+		pci_free_irq_vectors(pci);
=20
 	pci_disable_device(pci);
 }
@@ -594,7 +594,7 @@ static void rtsx_release_resources(struct rtsx_dev *dev)
 	if (dev->irq > 0)
 		free_irq(dev->irq, (void *)dev);
 	if (dev->chip->msi_en)
-		pci_disable_msi(dev->pci);
+		pci_free_irq_vectors(dev->pci);
 	if (dev->remap_addr)
 		iounmap(dev->remap_addr);
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
@@ -952,7 +952,7 @@ static int rtsx_probe(struct pci_dev *pci,
 	dev->chip->host_cmds_ptr =3D NULL;
 	dev->chip->host_sg_tbl_ptr =3D NULL;
 	if (dev->chip->msi_en)
-		pci_disable_msi(dev->pci);
+		pci_free_irq_vectors(dev->pci);
 dma_alloc_fail:
 	iounmap(dev->remap_addr);
 ioremap_fail:
--=20
2.17.1


--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8UWdsACgkQ+gRsbIfe
744d6w//V5XT/RC+qOEq6QsxtGsxYRx/LbqqSuE8iTOoLupVtMnl+yuxzxOEFS4c
i/UVpZfWWd5WVSad0XoIcRfZuZwm8zxSA7/gp9CdBqHDJ3EYaqHfvxKt5443/lG2
pX/6OHWXiv2Pgh6C0wt3PzdA4BHjWh9PSLnbXACllDsFKYVLaeK7F68GrlhGbBi6
lPyPAX4B/LwqA7A12SwBs4YR0GA4uFzuK3L3MDwP+q5zNVrHA3D3BqOxitBuXUXi
RHmr67BzOUeXq2YOvRBNbZXV/JII4Csk0c3/SHxHejFV/zdriPyd6oEWl5x5VB7m
C44S0kRV712AVvw67GELkFoD58M0XRmu0pfvCyaVLnOOdkcq3ZmoZFzxa8lZX0Fq
6+SKuYAXV+debQgW/lkUcsSq70Dmgcj7YW57cJFy7N1mzBGQXln5X1OY5GrkjXMR
3E85kq5SzYJ0fQu2QDkcvzSAx0u1yY46yo1Zc80MBpvM+DQUKpfjNWaOR16L5Zmu
2A7CK0LYArcp59oEONt89F2qekAj0J8qFrkVKIzQhTGFq2YPbCjQTHh9DDoBhW/+
PKZ8mCgk91NRACZTPQAzXzzS2TWHtnWDEI3zS2J81HVG3VAq8MjuIFKBgy+IdKHN
1o2fNqVux1uqpuoiE9s6VnKlJ/BQc3nrOflDoSbAzbeYFBK+Gp0=
=2Oqc
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--

--===============0985255160275320549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0985255160275320549==--
