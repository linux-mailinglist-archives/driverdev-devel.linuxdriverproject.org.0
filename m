Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B35261C26EE
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 18:23:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53DBC883E1;
	Sat,  2 May 2020 15:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KnfbfOmsUZ8x; Sat,  2 May 2020 15:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A2AD8832A;
	Sat,  2 May 2020 15:14:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0431BF85D
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 15:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17AC38831D
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 15:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XWFeHF00X5dz for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 15:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07055882EE
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 15:14:39 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id g4so5345121ljl.2
 for <devel@driverdev.osuosl.org>; Sat, 02 May 2020 08:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=skusR49BI6YUP3gg0TBWvBnZGkXreqlKpGeUcw662Io=;
 b=QrjpmSwflLd6OCaJYYGYLDkc8xHXg4aCcQElDZt+GfOtKyRJ4v4eSkhp/vivxp6b0K
 zmJ5XP22SCAPz4KfcT+HhtcsrTUI9X2kDEivOi1Ab1odYMnvXFnsB5kr8/7aMYr8IUqN
 4mdZlDVBeaTE8I8+w03iP2RgpzWKLwXbwOtOThvQxJ4ADRoi0xqrABkN9YsD1ShD+Z78
 7G7xTq2RLcm1kZb5MzEp3INZuYcyw481ZZkgGeqp9vcEkpYP/9sKZf1jSNr5ad5V178D
 jLeb/RebOhenJCvirn4+WeAHfcMpSuVKL3vbbh8gC/HiW/u9SvgMp51r1Z2xzdLNwcTH
 +pHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=skusR49BI6YUP3gg0TBWvBnZGkXreqlKpGeUcw662Io=;
 b=jVO5rkHhrgqY3w2qyQ/SWv6rO3srtlUKGeDgn17Su2jsSK7zxXi5GW9C3upfLNQkii
 vmwhItufno75X63/tivuOOfPm+hMLwQJ1oVV0dkKzAaLY8lQ2wd3IFCSjPuo6H6KbdP2
 BHYeAK6ugnV9HGVeeTuR1AMTJhHF9satNqErRimQ7ritucz79+q1afbU/Eck/bdNFJqO
 TZjGdfYA+ZtfUTziAP5JIYDFJUfliRhAiI8HJBGCUbyCZitEkwZ1re85L2KXOitubKZp
 UmBlMznCcT+XcRbWTZB8x6W2S2C9wZ4UiE9JLwMPr79AKEG4yzFu8vctGkU6pMdxGRQ8
 cOGw==
X-Gm-Message-State: AGi0PuaQHyEMTzi9EuJAKwdPOLNHF5GByvRUrFKpheRE1oG6dlo6lPSx
 YKVy/DDdXv0cXHdPxACXmmk=
X-Google-Smtp-Source: APiQypKftxsTAGKlKn/g9X22khhPV1YL3tOrbyRLxmVTHhvDcpdFm3HGW++Gr2q0DR14tUadntkHIg==
X-Received: by 2002:a2e:3a0a:: with SMTP id h10mr4988841lja.54.1588432477120; 
 Sat, 02 May 2020 08:14:37 -0700 (PDT)
Received: from alpha (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id r20sm4031231ljj.44.2020.05.02.08.14.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 08:14:36 -0700 (PDT)
Received: (nullmailer pid 43711 invoked by uid 1000);
 Sat, 02 May 2020 15:19:19 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging:rtl8723bs: eliminate usage of skb_clone after skb
 allocation fail
Date: Sat,  2 May 2020 18:19:05 +0300
Message-Id: <20200502151905.43663-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Kees Cook <keescook@chromium.org>, Ivan Safonov <insafonov@gmail.com>,
 R Veera Kumar <vkor@vkten.in>, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Lukasz Szczesny <luk@wybcz.pl>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Simran Singhal <singhalsimran0@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The skb allocated when out of memory
is likely to be discarded during subsequent processing.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 .../staging/rtl8723bs/hal/rtl8723bs_recv.c    | 44 ++++++-------------
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 19 +++-----
 2 files changed, 19 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index c3051ebaeb78..29c29e2e125b 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -311,39 +311,21 @@ static void rtl8723bs_recv_tasklet(unsigned long priv)
 				}
 
 				pkt_copy = rtw_skb_alloc(alloc_sz);
-
-				if (pkt_copy) {
-					pkt_copy->dev = padapter->pnetdev;
-					precvframe->u.hdr.pkt = pkt_copy;
-					skb_reserve(pkt_copy, 8 - ((SIZE_PTR)(pkt_copy->data) & 7));/* force pkt_copy->data at 8-byte alignment address */
-					skb_reserve(pkt_copy, shift_sz);/* force ip_hdr at 8-byte alignment address according to shift_sz. */
-					memcpy(pkt_copy->data, (ptr + rx_report_sz + pattrib->shift_sz), skb_len);
-					precvframe->u.hdr.rx_head = pkt_copy->head;
-					precvframe->u.hdr.rx_data = precvframe->u.hdr.rx_tail = pkt_copy->data;
-					precvframe->u.hdr.rx_end = skb_end_pointer(pkt_copy);
-				} else {
-					if ((pattrib->mfrag == 1) && (pattrib->frag_num == 0)) {
-						DBG_8192C("%s: alloc_skb fail, drop frag frame\n", __func__);
-						rtw_free_recvframe(precvframe, &precvpriv->free_recv_queue);
-						break;
-					}
-
-					precvframe->u.hdr.pkt = rtw_skb_clone(precvbuf->pskb);
-					if (precvframe->u.hdr.pkt) {
-						_pkt *pkt_clone = precvframe->u.hdr.pkt;
-
-						pkt_clone->data = ptr + rx_report_sz + pattrib->shift_sz;
-						skb_reset_tail_pointer(pkt_clone);
-						precvframe->u.hdr.rx_head = precvframe->u.hdr.rx_data = precvframe->u.hdr.rx_tail
-							= pkt_clone->data;
-						precvframe->u.hdr.rx_end = pkt_clone->data + skb_len;
-					} else {
-						DBG_8192C("%s: rtw_skb_clone fail\n", __func__);
-						rtw_free_recvframe(precvframe, &precvpriv->free_recv_queue);
-						break;
-					}
+				if (!pkt_copy) {
+					DBG_8192C("%s: alloc_skb fail, drop frame\n", __func__);
+					rtw_free_recvframe(precvframe, &precvpriv->free_recv_queue);
+					break;
 				}
 
+				pkt_copy->dev = padapter->pnetdev;
+				precvframe->u.hdr.pkt = pkt_copy;
+				skb_reserve(pkt_copy, 8 - ((SIZE_PTR)(pkt_copy->data) & 7));/* force pkt_copy->data at 8-byte alignment address */
+				skb_reserve(pkt_copy, shift_sz);/* force ip_hdr at 8-byte alignment address according to shift_sz. */
+				memcpy(pkt_copy->data, (ptr + rx_report_sz + pattrib->shift_sz), skb_len);
+				precvframe->u.hdr.rx_head = pkt_copy->head;
+				precvframe->u.hdr.rx_data = precvframe->u.hdr.rx_tail = pkt_copy->data;
+				precvframe->u.hdr.rx_end = skb_end_pointer(pkt_copy);
+
 				recvframe_put(precvframe, skb_len);
 				/* recvframe_pull(precvframe, drvinfo_sz + RXDESC_SIZE); */
 
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 60c35d92ba29..560221723d70 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -60,21 +60,14 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 	pattrib = &prframe->u.hdr.attrib;
 
 	sub_skb = rtw_skb_alloc(nSubframe_Length + 12);
-	if (sub_skb) {
-		skb_reserve(sub_skb, 12);
-		skb_put_data(sub_skb, (pdata + ETH_HLEN), nSubframe_Length);
-	} else {
-		sub_skb = rtw_skb_clone(prframe->u.hdr.pkt);
-		if (sub_skb) {
-			sub_skb->data = pdata + ETH_HLEN;
-			sub_skb->len = nSubframe_Length;
-			skb_set_tail_pointer(sub_skb, nSubframe_Length);
-		} else {
-			DBG_871X("%s(): rtw_skb_clone() Fail!!!\n", __func__);
-			return NULL;
-		}
+	if (!sub_skb) {
+		DBG_871X("%s(): rtw_skb_alloc() Fail!!!\n", __func__);
+		return NULL;
 	}
 
+	skb_reserve(sub_skb, 12);
+	skb_put_data(sub_skb, (pdata + ETH_HLEN), nSubframe_Length);
+
 	eth_type = RTW_GET_BE16(&sub_skb->data[6]);
 
 	if (sub_skb->len >= 8 &&
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
