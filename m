Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D58921C44B
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jul 2020 14:46:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38C4887EC8;
	Sat, 11 Jul 2020 12:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2DfeUJjERBLR; Sat, 11 Jul 2020 12:46:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25BB187E69;
	Sat, 11 Jul 2020 12:46:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD321BF573
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 12:46:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F1C1687E5A
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 12:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wHAABgfo8B3n for <devel@linuxdriverproject.org>;
 Sat, 11 Jul 2020 12:46:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6F2A387E42
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 12:46:51 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id cv18so5299296pjb.1
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 05:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=fl44Qdgvc5qqO8fXjvD0IhwD/4PIb8ojo5zkF0IptrU=;
 b=ZvqDjVeYFVsWFNefhx/ntIhkuT5BYSyv1u54XQLFqxJQ5waHB1h+QUn54TXgfiaXCF
 HDg7vm3aVaVqdrI47/GzWQl6LvQuBqLPGV/4O9Fe+4Wh9NdXR5ik2p7fJnH7x82EmmEx
 3crVPCeqbO+RHRHFK5dosiUmGL2NaVZjsVZqniyeBVUTq8U6QLw2Ao9CFrxBqzpLXm2m
 d6lk6OCNPggr9o2lXdZc5loBr2mFST9h/6CC6wzHZEJmIqkzIwkaswh6L4k6u2qBwedP
 tcs2Mim26G3T0MdCsNJlLLBeqKqGAgdA+KE8heH/tfiPfREQnsJFRJ5lOkxUvlKdrhH6
 sZ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=fl44Qdgvc5qqO8fXjvD0IhwD/4PIb8ojo5zkF0IptrU=;
 b=FkUASqvBek9rLkiS87CVWhoqwFgwinMu8YzMjWdXCQyUAKJqPQHTRU8GmZoDP8NXDM
 BADNEoFjiU4C5iY3Tbx6GtuaCkGFYqg3QpcR2WsxnQIAMjJkwpg0wdUTsZeaJ45Dcjse
 oPSYRJnXrGzv9twgk9PsmjEiOvUHixWcHfeaDJrQKXMboxlHprBgZ9CAtZ43PmQlCuzY
 xgHXKoTXda3OSaVkCBVTW7PtRzKTLCIvvDPQjvPeHjw5i3h/+j8yUMK+aQ5jdlyuOOOX
 OqNiR2wIkTItezv/sEGrYtaqcywB1+xTZdlDiVLCxU9hhk2c7U1nvFB7wWnRn9WQMlpA
 Q5LQ==
X-Gm-Message-State: AOAM530w18Es2CM2Knynqd56oqF0L7twj8VCE621VYmKPPMzaflKgSoE
 mF4bkD9OG1T0rF/6sAvJ32o=
X-Google-Smtp-Source: ABdhPJy0k7DsVVFaohURJmno3Y57eZ9mTpyZUG5n7aFQkxro38UFfTiqD+TVKxJRApKh9FyEjk0Ttg==
X-Received: by 2002:a17:902:c142:: with SMTP id
 2mr65090258plj.222.1594471611043; 
 Sat, 11 Jul 2020 05:46:51 -0700 (PDT)
Received: from blackclown ([103.88.82.158])
 by smtp.gmail.com with ESMTPSA id s131sm8662636pgc.30.2020.07.11.05.46.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 11 Jul 2020 05:46:50 -0700 (PDT)
Date: Sat, 11 Jul 2020 18:16:33 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: manishrc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: qlge: Remove pci-dma-compat wrapper APIs.
Message-ID: <20200711124633.GA16459@blackclown>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6030917221637572850=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6030917221637572850==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline


--EeQfGwPcQSOJBaQU
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
        in the post https://marc.info/?l=3Dkernel-janitors&m=3D158745678307=
186&w=3D4
        on kernel-janitors Mailing List.

 drivers/staging/qlge/qlge_mpi.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mp=
i.c
index fa178fc642a6..16a9bf818346 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -788,8 +788,9 @@ int ql_dump_risc_ram_area(struct ql_adapter *qdev, void=
 *buf,
 	char *my_buf;
 	dma_addr_t buf_dma;
=20
-	my_buf =3D pci_alloc_consistent(qdev->pdev, word_count * sizeof(u32),
-				      &buf_dma);
+	my_buf =3D dma_alloc_coherent(&qdev->pdev->dev,
+				    word_count * sizeof(u32), &buf_dma,
+				    GFP_ATOMIC);
 	if (!my_buf)
 		return -EIO;
=20
@@ -797,8 +798,8 @@ int ql_dump_risc_ram_area(struct ql_adapter *qdev, void=
 *buf,
 	if (!status)
 		memcpy(buf, my_buf, word_count * sizeof(u32));
=20
-	pci_free_consistent(qdev->pdev, word_count * sizeof(u32), my_buf,
-			    buf_dma);
+	dma_free_coherent(&qdev->pdev->dev, word_count * sizeof(u32), my_buf,
+			  buf_dma);
 	return status;
 }
=20
--=20
2.17.1


--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8JtKkACgkQ+gRsbIfe
747D0g//R1ChLyHMnDJc6GeilVs7gCG2zUGsdaMK4qr11DUt+48TbVyHwFp64/3p
QKmTK3rsaIOTFIonk8mhSll/foS6mpVBv4NXFWpCOSeyqPSvyYiCWyH8ZoAr7l06
k6mL6QYZwVczVRXt/+hStzVLef9ToEEjzmdLJbP9JWuew9xSqfVbyNDV4TvgERmi
3JuzM6gFCBR/nLdisBkEVKU4hrjGwHc2DRO96bSFPJtwwLnTXwZc+QDv10H9r1JY
tVzaGa8czpsYlJv67vBRZ3Isym4iGb4ri94kICBTSfvZGdyE/HaWPqpEZzobOALK
kBwFP65T0r3j+i+QEOeK3r3DwI96BX8qjzMzWu4C9D/vzIwlD4weyvmg2MM/mD44
YlEucF2PhOrqWYlkYE1/JApT/7h3AaOe2SQ9cYmvTeDHWeNUrfcfr9yc13LaVJwW
NVpKez7TQxzQ5YupsSctM8fiZIrS5uxIzXA9JKLM7HW6f4OJ8sN9wux1O8cCnrv5
RIJw4bME/C6ihNJMNZQU/v8VGS9L9v+Ryw2AU7gs4mSA5M0JZUT1SduejM/SFsp8
oCH1WATqdz/EG7mBC6N+m9sI8zdUeKUaRZsIvIXjYsrvoeU0g6d0OY4gAQZwx37v
Ohot02UCvSuBoqXngEb/IGyh0GnuPCug68YBOPTYZNyuFhgy80Q=
=/Cjw
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--

--===============6030917221637572850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6030917221637572850==--
