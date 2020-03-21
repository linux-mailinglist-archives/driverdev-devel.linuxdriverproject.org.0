Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 965EA18E53A
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:30:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 194F4204B0;
	Sat, 21 Mar 2020 22:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xb8vhZ0h1rws; Sat, 21 Mar 2020 22:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF81420345;
	Sat, 21 Mar 2020 22:30:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A3E51BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9666320345
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g7GaBqvdh9+G for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:30:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 3057620335
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:30:09 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id o12so430924pjs.2
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=B5qFJrGFQqJyZwNKSurlZaktra2A1JiMh2eH8abzUa8=;
 b=E41elm12jd11riNXAxZcemim/OxYinkuqYLL8oC+r4tkR5+6JCTftkVbwJxr5NWhwd
 bQAP85rscxX0Jx/qnXpQqUDzgnu/EAKq8c24Y55N1UWxdS7IRe+ClebYXwlWq4DQPPDU
 PyVvsznktL62JBkK3d4x6NrQdzlJ0C0CUGGEFm8y+9Vqt3iNEY8HkxrPOXdGHtKNs6k5
 lN1OiTf71jTBZoRR7XrC1EYosNoiLW7gbmWH3SLT8BdBunOzNHGLulEKWbic20Q0iVz8
 e9XjmvnAsPDgVvnMeeXXh4X/c/+umih9KwNGJF8x3iMEENXElRKdiPXmt4rXl6FJYGQK
 +QJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=B5qFJrGFQqJyZwNKSurlZaktra2A1JiMh2eH8abzUa8=;
 b=WRwxSbRjM+LL81FYPwl0QZ9jDSE5ks7CHL+ki69AJtVHYSIRGSRQ9tySX8OCrbPeXT
 QpD01KKsbyjMQZB+dvmvdPtmmNap/6LGf0uQLs05QGlnyjhqoDvkP3ZaWu1Jd3y5w2TK
 KyuMBcw81m5LS3AzVp3Vru6CANGC8kzLRLuX0sqRzhln+HLG9LuKt0eYtcE779A6k3k6
 Syl3/0Ct7Lfsva8ywULXY/02RmgKH1XUji1El/OgHN+tOClTyJDab2cKO6xpKXPK7CXU
 UIbFP31IjBa2hpVD4AF8n62DQy9obcQrmGoFmj68kbejg3kGrIz3KWMq72viBaaESlwl
 AtKQ==
X-Gm-Message-State: ANhLgQ0MA+hiJltrb37tAYZR6tjJ7LDsNss7seNYkdZ0bxhNK208bDk/
 aBYFsGH2YTf0Palj8WYvCQo=
X-Google-Smtp-Source: ADFU+vvkkhBVrJVmLGfrS6hCjDf1bFoMlXdSo23YEMHegOOqFAtPPj7TpLoW0FaWvzEON9K1okVv9Q==
X-Received: by 2002:a17:902:b198:: with SMTP id
 s24mr14576295plr.89.1584829808477; 
 Sat, 21 Mar 2020 15:30:08 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id k6sm8136655pje.8.2020.03.21.15.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:30:08 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 11/11] Staging: rtl8188eu: rtl8188eu_xmit:
 Add space around operators
Date: Sun, 22 Mar 2020 04:00:02 +0530
Message-Id: <cf8c629e7aa360fb3f86329d8d7df7e49ec360d4.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
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
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rtl8188eu_xmit_old.o rtl8188eu_xmit.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 .../staging/rtl8188eu/hal/rtl8188eu_xmit.c    | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index 2808f2b119bf..7d315bd438d4 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -58,12 +58,12 @@ void rtl8188e_fill_fake_txdesc(struct adapter *adapt, u8 *desc, u32 BufferLen, u
 	/* offset 0 */
 	ptxdesc->txdw0 |= cpu_to_le32(OWN | FSG | LSG); /* own, bFirstSeg, bLastSeg; */
 
-	ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE+OFFSET_SZ)<<OFFSET_SHT)&0x00ff0000); /* 32 bytes for TX Desc */
+	ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE + OFFSET_SZ) << OFFSET_SHT) & 0x00ff0000); /* 32 bytes for TX Desc */
 
-	ptxdesc->txdw0 |= cpu_to_le32(BufferLen&0x0000ffff); /*  Buffer size + command header */
+	ptxdesc->txdw0 |= cpu_to_le32(BufferLen & 0x0000ffff); /*  Buffer size + command header */
 
 	/* offset 4 */
-	ptxdesc->txdw1 |= cpu_to_le32((QSLT_MGNT<<QSEL_SHT)&0x00001f00); /*  Fixed queue of Mgnt queue */
+	ptxdesc->txdw1 |= cpu_to_le32((QSLT_MGNT << QSEL_SHT) & 0x00001f00); /*  Fixed queue of Mgnt queue */
 
 	/* Set NAVUSEHDR to prevent Ps-poll AId filed to be changed to error vlaue by Hw. */
 	if (ispspoll) {
@@ -91,16 +91,16 @@ static void fill_txdesc_sectype(struct pkt_attrib *pattrib, struct tx_desc *ptxd
 		/* SEC_TYPE : 0:NO_ENC,1:WEP40/TKIP,2:WAPI,3:AES */
 		case _WEP40_:
 		case _WEP104_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x01<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x01 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _TKIP_:
 		case _TKIP_WTMIC_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x01<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x01 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _AES_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x03<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x03 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _NO_PRIVACY_:
@@ -127,7 +127,7 @@ static void fill_txdesc_vcs(struct pkt_attrib *pattrib, __le32 *pdw)
 		*pdw |= cpu_to_le32(HW_RTS_EN);
 		/*  Set RTS BW */
 		if (pattrib->ht_en) {
-			*pdw |= (pattrib->bwmode&HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(27)) : 0;
+			*pdw |= (pattrib->bwmode & HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(27)) : 0;
 
 			if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
 				*pdw |= cpu_to_le32((0x01 << 28) & 0x30000000);
@@ -144,7 +144,7 @@ static void fill_txdesc_vcs(struct pkt_attrib *pattrib, __le32 *pdw)
 static void fill_txdesc_phy(struct pkt_attrib *pattrib, __le32 *pdw)
 {
 	if (pattrib->ht_en) {
-		*pdw |= (pattrib->bwmode&HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(25)) : 0;
+		*pdw |= (pattrib->bwmode & HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(25)) : 0;
 
 		if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
 			*pdw |= cpu_to_le32((0x01 << DATA_SC_SHT) & 0x003f0000);
@@ -171,7 +171,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 
 	if (adapt->registrypriv.mp_mode == 0) {
 		if ((!bagg_pkt) && (urb_zero_packet_chk(adapt, sz) == 0)) {
-			ptxdesc = (struct tx_desc *)(pmem+PACKET_OFFSET_SZ);
+			ptxdesc = (struct tx_desc *)(pmem + PACKET_OFFSET_SZ);
 			pull = 1;
 		}
 	}
@@ -263,11 +263,11 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 				ptxdesc->txdw4 |= cpu_to_le32(BIT(24));/*  DATA_SHORT */
 			ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
 		}
-	} else if ((pxmitframe->frame_tag&0x0f) == MGNT_FRAMETAG) {
+	} else if ((pxmitframe->frame_tag & 0x0f) == MGNT_FRAMETAG) {
 		/* offset 4 */
 		ptxdesc->txdw1 |= cpu_to_le32(pattrib->mac_id & 0x3f);
 
-		qsel = (uint)(pattrib->qsel&0x0000001f);
+		qsel = (uint)(pattrib->qsel & 0x0000001f);
 		ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);
 
 		ptxdesc->txdw1 |= cpu_to_le32((pattrib->raid << RATE_ID_SHT) & 0x000f0000);
@@ -278,7 +278,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 			ptxdesc->txdw2 |= cpu_to_le32(BIT(19));
 
 		/* offset 12 */
-		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum<<SEQ_SHT)&0x0FFF0000);
+		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum << SEQ_SHT) & 0x0FFF0000);
 
 		/* offset 20 */
 		ptxdesc->txdw5 |= cpu_to_le32(RTY_LMT_EN);/* retry limit enable */
@@ -288,7 +288,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 			ptxdesc->txdw5 |= cpu_to_le32(0x00300000);/* retry limit = 12 */
 
 		ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
-	} else if ((pxmitframe->frame_tag&0x0f) == TXAGG_FRAMETAG) {
+	} else if ((pxmitframe->frame_tag & 0x0f) == TXAGG_FRAMETAG) {
 		DBG_88E("pxmitframe->frame_tag == TXAGG_FRAMETAG\n");
 	} else {
 		DBG_88E("pxmitframe->frame_tag = %d\n", pxmitframe->frame_tag);
@@ -301,7 +301,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 		/* offset 8 */
 
 		/* offset 12 */
-		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum<<SEQ_SHT)&0x0fff0000);
+		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum << SEQ_SHT) & 0x0fff0000);
 
 		/* offset 20 */
 		ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
@@ -466,7 +466,7 @@ bool rtl8188eu_xmitframe_complete(struct adapter *adapt,
 
 	/* 3 2. aggregate same priority and same DA(AP or STA) frames */
 	pfirstframe = pxmitframe;
-	len = xmitframe_need_length(pfirstframe) + TXDESC_SIZE + (pfirstframe->pkt_offset*PACKET_OFFSET_SZ);
+	len = xmitframe_need_length(pfirstframe) + TXDESC_SIZE + (pfirstframe->pkt_offset * PACKET_OFFSET_SZ);
 	pbuf_tail = len;
 	pbuf = round_up(pbuf_tail, 8);
 
@@ -517,7 +517,7 @@ bool rtl8188eu_xmitframe_complete(struct adapter *adapt,
 		pxmitframe->agg_num = 0; /*  not first frame of aggregation */
 		pxmitframe->pkt_offset = 0; /*  not first frame of aggregation, no need to reserve offset */
 
-		len = xmitframe_need_length(pxmitframe) + TXDESC_SIZE + (pxmitframe->pkt_offset*PACKET_OFFSET_SZ);
+		len = xmitframe_need_length(pxmitframe) + TXDESC_SIZE + (pxmitframe->pkt_offset * PACKET_OFFSET_SZ);
 
 		if (round_up(pbuf + len, 8) > MAX_XMITBUF_SZ) {
 			pxmitframe->agg_num = 1;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
