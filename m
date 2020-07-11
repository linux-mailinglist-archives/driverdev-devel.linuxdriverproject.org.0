Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598EA21C431
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jul 2020 14:35:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 470C6898E4;
	Sat, 11 Jul 2020 12:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8+V5W-l-05eY; Sat, 11 Jul 2020 12:35:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B85E3897D6;
	Sat, 11 Jul 2020 12:35:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD5281BF573
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 12:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD6E1204E0
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 12:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Nci16LjWK-O for <devel@linuxdriverproject.org>;
 Sat, 11 Jul 2020 12:35:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id B59B020507
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 12:35:49 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id q17so3348023pls.9
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 05:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=36WcEQAUH1mKZZkQq7Ag/oNpXtMLgwjbol+RbIVU1ME=;
 b=szfGIZb/K3Wsqmw1uVWSAPepQUrayVwnAQwtLFRXbVb8sJJ0/TutnVaczxzXRIRgPy
 7XDb3zLW88nICz7hS1VsY8g2jA2hnEgjzPgvMBmwsWeSGw57NuC/dytPw8HfTFyMAoCk
 JsoK/vF7UZ1pVLupcJ1zmYH7FbP3JOttpmyZoC8aFF7kHDRiJtI1cxHUcNI/2yUZFuaA
 45MmS5uahTscYkCzsRYP9DRH+ouuFf9mnZsPSvQZM2eUWwLiYxLDYkPJLDhhne/sdqnX
 x9TBPn0a3JYBduGG1kLt9W1a/VcBifv2Y8gV2zHHeAp9gmWHosCD7z753TeUR63mUHg1
 Zg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=36WcEQAUH1mKZZkQq7Ag/oNpXtMLgwjbol+RbIVU1ME=;
 b=Q/T4oRHZSyRPNxSdiNusKwtnITl+N1NdxtZbXJ8eSmV8i3ZJWV1wBQW6ZfV1BwbfyD
 JwbK6C/GLqkVQqdvX2kxZPj+xtDzz+nft1qYHywcUr8WNLjxbcRoy9KeoBzi2jGrjnZp
 +XtwA4jmXKBKrSGTky33f9BzropW9IifZYHpez8QkUAqEBlN63VZ5ku0C5lJ3fe0clwm
 hAKjkq1tOfcsqqOI/n/bZUrLgSR9YNfHBOmZooL6FnoNjik5TKnSvqmBIwpJW19ZVSLd
 7tFw2Q3fk/+q7oh7E9vWmIoOvwPvpP0Vnocna9f99Lb1KU5kLg0eynO0of7qzdpPfv2B
 FDMg==
X-Gm-Message-State: AOAM530JH+zpFLjklNvzbzyzIaG6VJUDXCFZF7aFDhVDP6MDVbq6do46
 6jcwsPO1W9yFA7kNCCwTY2NC80rZxa9jbw==
X-Google-Smtp-Source: ABdhPJzcy7LYLPaz+ONUlYoEzAUwBeSvrHUypYHJNfM7aQFTO4/iqIhcXb5yOEYYYZWq/U12uHbWPA==
X-Received: by 2002:a17:902:6acc:: with SMTP id
 i12mr58265738plt.75.1594470949240; 
 Sat, 11 Jul 2020 05:35:49 -0700 (PDT)
Received: from blackclown ([103.88.82.158])
 by smtp.gmail.com with ESMTPSA id b24sm8601682pgn.8.2020.07.11.05.35.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 11 Jul 2020 05:35:48 -0700 (PDT)
Date: Sat, 11 Jul 2020 18:05:33 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org, abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: [PATCH] staging: comedi: s626: Remove pci-dma-compat wrapper APIs.
Message-ID: <20200711123533.GA15038@blackclown>
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
Content-Type: multipart/mixed; boundary="===============3683742441835575237=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3683742441835575237==
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
	This change is proposed by Christoph Hellwig <hch@infradead.org>
	in the post https://marc.info/?l=3Dkernel-janitors&m=3D158745678307186&w=
=3D4
	on kernel-janitors Mailing List.

 drivers/staging/comedi/drivers/s626.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi=
/drivers/s626.c
index 084a8e7b9fc2..c159416662fd 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -2130,13 +2130,15 @@ static int s626_allocate_dma_buffers(struct comedi_=
device *dev)
 	void *addr;
 	dma_addr_t appdma;
=20
-	addr =3D pci_alloc_consistent(pcidev, S626_DMABUF_SIZE, &appdma);
+	addr =3D dma_alloc_coherent(&pcidev->dev, S626_DMABUF_SIZE, &appdma,
+				  GFP_ATOMIC);
 	if (!addr)
 		return -ENOMEM;
 	devpriv->ana_buf.logical_base =3D addr;
 	devpriv->ana_buf.physical_base =3D appdma;
=20
-	addr =3D pci_alloc_consistent(pcidev, S626_DMABUF_SIZE, &appdma);
+	addr =3D dma_alloc_coherent(&pcidev->dev, S626_DMABUF_SIZE, &appdma,
+				  GFP_ATOMIC);
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

iQIyBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8JsgwACgkQ+gRsbIfe
7474BQ/4kb5fufct1WPXGSk5GazzpLTQpggErwbo+mTWR8xrR0hu0JEkSq3rlcJC
PlyH5wxUTm6AJM6ub8UbDbrIiFCoGvFW/wPKyBgdVFnkrEf5GbPg4QuGD0eEOegC
EDJ34j2meK2fPpOhvKh8I7mk/YXVl0uNB3CTul9GLzAC/NQG3GERX1g3JZsDo+Ib
5sNly1D6mRr2WOxaTOGGLK+JI5PXeQ5jT8x40Q6TwEfZNDFA1A6diStFLOAusNA0
txdSpArNNXJGjxSITQi7Gw4Ifp0g8MW0WnYjL/f4eYVqbGstVo6JYTjI+iwt1aPe
pJpQlNYlXmELft+vVFIq++I6/mIbdxuRjzOKI5e5FJ5/GQpU9nnxlCaW00/c3p0A
8ioeIhy0pI3JekPsDrw5pF5xUZZxXUbHiIxgzrts54g17isyQFwoh0mTnvmANlcz
LTVV9U0xjeQEc3btQMG3c6JWGQ2gpyFDA89Out1769HJvBpuWBzbytUtFVnTKizp
FFV+3c8RjyIih39KvNVE89zay2Y+EFSeiEl3oYhFX9digbSP+ErIQcu0YYaV4k+Q
FjIMZB1j/tBHshL5TwWbU20naZXbrmgReJkvdJwCb292ehp/kFDfV35VFi9qTJD7
D5TH075SMqXfsPrBMuZha868gzaO4dzfmiqAkZEcJ4QLNQ78Mg==
=YDlr
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--

--===============3683742441835575237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3683742441835575237==--
