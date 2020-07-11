Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 757FF21C465
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jul 2020 15:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 206DB883BE;
	Sat, 11 Jul 2020 13:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jj1sn85aCY-Q; Sat, 11 Jul 2020 13:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E88188806F;
	Sat, 11 Jul 2020 13:24:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F3F41BF29E
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 13:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 19DFA203DE
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 13:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3hSZmlZp4SUw for <devel@linuxdriverproject.org>;
 Sat, 11 Jul 2020 13:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 7B353203DD
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 13:24:04 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id u18so3779040pfk.10
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 06:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=jkqCB6rwltR0PLW6W8Tf/AHK3b3SNSzPlhoy+LsjjRE=;
 b=ZZrUFjg9JsLOtJwsM3vKb1eaqYGELbv7jee35aOeLU3QPGrUVaVeFdGIcXcwRq5YE9
 cFzApdeIED2Fi44mi/B9mcUrtLg0azVeVWH2spQxARf7rai4f9+WZ1seB2Czp2YyIm/v
 v2EIfiiB4nGD8GPRiv8+g1bWsAv2YcY+31//Dfuz14lpA57tlCJLDYNqyT7LFKLBkuY7
 Z/XVBwqjyKlQUWuhlTK7AhbN8p/cB5kNRUEmvbD0O3dyG4MIg2uOhEJaPenfUfyhr1dB
 ssCum+VuRY1JkgDiNH9Iz7DZfFAYtcMimsefD/sWzwDYfJBdpLul5n8jEv3ELvkYxdme
 pVmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=jkqCB6rwltR0PLW6W8Tf/AHK3b3SNSzPlhoy+LsjjRE=;
 b=V0ejRUz5F5w6ezhuz9A6JhIKSCc9mA/MCx1ivANCUHGN4us8An1a9RI/No2LdCcPJ/
 ZDvMdGCHz8mVnUE06IMiXDXJKMhqw2jakZruo9q76ja30RJAo3EzpZiybM4p910kXXXm
 LZRA6L3Yf8nVJiCRcHeVtNmDImCmmbHFyhR1//ODVUJQepsiUSQeNwXbIwDXrsTHuMNs
 rJb2n0Px6T3e9l1ZpcIfGI1kSie4Brzfgc2E07aPCpBACuyYEtzY6KVYDGwcqPR4qX0J
 xN/ijLg/5xOr+LQBE2gjuK1nCDmeZrAclk42RTWLzYa+J+Uk5HzArXPvVzW09XSfASnX
 Ta3Q==
X-Gm-Message-State: AOAM531JutwaBQM6S+51sSEztcVIgnNS/N3fxiD7gOMg5knP4A9Fe4go
 h1GakPNzO5/Z5UwURrAZ1fQ=
X-Google-Smtp-Source: ABdhPJzT+zN0PGFENRNLHFFW4jYdeb/FC0muUJel0utJcv92/Mx31jCUQiU2Q3NcXEEe73lBz2vCiQ==
X-Received: by 2002:a62:86cc:: with SMTP id x195mr60095050pfd.39.1594473844011; 
 Sat, 11 Jul 2020 06:24:04 -0700 (PDT)
Received: from blackclown ([103.88.82.158])
 by smtp.gmail.com with ESMTPSA id j36sm8826757pgj.39.2020.07.11.06.24.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 11 Jul 2020 06:24:03 -0700 (PDT)
Date: Sat, 11 Jul 2020 18:53:49 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: rtl_core: Remove pci-dma-compat wrapper
 APIs.
Message-ID: <20200711132349.GA21618@blackclown>
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
Content-Type: multipart/mixed; boundary="===============0606261767778410944=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0606261767778410944==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline


--oyUTqETQ0mS9luUI
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
+ dma_map_single(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4; @@
- pci_unmap_single(E1, E2, E3, E4)
+ dma_unmap_single(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4, E5; @@
- pci_map_page(E1, E2, E3, E4, E5)
+ dma_map_page(&E1->dev, E2, E3, E4, E5)

@@ expression E1, E2, E3, E4; @@
- pci_unmap_page(E1, E2, E3, E4)
+ dma_unmap_page(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4; @@
- pci_map_sg(E1, E2, E3, E4)
+ dma_map_sg(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4; @@
- pci_unmap_sg(E1, E2, E3, E4)
+ dma_unmap_sg(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4; @@
- pci_dma_sync_single_for_cpu(E1, E2, E3, E4)
+ dma_sync_single_for_cpu(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4; @@
- pci_dma_sync_single_for_device(E1, E2, E3, E4)
+ dma_sync_single_for_device(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4; @@
- pci_dma_sync_sg_for_cpu(E1, E2, E3, E4)
+ dma_sync_sg_for_cpu(&E1->dev, E2, E3, E4)

@@ expression E1, E2, E3, E4; @@
- pci_dma_sync_sg_for_device(E1, E2, E3, E4)
+ dma_sync_sg_for_device(&E1->dev, E2, E3, E4)

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

 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 71 ++++++++++----------
 1 file changed, 34 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging=
/rtl8192e/rtl8192e/rtl_core.c
index dbcb8d0d9707..fac58eebf263 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -1558,17 +1558,16 @@ static void _rtl92e_free_rx_ring(struct net_device =
*dev)
 			if (!skb)
 				continue;
=20
-			pci_unmap_single(priv->pdev,
-				*((dma_addr_t *)skb->cb),
-				priv->rxbuffersize, PCI_DMA_FROMDEVICE);
+			dma_unmap_single(&priv->pdev->dev,
+					 *((dma_addr_t *)skb->cb),
+					 priv->rxbuffersize, DMA_FROM_DEVICE);
 			kfree_skb(skb);
 		}
=20
-		pci_free_consistent(priv->pdev,
-			sizeof(*priv->rx_ring[rx_queue_idx]) *
-			priv->rxringcount,
-			priv->rx_ring[rx_queue_idx],
-			priv->rx_ring_dma[rx_queue_idx]);
+		dma_free_coherent(&priv->pdev->dev,
+				  sizeof(*priv->rx_ring[rx_queue_idx]) * priv->rxringcount,
+				  priv->rx_ring[rx_queue_idx],
+				  priv->rx_ring_dma[rx_queue_idx]);
 		priv->rx_ring[rx_queue_idx] =3D NULL;
 	}
 }
@@ -1582,14 +1581,15 @@ static void _rtl92e_free_tx_ring(struct net_device =
*dev, unsigned int prio)
 		struct tx_desc *entry =3D &ring->desc[ring->idx];
 		struct sk_buff *skb =3D __skb_dequeue(&ring->queue);
=20
-		pci_unmap_single(priv->pdev, entry->TxBuffAddr,
-			skb->len, PCI_DMA_TODEVICE);
+		dma_unmap_single(&priv->pdev->dev, entry->TxBuffAddr,
+				 skb->len, DMA_TO_DEVICE);
 		kfree_skb(skb);
 		ring->idx =3D (ring->idx + 1) % ring->entries;
 	}
=20
-	pci_free_consistent(priv->pdev, sizeof(*ring->desc) * ring->entries,
-	ring->desc, ring->dma);
+	dma_free_coherent(&priv->pdev->dev,
+			  sizeof(*ring->desc) * ring->entries, ring->desc,
+			  ring->dma);
 	ring->desc =3D NULL;
 }
=20
@@ -1676,8 +1676,8 @@ static void _rtl92e_tx_isr(struct net_device *dev, in=
t prio)
 		}
=20
 		skb =3D __skb_dequeue(&ring->queue);
-		pci_unmap_single(priv->pdev, entry->TxBuffAddr,
-		skb->len, PCI_DMA_TODEVICE);
+		dma_unmap_single(&priv->pdev->dev, entry->TxBuffAddr,
+				 skb->len, DMA_TO_DEVICE);
=20
 		kfree_skb(skb);
 	}
@@ -1782,9 +1782,10 @@ static short _rtl92e_alloc_rx_ring(struct net_device=
 *dev)
 	int i, rx_queue_idx;
=20
 	for (rx_queue_idx =3D 0; rx_queue_idx < MAX_RX_QUEUE; rx_queue_idx++) {
-		priv->rx_ring[rx_queue_idx] =3D pci_zalloc_consistent(priv->pdev,
-					      sizeof(*priv->rx_ring[rx_queue_idx]) * priv->rxringcount,
-					      &priv->rx_ring_dma[rx_queue_idx]);
+		priv->rx_ring[rx_queue_idx] =3D dma_alloc_coherent(&priv->pdev->dev,
+								 sizeof(*priv->rx_ring[rx_queue_idx]) * priv->rxringcount,
+								 &priv->rx_ring_dma[rx_queue_idx],
+								 GFP_ATOMIC);
 		if (!priv->rx_ring[rx_queue_idx] ||
 		    (unsigned long)priv->rx_ring[rx_queue_idx] & 0xFF) {
 			netdev_warn(dev, "Cannot allocate RX ring\n");
@@ -1803,11 +1804,10 @@ static short _rtl92e_alloc_rx_ring(struct net_devic=
e *dev)
 			skb->dev =3D dev;
 			priv->rx_buf[rx_queue_idx][i] =3D skb;
 			mapping =3D (dma_addr_t *)skb->cb;
-			*mapping =3D pci_map_single(priv->pdev,
+			*mapping =3D dma_map_single(&priv->pdev->dev,
 						  skb_tail_pointer_rsl(skb),
-						  priv->rxbuffersize,
-						  PCI_DMA_FROMDEVICE);
-			if (pci_dma_mapping_error(priv->pdev, *mapping)) {
+						  priv->rxbuffersize, DMA_FROM_DEVICE);
+			if (dma_mapping_error(&priv->pdev->dev, *mapping)) {
 				dev_kfree_skb_any(skb);
 				return -1;
 			}
@@ -1831,7 +1831,8 @@ static int _rtl92e_alloc_tx_ring(struct net_device *d=
ev, unsigned int prio,
 	dma_addr_t dma;
 	int i;
=20
-	ring =3D pci_zalloc_consistent(priv->pdev, sizeof(*ring) * entries, &dma);
+	ring =3D dma_alloc_coherent(&priv->pdev->dev, sizeof(*ring) * entries,
+				  &dma, GFP_ATOMIC);
 	if (!ring || (unsigned long)ring & 0xFF) {
 		netdev_warn(dev, "Cannot allocate TX ring (prio =3D %d)\n", prio);
 		return -ENOMEM;
@@ -1905,9 +1906,9 @@ void rtl92e_reset_desc_ring(struct net_device *dev)
 				struct sk_buff *skb =3D
 						 __skb_dequeue(&ring->queue);
=20
-				pci_unmap_single(priv->pdev,
-						 entry->TxBuffAddr,
-						 skb->len, PCI_DMA_TODEVICE);
+				dma_unmap_single(&priv->pdev->dev,
+						 entry->TxBuffAddr, skb->len,
+						 DMA_TO_DEVICE);
 				kfree_skb(skb);
 				ring->idx =3D (ring->idx + 1) % ring->entries;
 			}
@@ -2028,10 +2029,8 @@ static void _rtl92e_rx_normal(struct net_device *dev)
 		if (unlikely(!new_skb))
 			goto done;
=20
-		pci_unmap_single(priv->pdev,
-				*((dma_addr_t *)skb->cb),
-				priv->rxbuffersize,
-				PCI_DMA_FROMDEVICE);
+		dma_unmap_single(&priv->pdev->dev, *((dma_addr_t *)skb->cb),
+				 priv->rxbuffersize, DMA_FROM_DEVICE);
=20
 		skb_put(skb, pdesc->Length);
 		skb_reserve(skb, stats.RxDrvInfoSize +
@@ -2074,12 +2073,10 @@ static void _rtl92e_rx_normal(struct net_device *de=
v)
=20
 		priv->rx_buf[rx_queue_idx][priv->rx_idx[rx_queue_idx]] =3D
 								 skb;
-		*((dma_addr_t *)skb->cb) =3D pci_map_single(priv->pdev,
-					    skb_tail_pointer_rsl(skb),
-					    priv->rxbuffersize,
-					    PCI_DMA_FROMDEVICE);
-		if (pci_dma_mapping_error(priv->pdev,
-					  *((dma_addr_t *)skb->cb))) {
+		*((dma_addr_t *)skb->cb) =3D dma_map_single(&priv->pdev->dev,
+							  skb_tail_pointer_rsl(skb),
+							  priv->rxbuffersize, DMA_FROM_DEVICE);
+		if (dma_mapping_error(&priv->pdev->dev, *((dma_addr_t *)skb->cb))) {
 			dev_kfree_skb_any(skb);
 			return;
 		}
@@ -2417,8 +2414,8 @@ static int _rtl92e_pci_probe(struct pci_dev *pdev,
=20
 	pci_set_master(pdev);
=20
-	if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(32))) {
-		if (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32))) {
+	if (!dma_set_mask(&pdev->dev, DMA_BIT_MASK(32))) {
+		if (dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32))) {
 			dev_info(&pdev->dev,
 				 "Unable to obtain 32bit DMA for consistent allocations\n");
 			goto err_pci_disable;
--=20
2.17.1


--oyUTqETQ0mS9luUI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8JvWQACgkQ+gRsbIfe
745NdRAApaDp2Mho03Q9fdMVKJ2j7zNLqX7Ow4YnNYk5pVGxu3DF/ER/G3Ke3IDO
UpCoXjQLOykIMkJOK4VK48sBgJ5XE2YrbL2azghcCfXy6N97JwcZNPoGsQhJObiv
MTCU5TPoPWOF7++yluvnAZY5voBdghA1MRK3Vcs/0twf5kTNQmEAVQHx/NezsV7y
vUzBFTJWM1G4fgAe6cLiCPbQ3FK0S2mdIv0oJn+qIbvLEEwhLyYtRrDmo+rIgqvk
YICkWbUOnNMQQXS8Hx0o6cbNdlX8+VjTWRRNmMxPkKzmYpVRsHdZG7W71oAontwj
VltKqj+lS6qGV+NBoOzeGa+VJPFvOL9MtB5LcOE3o8DAVzNKNsQLFtRVVlH+w4Ra
jv3uZM6se4UHOP8M5GJnV1Ks+ciwiSN68vRrVzbboygnB+zWzAwyGo+sSf7tw0k7
JCHCDFNyrBrNfM2OEMNZLYHZNleub3n6tKnoFmkQU0OPaW8QS04arltEIspWvTxO
1c2eYghSRbBl7tjH+LAQxXew3vKy/iBlAfHjw8lmVaDh95iYj82lQXPCgOKEEV4Y
0Up7taLy7LqIkjTZyJoqypzxp5Je05w0SjbHi8wVrfiDDMjfAkVG/oxnv9z1lPve
yMjDAFXIRV6jVE9AmTs04+KWNqlNALiLEWo6hBUehlf7bh33ygU=
=TBaA
-----END PGP SIGNATURE-----

--oyUTqETQ0mS9luUI--

--===============0606261767778410944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0606261767778410944==--
