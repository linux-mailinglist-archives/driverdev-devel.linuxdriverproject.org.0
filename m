Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A7C22522B
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 16:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C9348671E;
	Sun, 19 Jul 2020 14:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2H5K1dP19lW; Sun, 19 Jul 2020 14:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E28288669A;
	Sun, 19 Jul 2020 14:12:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 015FE1BF422
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 14:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EF32D87A3A
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 14:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mHFM1CsHWBHH for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 14:12:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 60F6887009
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 14:12:36 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id k71so8858048pje.0
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 07:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ogVwZHcdoirAU1j5aR0/R3zuLNG50DzLDPM0lgRbRy0=;
 b=pHbDVx18hDCP66ockL+jzt3tIxQR2d7BiMDsiRDOzHkxDWa3YWsfh6YQqNv/43VRdQ
 U5Jyv0DNfjqeXUFPFt7XRR9Bd6lLF0hpDX4wNKj0jhf11/REXlV/g/6MkFJGET19C3So
 toGB/oX7+IhV4k5oX4ocOBxwFmoSMnROfzMTBC3s4jsovm5gJLo1cpia5E4B40PLiqmF
 SPIV54JbNzUudl44XjAIaqNO3qRFLX0zDUSxknkfAeYJRVK9zN6MccWCVbG05h622+RY
 zpXvuOs68pt17hU1Uhbcbra0nYOXLwo2JxuriPxTbfGgzBBVYmRn/dyOG5N/O31Mt+eB
 YqqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ogVwZHcdoirAU1j5aR0/R3zuLNG50DzLDPM0lgRbRy0=;
 b=XXgmQbTWXiKLr+iYpR/MDK0EV4ZZFgwKhKWNF6msHsKOKKJIJc2N6ZvA0vJ/ftgGoR
 0GgtaMfoYIlORXOGn4QrF6Cf63odRvA8k+ZgPuEOoYViZP11/L+rTapn6H+eTUq8yWIE
 EHXqxRCee2+5LxkFMSiYMK9fCAIrf9qNdZHHTiF4Uu8e9GXe4nKNapFrsKdDrY4GCVQA
 5DTWb/Hjcc1UdB20RHp5ThW4SxO3PpVWlaDFHyg30Sp6hruuS0gAIX70tPLBNY7M3++w
 OcT94FvbxJsMXuDlYd1W1QcSA1rZPnAfeLSd6FnvIu2xUWyu6MmcX8unSlp2h667JXhq
 Xkpg==
X-Gm-Message-State: AOAM532laI0WmpmZgujAsBb6ThWPilpnoeheM463+vO4QPxS9MocG3tl
 bSDOWcYa1kc0AZyZXwE+5d2OJafMiOw=
X-Google-Smtp-Source: ABdhPJx/ffurpmql9buHT+Gdtm6H37Vtzjsxm8iMC+7SJKdFWkI3kqBDnAWvW9Fr6EtiU6C6Z8MNNQ==
X-Received: by 2002:a17:90b:1106:: with SMTP id
 gi6mr19925396pjb.2.1595167955993; 
 Sun, 19 Jul 2020 07:12:35 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id n63sm13729104pfd.209.2020.07.19.07.12.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 Jul 2020 07:12:35 -0700 (PDT)
Date: Sun, 19 Jul 2020 19:42:22 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: kpc2000: Replace depracated MSI APIs
Message-ID: <20200719141222.GA29679@blackclown>
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
Content-Type: multipart/mixed; boundary="===============8589941860187059411=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8589941860187059411==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated MSI IRQ enabler and disabler
with pci_alloc_irq_vectors and pci_free_irq_vectors respectively.
Compile tested.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
Changes:
	v3: Replaced the disabler for MSI IRQ too with
            pci_free_irq_vectors.
	v2: Fix the undefined variable error.
	    Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/staging/kpc2000/kpc2000/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc20=
00/kpc2000/core.c
index 358d7b2f4ad1..952ae8d11f9d 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -440,7 +440,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	dev_dbg(&pcard->pdev->dev,
 		"Using DMA mask %0llx\n", dma_get_mask(PCARD_TO_DEV(pcard)));
=20
-	err =3D pci_enable_msi(pcard->pdev);
+	err =3D pci_alloc_irq_vectors(pcard->pdev, 1, 1, PCI_IRQ_MSI);
 	if (err < 0)
 		goto err_release_dma;
=20
@@ -474,7 +474,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 err_free_irq:
 	free_irq(pcard->pdev->irq, pcard);
 err_disable_msi:
-	pci_disable_msi(pcard->pdev);
+	pci_free_irq_vectors(pcard->pdev);
 err_release_dma:
 	pci_release_region(pdev, DMA_BAR);
 err_unmap_dma:
--=20
2.17.1


--3MwIy2ne0vdjdPXF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8UVLwACgkQ+gRsbIfe
745Kwg/+KnEBX5JUYavy8PIGoQzZPtbYO5gIERC0+9HCPlefafLbASc+n5Wo9S3R
Rl1ZETYkWCxTNZ2JCZh9qrw4TcGv1Yylcvb8XROmn7ntapKGItANj1olMg6tzsCx
Xjn0RuQYVqIaLv54wmroFTctCDRQB44DmldNm9AaBO2xjDBn2yJtxi92Q3Vp18GX
WWNjTUoMm1Xxuse+XGtrXhINXQuJhNAS6Iv5AKHG0TAGnixiWgnCjL4FLlZj/kMk
UG5uUJrS/kbzRYfG3VApMEG1w0LCtRzW6oARQjigJGl13JdDGAwCsi8d6myplLOz
nZ2bIWIolMlbCAiyIEPz7aD7qjHmyI5qOiDqQyu+J/k0w2gHlPIpjujpZrTB8gMO
KGFnfhZ1U+dLWOnn5FLWfpDTPJpGBxZelFW29hL7ifC2oEpfsCuceOm+8oz1CWtl
MPOU3xGLLO7EtbO68Y1iDO4+xndvquWPOEKLkhJvczFZlzC5rdVQR0KQTqxavtku
lqvV75GV2L0F48RiD4fnwoSgN/g2yN5GVbKbV4sy6UPsjyKxd2Nl9XYRBvvvvcOo
W8Z5V8UqVdJrA3h2GkGM0L+WvRaMhCj1VY9FS+BKIX9pVL+FAN0Mr1/SCmh652O4
fjIECnP8kcRrHMcl7gKK3WOqVfWLfgQz1ODbLZRQGC9LvK8ombA=
=1mL5
-----END PGP SIGNATURE-----

--3MwIy2ne0vdjdPXF--

--===============8589941860187059411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8589941860187059411==--
