Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695A321D89D
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 16:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06B7A89715;
	Mon, 13 Jul 2020 14:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fDaObhRbPkb7; Mon, 13 Jul 2020 14:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D32F8944D;
	Mon, 13 Jul 2020 14:33:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73CD81BF3A1
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 14:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 700C887808
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 14:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uAQU94PS-f7Y for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 14:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A0CB0876C5
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 14:33:08 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id z5so6091039pgb.6
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 07:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=64N8ajKPQ1vBpOMBvGwdnl++9di4450VUjADg8oTM3Q=;
 b=gnu3o+e28aD/jJDGN8pZ4qsyWOFZWl/4dnKr/JDTjGBvNghPIyJ1MEvjQwD9Bl8mcJ
 I8ZSHSqYG1wGbmXJQGRT5qv8kEFdN1Q6nOC00BkydiG4r0rTVfVc+8HHRoXhmGmCkWrV
 aSSBFarnQkhg06U4dAgPCKbQyE5+ncptD2VZtHF/ezs3NF2sRNKhOzCpeLItUKZxUSy1
 M/bNeSG5A6MnpTlsaj+sWTsNOh0Azvmq4m45tBN8Ys2Xvt3cnGjSj/NJBk0co3Gy4dmz
 weHJDl8bBm3u3P8G7r6MKISQ+ur5/rhmJzaYBOIDF39NlyrdHEaBNw+lXaNo1EIKD+jG
 YHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=64N8ajKPQ1vBpOMBvGwdnl++9di4450VUjADg8oTM3Q=;
 b=cOBrvzczWBg/2fQufuJxDGsQkjaIREtEmdG/6uFxRsPQW+mY6SKfBKrRp4D90j+w85
 16eQ7kJjbIyO7Nllfq05++EUgL4fGxi255mS27nHNzYtHgmll1msTtXyCFbsLWZ/Hiqx
 cFUijvLGCDaa8JySp0YT2kUXNpUXMFhWHpNuNaRbMLL09fkXMMc/uMXqYknQAvqB7LoD
 u//Pc5NEJO27VPw8Jax38wdGxGcC6JkJpl0fRpHe5RbJ1zSUcCyNyaum3i9dFy7QOgfR
 KL9JTz63mfAz4VdQ3kqho3It2yZBkav8fndb/zxB+fZ0GWZTEVWW0AcNd6Ge6AejkMfx
 WAWg==
X-Gm-Message-State: AOAM5330TvSbVKF9IbdNVnyAWBNRujdobmZfNdLRnMm9XueCJBFT4mgA
 Fadr+dlNk4ErKMLkRRI3xS4=
X-Google-Smtp-Source: ABdhPJxHThv3eBgMu7kxLLJoEQ+q6EDrylQALkR9gGd7yJ6o7hKCm8Aw7TMjtHr0F8UJgMMYQbeJ1g==
X-Received: by 2002:a62:640a:: with SMTP id y10mr186933pfb.190.1594650788159; 
 Mon, 13 Jul 2020 07:33:08 -0700 (PDT)
Received: from blackclown ([103.88.82.220])
 by smtp.gmail.com with ESMTPSA id p10sm13608743pgn.6.2020.07.13.07.33.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jul 2020 07:33:06 -0700 (PDT)
Date: Mon, 13 Jul 2020 20:02:53 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org, abbotti@mev.co.uk,
 hsweeten@visionengravers.com, christophe.jaillet@wanadoo.fr
Subject: [PATCH v2] staging: comedi: s626: Remove pci-dma-compat wrapper APIs.
Message-ID: <20200713143253.GA14953@blackclown>
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
Content-Type: multipart/mixed; boundary="===============2972805086824795280=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2972805086824795280==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The legacy API wrappers in include/linux/pci-dma-compat.h
should go away as it creates unnecessary midlayering
for include/linux/dma-mapping.h APIs, instead use dma-mapping.h
APIs directly.

The patch has been generated with the coccinelle script below
and compile-tested.

@@@@
- PCI_DMA_BIDIRECTIONAL
+ DMA_BIDIRECTIONAL

@@@@
- PCI_DMA_TODEVICE
+ DMA_TO_DEVICE

@@@@
- PCI_DMA_FROMDEVICE
+ DMA_FROM_DEVICE

@@@@
- PCI_DMA_NONE
+ DMA_NONE

@@ expression E1, E2, E3; @@
- pci_alloc_consistent(E1, E2, E3)
+ dma_alloc_coherent(&E1->dev, E2, E3, GFP_ATOMIC)

@@ expression E1, E2, E3; @@
- pci_zalloc_consistent(E1, E2, E3)
+ dma_alloc_coherent(&E1->dev, E2, E3, GFP_ATOMIC)

@@ expression E1, E2, E3, E4; @@
- pci_free_consistent(E1, E2, E3, E4)
+ dma_free_coherent(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4; @@
- pci_map_single(E1, E2, E3, E4)
+ dma_map_single(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2, E3, E4; @@
- pci_unmap_single(E1, E2, E3, E4)
+ dma_unmap_single(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2, E3, E4, E5; @@
- pci_map_page(E1, E2, E3, E4, E5)
+ dma_map_page(&E1->dev, E2, E3, E4, (enum dma_data_direction)E5)

@@ expression E1, E2, E3, E4; @@
- pci_unmap_page(E1, E2, E3, E4)
+ dma_unmap_page(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2, E3, E4; @@
- pci_map_sg(E1, E2, E3, E4)
+ dma_map_sg(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2, E3, E4; @@
- pci_unmap_sg(E1, E2, E3, E4)
+ dma_unmap_sg(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2, E3, E4; @@
- pci_dma_sync_single_for_cpu(E1, E2, E3, E4)
+ dma_sync_single_for_cpu(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2, E3, E4; @@
- pci_dma_sync_single_for_device(E1, E2, E3, E4)
+ dma_sync_single_for_device(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2, E3, E4; @@
- pci_dma_sync_sg_for_cpu(E1, E2, E3, E4)
+ dma_sync_sg_for_cpu(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2, E3, E4; @@
- pci_dma_sync_sg_for_device(E1, E2, E3, E4)
+ dma_sync_sg_for_device(&E1->dev, E2, E3, (enum dma_data_direction)E4)

@@ expression E1, E2; @@
- pci_dma_mapping_error(E1, E2)
+ dma_mapping_error(&E1->dev, E2)

@@ expression E1, E2; @@
- pci_set_consistent_dma_mask(E1, E2)
+ dma_set_coherent_mask(&E1->dev, E2)

@@ expression E1, E2; @@
- pci_set_dma_mask(E1, E2)
+ dma_set_mask(&E1->dev, E2)

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
Changes:
	v2: Converted the GFP_ATOMIC flag to GFP_KERNEL to suit for the
	context. On reviewer's advise.

 drivers/staging/comedi/drivers/s626.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi=
/drivers/s626.c
index 084a8e7b9fc2..e7aba937d896 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -2130,13 +2130,15 @@ static int s626_allocate_dma_buffers(struct comedi_=
device *dev)
 	void *addr;
 	dma_addr_t appdma;
=20
-	addr =3D pci_alloc_consistent(pcidev, S626_DMABUF_SIZE, &appdma);
+	addr =3D dma_alloc_coherent(&pcidev->dev, S626_DMABUF_SIZE, &appdma,
+				  GFP_KERNEL);
 	if (!addr)
 		return -ENOMEM;
 	devpriv->ana_buf.logical_base =3D addr;
 	devpriv->ana_buf.physical_base =3D appdma;
=20
-	addr =3D pci_alloc_consistent(pcidev, S626_DMABUF_SIZE, &appdma);
+	addr =3D dma_alloc_coherent(&pcidev->dev, S626_DMABUF_SIZE, &appdma,
+				  GFP_KERNEL);
 	if (!addr)
 		return -ENOMEM;
 	devpriv->rps_buf.logical_base =3D addr;
@@ -2154,13 +2156,13 @@ static void s626_free_dma_buffers(struct comedi_dev=
ice *dev)
 		return;
=20
 	if (devpriv->rps_buf.logical_base)
-		pci_free_consistent(pcidev, S626_DMABUF_SIZE,
-				    devpriv->rps_buf.logical_base,
-				    devpriv->rps_buf.physical_base);
+		dma_free_coherent(&pcidev->dev, S626_DMABUF_SIZE,
+				  devpriv->rps_buf.logical_base,
+				  devpriv->rps_buf.physical_base);
 	if (devpriv->ana_buf.logical_base)
-		pci_free_consistent(pcidev, S626_DMABUF_SIZE,
-				    devpriv->ana_buf.logical_base,
-				    devpriv->ana_buf.physical_base);
+		dma_free_coherent(&pcidev->dev, S626_DMABUF_SIZE,
+				  devpriv->ana_buf.logical_base,
+				  devpriv->ana_buf.physical_base);
 }
=20
 static int s626_initialize(struct comedi_device *dev)
--=20
2.17.1


--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8McIcACgkQ+gRsbIfe
747WIQ/7BdADpPXhYh4IdHYtyRfgR/Kma0OpFegNzOM2kJ5I5c9VX0g90U2ZQCVS
JYO/OgeJDFcj3fdX6JnN2cTTh5UItDsQeh0m35KXqUk1F2AxyPb63DyweF15z53U
sQA9w/o6xgTgcjTpUI83QyllrVbJ0gwYvN59nTenZYPE0j2lvkbnEURDjaziFrkt
z2TQfpVoxNCgGYdkO310R5qFpEaJj/pVtx1ZENI+WPYD0gQ8ywSDyhdN5IBX6RhZ
vqjv/A6LnbBuRg7A9JwmR4eJa9l4DIAfom4rJjk4t2KDHLz2sbNbsPS/G2xPhCVY
cqxqLVqRkWbTdgs8wmov2BAZDV2ZIAGA3jhLz1Ug/oMxBAeUgGSevwTTBcoQfXkq
wwMW8lJ58htd7Fiv96Eti+rzPz0CQRZvOF8zKiQIllAqcInm7LcoooKK8JGREvI8
PVrRk8Qq7XW+FwQP+RVDnLoJp7YIAWa7vpaKgWZR6cKs/cWAbyhUorn8KLT8qRx1
LGVsR0RVP5IQj1U60h8hlpN0Z09/nfBMMLand81mjOQzFl2KD30z0g+A4n0Lcsei
Kfdnez8/h75g+r109BrfCEv/LZWBjTPlkO4rVpcEv2pxlyOXXogIxjezcRxNG3cY
5aQQo6vfWUVPCVTXOhSeh5hM3p7W53F3B0l5o9VypIOTQ9pcmME=
=fF19
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--

--===============2972805086824795280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2972805086824795280==--
