Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 330FDE74CD
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 16:17:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE629854E3;
	Mon, 28 Oct 2019 15:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lDVac73aa3bU; Mon, 28 Oct 2019 15:16:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E31084DCD;
	Mon, 28 Oct 2019 15:16:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F030D1BF35C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBE0684C53
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MSiskav5lFMD for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 15:15:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 374488489C
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 15:15:58 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id m4so8780620qke.9
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0FV5BQJa/pO//IMI+ZT8jkadIpmBxWA942zfBURnizc=;
 b=cvFgAelOwhD77oP34pW6C/TIbj8PtSAhy+4AFLfcQZqbZCBxE3qBGDROsT0Rapje/5
 AubWT8QOi5W2ZLDchMUSedGJHRRIbNlD875Ap7avtGtcWF5FxNfu/FxU2GoYsPlgyTvN
 cKZUFKIu1yS4LKNVxO1+L/vsEVCSFmt9s7/ttfT3yufJAAYn0zN1mDf4ylBXbGq0xDYq
 cHTHmPV3MvoObnHl4LEpbYFDFAS5B6rxPv9Vur2tsEgr0dng+RbzLNgyhHaaZrrLyfBi
 z+jHajwTeapS9re7DqIGUJrxHjYte8p38Omppmu0vJCu7E+p0QnxgPgRdO6328I9qnoj
 lbiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0FV5BQJa/pO//IMI+ZT8jkadIpmBxWA942zfBURnizc=;
 b=QOjKpIF7l8gM2DDteY0kVtC5zGNaozYffBvL/oXe7jPVjTaaIeN2Ytci3aQ1Zfiwk7
 3vC+4sv6Asd9tXY3iWIL5fpEeA/YrcJB2Fr2GmnOaVqOV8WYKnMl5sCMLMqxZf8u1uRp
 zBYrWaaylb+SOpK9gLRiFcxlU188kIM27TJVdqs2svGAKRLsdizHeIR3rHnXDaCISsIU
 gSgPHX/di3IhqNXieGGkbRBr0Qu5x+uhCwvpUku5fTAJFDzqauW6N/JO7T5TINSrtD5v
 uo+ZQaICv1s1tS7yIti+KBJGLlWVMcWG13jw3mi4CMwfqateccAItwS7aW1lSaYj0wKR
 CMzw==
X-Gm-Message-State: APjAAAU/5Fc04sDqLJfpzHJBOHmzIOtIUsK5pbDUBwF8HrkzukducpmH
 SwaR9+BYwP103Q5foljXFSo=
X-Google-Smtp-Source: APXvYqzWRomtRnO1gaeKBtT3ojMUdD5nMFQh9bL4wrO9Bnhq4L0M0CfXCcVWdPy+et+w9yWpvagkEQ==
X-Received: by 2002:ae9:c307:: with SMTP id n7mr4110015qkg.185.1572275757080; 
 Mon, 28 Oct 2019 08:15:57 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id 187sm6216703qkk.103.2019.10.28.08.15.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 08:15:56 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:15:52 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: rtl8712: Fix Alignment of open parenthesis
Message-ID: <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix alignment should match open parenthesis. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index af12c16..304d031 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvbuf->ref_cnt = 0;
 		precvbuf->adapter = padapter;
 		list_add_tail(&precvbuf->list,
-				 &(precvpriv->free_recv_buf_queue.queue));
+			      (&precvpriv->free_recv_buf_queue.queue));
 		precvbuf++;
 	}
 	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
 	tasklet_init(&precvpriv->recv_tasklet,
-	     (void(*)(unsigned long))recv_tasklet,
-	     (unsigned long)padapter);
+		     (void(*)(unsigned long))recv_tasklet,
+		     (unsigned long)padapter);
 	skb_queue_head_init(&precvpriv->rx_skb_queue);
 
 	skb_queue_head_init(&precvpriv->free_recv_skb_queue);
@@ -140,7 +140,7 @@ void r8712_free_recvframe(union recv_frame *precvframe,
 }
 
 static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
-					   struct recv_stat *prxstat)
+						  struct recv_stat *prxstat)
 {
 	u16 drvinfo_sz;
 
@@ -177,7 +177,7 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
 
 /*perform defrag*/
 static union recv_frame *recvframe_defrag(struct _adapter *adapter,
-				   struct  __queue *defrag_q)
+					  struct  __queue *defrag_q)
 {
 	struct list_head *plist, *phead;
 	u8 wlanhdr_offset;
@@ -379,26 +379,26 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 		/* convert hdr + possible LLC headers into Ethernet header */
 		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
 		if (sub_skb->len >= 8 &&
-		   ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
-		   eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
-		   !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
+		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
+		      eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
+		     !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
 			/* remove RFC1042 or Bridge-Tunnel encapsulation and
 			 * replace EtherType
 			 */
 			skb_pull(sub_skb, SNAP_SIZE);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
-				ETH_ALEN);
+			       ETH_ALEN);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
-				ETH_ALEN);
+			       ETH_ALEN);
 		} else {
 			__be16 len;
 			/* Leave Ethernet header part of hdr and full payload */
 			len = htons(sub_skb->len);
 			memcpy(skb_push(sub_skb, 2), &len, 2);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
-				ETH_ALEN);
+			       ETH_ALEN);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
-				ETH_ALEN);
+			       ETH_ALEN);
 		}
 		/* Indicate the packets to upper layer */
 		if (sub_skb) {
@@ -472,7 +472,7 @@ static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
 }
 
 static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
-			      union recv_frame *prframe)
+				     union recv_frame *prframe)
 {
 	struct list_head *phead, *plist;
 	union recv_frame *pnextrframe;
@@ -499,8 +499,8 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 }
 
 int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
-			       struct recv_reorder_ctrl *preorder_ctrl,
-			       int bforced)
+				     struct recv_reorder_ctrl *preorder_ctrl,
+				     int bforced)
 {
 	struct list_head *phead, *plist;
 	union recv_frame *prframe;
@@ -530,7 +530,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 			plist = plist->next;
 			list_del_init(&(prframe->u.hdr.list));
 			if (SN_EQUAL(preorder_ctrl->indicate_seq,
-			    pattrib->seq_num))
+				     pattrib->seq_num))
 				preorder_ctrl->indicate_seq =
 				  (preorder_ctrl->indicate_seq + 1) % 4096;
 			/*indicate this recv_frame*/
@@ -555,7 +555,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 }
 
 static int recv_indicatepkt_reorder(struct _adapter *padapter,
-			     union recv_frame *prframe)
+				    union recv_frame *prframe)
 {
 	unsigned long irql;
 	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
@@ -624,7 +624,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
 }
 
 static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
-			      union recv_frame *prframe)
+					   union recv_frame *prframe)
 {
 	int retval = _SUCCESS;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
