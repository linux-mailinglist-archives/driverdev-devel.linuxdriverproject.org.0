Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2621AE5F7B
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 22:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38EF420461;
	Sat, 26 Oct 2019 20:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pLwm1rZTai0a; Sat, 26 Oct 2019 20:28:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C80E220412;
	Sat, 26 Oct 2019 20:28:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0FCA1BF5E6
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:28:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B6158203D6
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFkwAiSqHOlp for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 20:27:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id AC2A720005
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 20:27:59 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id g50so8686444qtb.4
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 13:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yx6Awz2IKlaX/UU/stsvXaWgodHP34R/qQ1ioU24SwQ=;
 b=gRlciENfE7dB24CJ1rfqSgjJze87Zo4V8lt5NhzuS/S0h8op+o5t/exaRDdOsBocv1
 zKDO4hZjLT0difaOw5S5fVgRXLoqr0iVZrb/9a8zzzALl1acS0cc4TGFcCVNyUo4cLiZ
 Y6642VNr8PBJTu9Oo50x4uCL3LvAj6gljWA2kVl/KDWRZnaqo4JC6X1rVq+6LsEtNPbX
 ANv2qugAmXOvBBmqSezgG0RFWDNEvUfVPPUJfJyn3U5qvSLUKot/86LUu+sNukrjiStM
 6D0VxolHyQsDTWupGBWvFCfya6UpolzvmIih8bKuykS5UD6gkB46e3JfHaT22HeLf3/I
 3wlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yx6Awz2IKlaX/UU/stsvXaWgodHP34R/qQ1ioU24SwQ=;
 b=EsmqdPT67xGq4iveWD8Dyykglf75AE7rqp99lE2lI+UXt2opri5Om9dfZpiPN26q7v
 +CJrqyvQZ85tdHpdK3NRSUNIuDiYGkSdLmmYW2flTgRFzqnK4A9/R9PFRVL5ZFRwDg8r
 33yXKa3ayDe4T2ql0Y6/nOMd3+IqXgGEfYIMYG3SKonrqk0r8Yo8uBmPhOgvY9rc1Byo
 aosXFMvu00I1bQqDsimY1GnjAOSY9N6SEhgCvfZubhaaiP2UnpviZZVkxlUbbXQ/ET/r
 uozm0kQX2oHjwG53s1++k8gh1Jed2Tl0L3vaZzURrqkC4N+ci7E0SJXnpOvMeS4l+wXS
 0IKw==
X-Gm-Message-State: APjAAAV9FdWi17R1bbxra4SBQUgpIPCLUQ6shRaowxUHyIfaWDmIk/CC
 IIujM/diZ089galmF8jAE3o=
X-Google-Smtp-Source: APXvYqwh2Xduw3SjQWTdFNICNWnKa29H9onTRnMGN/3Z9X+CmWMXozXoqO7bgBWPNWi6/XYC+5/26Q==
X-Received: by 2002:ac8:65c9:: with SMTP id t9mr4685261qto.329.1572121678697; 
 Sat, 26 Oct 2019 13:27:58 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id o67sm3057894qkf.8.2019.10.26.13.27.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 26 Oct 2019 13:27:58 -0700 (PDT)
Date: Sat, 26 Oct 2019 17:27:54 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: rtl8712: Fix Alignment of open parenthesis
Message-ID: <c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09@gmail.com>
References: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
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
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix alignment should match open parenthesis. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index af12c16..12a3c64 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvbuf->ref_cnt = 0;
 		precvbuf->adapter = padapter;
 		list_add_tail(&precvbuf->list,
-				 &(precvpriv->free_recv_buf_queue.queue));
+			      &(precvpriv->free_recv_buf_queue.queue));
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
@@ -379,7 +379,7 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 		/* convert hdr + possible LLC headers into Ethernet header */
 		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
 		if (sub_skb->len >= 8 &&
-		   ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
+		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
 		   eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
 		   !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
 			/* remove RFC1042 or Bridge-Tunnel encapsulation and
@@ -387,18 +387,18 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
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
