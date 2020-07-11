Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A9321C45F
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jul 2020 15:17:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2ADD889297;
	Sat, 11 Jul 2020 13:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GZgrXWJF+FVl; Sat, 11 Jul 2020 13:16:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 95EDC88CB8;
	Sat, 11 Jul 2020 13:16:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E840A1BF29E
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 13:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2A0E88648
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 13:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E6IiQx7N-dah for <devel@linuxdriverproject.org>;
 Sat, 11 Jul 2020 13:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5141E885CC
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 13:16:39 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id j19so3767293pgm.11
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 06:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zWPFWZ7nY1yjdraK2wS+KgXEaieNv2NevddKOt7JQVc=;
 b=bE8Ko1ClEYTQBL3sYEndGbLZzLBfu0J0T4sgcj7bcNZ3cb42+oeM7Ub5vJXLvVDmHH
 OMyN3JXUHVUYShw9HZ5W6KiaMxz8kPF917Tl9nl1Ez9/HLSrhtJiOgmq/fVqfLPp1UBp
 5Rax4YpgPK3MDT67P/724UyGiv5ILwSU9385zAeUQuiMykw2ln2TaoCBoMoIhAeoLWWa
 RFezY8tVZCa2Kp0bKX27YklDhdHI8746vVO5VkFclUNG20ng6Y4B/tcuwgKbcf13p3AS
 jBU+LqaPqop/u1ZlBYEASSsJkHJeVeFQ4fgNQGFz5Tt2VsaCQPDoEUtW0blXUkp2W+Jj
 +Y7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zWPFWZ7nY1yjdraK2wS+KgXEaieNv2NevddKOt7JQVc=;
 b=GDPi0JTq8uP8nE5trE5YVqObLBFthLYg/Pu2mGidp4Uoyqwh1Ed363a0KOTW/H7VvC
 43oNPzkEohD+pqLtYKHimWrY4kez9B+dcYzx/JKRk1jfPmjTKzrWWynTumITtV0J8eoE
 hTxBg2Az2u/QYPs3NXlrLIpuzK5jGXRvhT4O9X1BIuTO9MbgKiEJ9T4LNdzze4w77RLv
 B6l8/D+thSpq5uxr415uCjYiPa07XcXr7OrB2HOiMcSG212zUK0Cgh9l/ejxYiNLBxFc
 W4fvNDVtt45cD99j4egCt44AsVbyaxtDGq+UB7J44ivnu28Od7dpBqgamp29M4ciHFfj
 aX3A==
X-Gm-Message-State: AOAM5310JvPmeGeUJgnPtnIBKKzMX9SQk31B6WrjikgEAF7z/F7hh9OC
 H/NFrluhLgZlyCKacjxj7PQ=
X-Google-Smtp-Source: ABdhPJxnZH3Ne7c9a6HuT6N1wRXeETGpJI4+TxMtrXVE9fLl/rjCbmQ+4oJFiuJeYvo1CwJpjChmIQ==
X-Received: by 2002:a05:6a00:84e:: with SMTP id
 q14mr67622989pfk.309.1594473398850; 
 Sat, 11 Jul 2020 06:16:38 -0700 (PDT)
Received: from blackclown ([103.88.82.158])
 by smtp.gmail.com with ESMTPSA id k3sm8772212pjl.15.2020.07.11.06.16.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 11 Jul 2020 06:16:38 -0700 (PDT)
Date: Sat, 11 Jul 2020 18:46:24 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: rtl8192E_dev: Remove pci-dma-compat
 wrapper APIs.
Message-ID: <20200711131623.GA20537@blackclown>
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
Content-Type: multipart/mixed; boundary="===============3959823460469055494=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3959823460469055494==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RnlQjJ0d97Da+TV1"
Content-Disposition: inline


--RnlQjJ0d97Da+TV1
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

 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/stagi=
ng/rtl8192e/rtl8192e/r8192E_dev.c
index ddcd7885d190..9f869fb3eaa8 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -1215,9 +1215,9 @@ void  rtl92e_fill_tx_desc(struct net_device *dev, str=
uct tx_desc *pdesc,
=20
 	memset((u8 *)pdesc, 0, 12);
=20
-	mapping =3D pci_map_single(priv->pdev, skb->data, skb->len,
-				 PCI_DMA_TODEVICE);
-	if (pci_dma_mapping_error(priv->pdev, mapping)) {
+	mapping =3D dma_map_single(&priv->pdev->dev, skb->data, skb->len,
+				 DMA_TO_DEVICE);
+	if (dma_mapping_error(&priv->pdev->dev, mapping)) {
 		netdev_err(dev, "%s(): DMA Mapping error\n", __func__);
 		return;
 	}
@@ -1282,10 +1282,10 @@ void  rtl92e_fill_tx_cmd_desc(struct net_device *de=
v, struct tx_desc_cmd *entry,
 			      struct cb_desc *cb_desc, struct sk_buff *skb)
 {
 	struct r8192_priv *priv =3D rtllib_priv(dev);
-	dma_addr_t mapping =3D pci_map_single(priv->pdev, skb->data, skb->len,
-			 PCI_DMA_TODEVICE);
+	dma_addr_t mapping =3D dma_map_single(&priv->pdev->dev, skb->data,
+					    skb->len, DMA_TO_DEVICE);
=20
-	if (pci_dma_mapping_error(priv->pdev, mapping))
+	if (dma_mapping_error(&priv->pdev->dev, mapping))
 		netdev_err(dev, "%s(): DMA Mapping error\n", __func__);
 	memset(entry, 0, 12);
 	entry->LINIP =3D cb_desc->bLastIniPkt;
--=20
2.17.1


--RnlQjJ0d97Da+TV1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8Ju6cACgkQ+gRsbIfe
746PVQ/5AdOPy5H4YQEgLsRgxPsin6vIQ3UZ+Vr0vVs8wXO6/gwM3vRqzwC50E//
kHmoWWc90Fc1bnVigYowL3tjnwErmWei0OBX52r9bJV4aSAjiJNAXjVPeMps6z4G
ifOSG8gLacQBuEf+3E4gEKKwcXjaAqcOtO2mfEZLuwZEwBV3PieolxgomsfbfydH
ukV9yyNS4aVXyc0uH8VGQ0EG79xYeXBrmyYzrLVI5o+kzkduKwfDITLf7FNZd/5U
78yRnSvLuqb8c+g2b3TBVkc6wWPEArgAr8BQpIP6UdJ7KRt9pMk1ls8guoaNqc5i
1iu/md3xVvR9en4BuMTCfUQJwgVxgu7q95YhSYV/Wm/mY6ZaC2paay4sARJ9IdhH
cyWpopEMltqiRnhB4AaPYtkScvNRih4iEUdrPUWeL64bVLUaFQ16DVp6sxxwvRjX
vAaN6wKz6RRkxpJwWtA6lmRFcUvC2Xp3xxQdpgqpMTFzBhNlxoA7AkID0hiUpX5r
HCcLuKiQyzDi+tdVkHkcSLRyMI+jbylX1bWVb0MQ7mKvVNRgbGdhhoz8BV0GsUC0
frU3VT9e/qBxggOPHoGQwAjnI0+4DaB/xzfXF3b9ZbRJDT4VJ3/ZybmpYjpOMRCX
9XzrZLozt2KXFj2koVerZ/QsulfNWUuwfIwWQGHAI8u627LL4pM=
=jxWP
-----END PGP SIGNATURE-----

--RnlQjJ0d97Da+TV1--

--===============3959823460469055494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3959823460469055494==--
