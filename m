Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE55021D5B1
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 14:20:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A8CF26282;
	Mon, 13 Jul 2020 12:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OrvAYk-sCAox; Mon, 13 Jul 2020 12:20:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C176261B3;
	Mon, 13 Jul 2020 12:20:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8FE1BF3F6
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5FA2588BD0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uW4H71ZqJ5uh for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 12:20:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F41EE88B2E
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 12:20:28 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id u5so5932637pfn.7
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 05:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GaetccreuBpWFF0zDdzZxG6ysdRbk3bGWayedX9In8s=;
 b=Wyr/GR209trsyuYPiQCNonIiDawDYpUODlV1tnDs4jV/qWPyeGOc6z/gJPV7+CDklE
 55O+fhZHffhBkHqUx0tVLWaqp3vKPN9e5UIF6LKryy/lYKCLgIVVfK/8iQe/LQJVLW0j
 e/UGFA3AGs255AFXaFcBDPKYFnkTnDMki0PmrzNplSZhuHWdiqU9GAc59gzgqhnmd9/T
 wxcJYYSKHnt6gCSboDGPCuhghbd5xBX+IiFsJnOrNk+ojyGZfGd/yzNR6yYWL2GrGRMx
 GdJojIBnC8jbyEh/YPy4BOOSuvwX0UhJC3P3W/B940hVncYvtSgT6TKdNPDWy83M3H/H
 5d4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GaetccreuBpWFF0zDdzZxG6ysdRbk3bGWayedX9In8s=;
 b=I0EfvwEWq8FftM8PLcCi+AUhC0EhVFKjH20FSASynlQLOPP7fOO+jfs52xTE1Kjbk3
 FP4qH8PxrGSOYRoYOVm1IKUmvkAJrz/P0U9VsB/X2F69+j+mYoz4/ViPLX5DzR1Ejtfk
 9UPvDumkXXH12frMqib0HQRiu2gamYaPizcI20VYgSd3fSeiWJmB9upD4STJS6SUm1AD
 S06MwFUWGUkAWi0eykZAedTfVmFkeVT0pqKNWHO0ty1BDdIjD/YDjQ17Gvf+YfVkiu1H
 1qkY4dNyDVKbkGsCK0mnfkohKMjXxFmpeP5rqo6DY6ucryejD5itUWYbzleJjBbQUk2C
 XYWw==
X-Gm-Message-State: AOAM532F2T5nMmwsi+nwSG/s0cM4DTLXsURFWuSEzGHNvqcML0L+lzU8
 6Kgb9YLjCH0n6XD8A+QGel8=
X-Google-Smtp-Source: ABdhPJzg4rJOWneXnoL1gFYfeWYkfBwlQ0Iu6+qq4paslDIPZYSgG2gIxYnrYrO5y/SSYaimG9RdrA==
X-Received: by 2002:a65:4349:: with SMTP id k9mr43161952pgq.404.1594642828537; 
 Mon, 13 Jul 2020 05:20:28 -0700 (PDT)
Received: from blackclown ([103.88.82.220])
 by smtp.gmail.com with ESMTPSA id o12sm14902193pfu.188.2020.07.13.05.20.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jul 2020 05:20:27 -0700 (PDT)
Date: Mon, 13 Jul 2020 17:50:14 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org
Subject: [PATCH 4/6] staging: qlge: qlge_main: Simplify while statements.
Message-ID: <1bb472c5595d832221fd142dddb68907feeeecbe.1594642213.git.usuraj35@gmail.com>
References: <cover.1594642213.git.usuraj35@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1594642213.git.usuraj35@gmail.com>
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
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1510705238402605614=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1510705238402605614==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline


--opJtzjQTFsWo+cga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Simplify while loops into more readable and simple for loops.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 49 ++++++++++++++------------------
 1 file changed, 22 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_m=
ain.c
index f7e26defb844..98710d3d4429 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -138,13 +138,11 @@ static int ql_sem_trylock(struct ql_adapter *qdev, u3=
2 sem_mask)
=20
 int ql_sem_spinlock(struct ql_adapter *qdev, u32 sem_mask)
 {
-	unsigned int wait_count =3D 30;
+	unsigned int wait_count;

-	do {
+	for (wait_count =3D 30; wait_count; wait_count--) {
 		if (!ql_sem_trylock(qdev, sem_mask))
 			return 0;
 		udelay(100);
-	} while (--wait_count);
+	}
 	return -ETIMEDOUT;
 }
=20
@@ -1101,7 +1099,7 @@ static int qlge_refill_bq(struct qlge_bq *bq, gfp_t g=
fp)
 	i =3D bq->next_to_use;
 	bq_desc =3D &bq->queue[i];
 	i -=3D QLGE_BQ_LEN;
-	do {
+	for (; refill_count; refill_count--) {
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "ring %u %s: try cleaning idx %d\n",
 			     rx_ring->cq_id, bq_type_name[bq->type], i);
@@ -1123,8 +1121,7 @@ static int qlge_refill_bq(struct qlge_bq *bq, gfp_t g=
fp)
 			bq_desc =3D &bq->queue[0];
 			i -=3D QLGE_BQ_LEN;
 		}
-		refill_count--;
-	} while (refill_count);
+	}
 	i +=3D QLGE_BQ_LEN;
=20
 	if (bq->next_to_use !=3D i) {
@@ -1824,7 +1821,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adap=
ter *qdev,
 			sbq_desc->p.skb =3D NULL;
 			skb_reserve(skb, NET_IP_ALIGN);
 		}
-		do {
+		for (; length > 0; length -=3D size, i++) {
 			lbq_desc =3D ql_get_curr_lchunk(qdev, rx_ring);
 			size =3D min(length, qdev->lbq_buf_size);
=20
@@ -1839,7 +1836,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adap=
ter *qdev,
 			skb->truesize +=3D size;
 			length -=3D size;
 			i++;
-		} while (length > 0);
+		}
 		ql_update_mac_hdr_len(qdev, ib_mac_rsp, lbq_desc->p.pg_chunk.va,
 				      &hlen);
 		__pskb_pull_tail(skb, hlen);
@@ -2098,11 +2095,11 @@ static int ql_clean_outbound_rx_ring(struct rx_ring=
 *rx_ring)
 	struct ql_adapter *qdev =3D rx_ring->qdev;
 	u32 prod =3D ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
 	struct ob_mac_iocb_rsp *net_rsp =3D NULL;
-	int count =3D 0;
+	int count;
=20
 	struct tx_ring *tx_ring;
 	/* While there are entries in the completion queue. */
-	while (prod !=3D rx_ring->cnsmr_idx) {
+	for (count =3D 0; prod !=3D rx_ring->cnsmr_idx; count++) {
=20
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "cq_id =3D %d, prod =3D %d, cnsmr =3D %d\n",
@@ -2121,7 +2118,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *=
rx_ring)
 				     "Hit default case, not handled! dropping the packet, opcode =3D %=
x.\n",
 				     net_rsp->opcode);
 		}
-		count++;
 		ql_update_cq(rx_ring);
 		prod =3D ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
 	}
@@ -2146,10 +2142,10 @@ static int ql_clean_inbound_rx_ring(struct rx_ring =
*rx_ring, int budget)
 	struct ql_adapter *qdev =3D rx_ring->qdev;
 	u32 prod =3D ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
 	struct ql_net_rsp_iocb *net_rsp;
-	int count =3D 0;
+	int count;
=20
 	/* While there are entries in the completion queue. */
-	while (prod !=3D rx_ring->cnsmr_idx) {
+	for (count =3D 0; prod !=3D rx_ring->cnsmr_idx; count++) {
=20
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "cq_id =3D %d, prod =3D %d, cnsmr =3D %d\n",
@@ -2174,7 +2170,6 @@ static int ql_clean_inbound_rx_ring(struct rx_ring *r=
x_ring, int budget)
 				     net_rsp->opcode);
 			break;
 		}
-		count++;
 		ql_update_cq(rx_ring);
 		prod =3D ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
 		if (count =3D=3D budget)
@@ -3026,13 +3021,12 @@ static int ql_start_rx_ring(struct ql_adapter *qdev=
, struct rx_ring *rx_ring)
 		cqicb->flags |=3D FLAGS_LL;	/* Load lbq values */
 		tmp =3D (u64)rx_ring->lbq.base_dma;
 		base_indirect_ptr =3D rx_ring->lbq.base_indirect;
-		page_entries =3D 0;
-		do {
+
+		for (page_entries =3D 0; page_entries < MAX_DB_PAGES_PER_BQ(QLGE_BQ_LEN);
+		     page_entries++, base_indirect_ptr++) {
 			*base_indirect_ptr =3D cpu_to_le64(tmp);
 			tmp +=3D DB_PAGE_SIZE;
-			base_indirect_ptr++;
-			page_entries++;
-		} while (page_entries < MAX_DB_PAGES_PER_BQ(QLGE_BQ_LEN));
+		}
 		cqicb->lbq_addr =3D cpu_to_le64(rx_ring->lbq.base_indirect_dma);
 		cqicb->lbq_buf_size =3D
 			cpu_to_le16(QLGE_FIT16(qdev->lbq_buf_size));
@@ -3043,13 +3037,12 @@ static int ql_start_rx_ring(struct ql_adapter *qdev=
, struct rx_ring *rx_ring)
 		cqicb->flags |=3D FLAGS_LS;	/* Load sbq values */
 		tmp =3D (u64)rx_ring->sbq.base_dma;
 		base_indirect_ptr =3D rx_ring->sbq.base_indirect;
-		page_entries =3D 0;
-		do {
+
+		for (page_entries =3D 0; page_entries < MAX_DB_PAGES_PER_BQ(QLGE_BQ_LEN);
+		     page_entries++, base_indirect_ptr++) {
 			*base_indirect_ptr =3D cpu_to_le64(tmp);
 			tmp +=3D DB_PAGE_SIZE;
-			base_indirect_ptr++;
-			page_entries++;
-		} while (page_entries < MAX_DB_PAGES_PER_BQ(QLGE_BQ_LEN));
+		}
 		cqicb->sbq_addr =3D
 		    cpu_to_le64(rx_ring->sbq.base_indirect_dma);
 		cqicb->sbq_buf_size =3D cpu_to_le16(SMALL_BUFFER_SIZE);
@@ -4036,9 +4029,11 @@ static int ql_change_rx_buffers(struct ql_adapter *q=
dev)
=20
 	/* Wait for an outstanding reset to complete. */
 	if (!test_bit(QL_ADAPTER_UP, &qdev->flags)) {
-		int i =3D 4;
+		int i;
=20
-		while (--i && !test_bit(QL_ADAPTER_UP, &qdev->flags)) {
+		for (i =3D 3; i; i--) {
+			if test_bit(QL_ADAPTER_UP, &qdev->flags)
+				break;
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Waiting for adapter UP...\n");
 			ssleep(1);
--=20
2.17.1


--opJtzjQTFsWo+cga
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8MUX4ACgkQ+gRsbIfe
747F3xAAmyrP1GwDZmqAd51u4CcyuNThih8phCL/D6By3QmFiKai+JclUhobitxk
sOiPTq2HrhbpKyQcb+FOkdWc0Y9VXl0FmAaYkK77swoBYbh1P2ISxF0t/ibnRvFd
KWvjYeVZx0RR0/QIUkbkrxTx+PAgE/1LaZ/z0EcFTGg5dL6nzOzmf4rY4twi2I0l
Pa4jIGuYmnuJk9tc3fXpkoLJA7pLbuWkNKoOiUCbSVVOMLKjtDkDU4DKlA3Ed/tA
cGzNWa4phly5qDLWYYgjy9hZHK1KQpWNv1ZW6MJWfsr9mAm6CU19HhtgJWe4qkOo
Nam2YAdTV0cqCpi7/iWeeekElO+kumATkock7+yUNiToIghyL/NGxxxBDux92wet
I9KSoVeVPCcPJnavSRnqOwjdUGFmrQy+aHj1+60optgTYdHgHVgxfPercdl+cIsv
eedfIHdcnB30wevSQIzxZoRxXF9ls5bL3UD1vf4EeohOTyljC84BwNugn57q1pQT
+Yt9peNh4WaMfHX9h24rETmilin5QFzA+in94v/IcKO9srHSQo+giouDrNseHOFK
eaTmTrBwoExZBoySMn53TBBr57Wj+egtcWaPOwqwbpsAVa4mNPVKbf3i2TnU0nt/
BS5EqzGfChiNJ+4J2QYEWlRRRkZPa9YkoLhcN1RuNcojc0jx0Ek=
=TKHH
-----END PGP SIGNATURE-----

--opJtzjQTFsWo+cga--

--===============1510705238402605614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1510705238402605614==--
