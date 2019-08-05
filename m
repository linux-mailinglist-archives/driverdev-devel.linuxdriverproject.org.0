Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5300C813B3
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 09:54:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CB80866BD;
	Mon,  5 Aug 2019 07:54:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LYYQ2bRFbfo; Mon,  5 Aug 2019 07:54:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C13D864F4;
	Mon,  5 Aug 2019 07:54:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1141E1BF3A9
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 07:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E1DC85085
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 07:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g6vy34YTs5WN for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 07:54:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9936685010
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 07:54:43 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id r1so39200684pfq.12
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 00:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=bT5L/QvuhasopbqbzMwRyoOYbSOEeI8baHm4jQDDe4s=;
 b=MT/50idyuQmDlhcpb+5OiCJbwPsVNLlJqGpELKrCzCqCyXXcSQfXy3WHOAr99fuRAx
 fLee5cdzzesZ064nIJi07jmJZTb7CUG07IOorUHDxBiq9Ct6yK10ryBeUeTHAuB7Gs2j
 6wLfWn59n6LbCJ/pQmd79ilb66DtsMTVVukwQLS987X4PoqMsjIJx/OpvFwcTVWPq0sa
 l4YbdBIELcgYyq98obs0V5nH0efq4kTI5NGbWK+QbrpL0/P/giQyaK5yiPAVryuKnpnV
 Lmx0gf3Der10B7EXxUEom8PHWfzQoaeQpl03/U4u99PS0wrQf/stEdBRQyApABpdwCvi
 4dXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=bT5L/QvuhasopbqbzMwRyoOYbSOEeI8baHm4jQDDe4s=;
 b=VcXxrtkgO0QSwb1jSVjV4qK4QcAzCsxW2P2fdkPOeRUlET18H6fIhGCc4zRDKNeJdC
 RSKR0y9C4BNjjyayockHUv5RVIn4ay/i8BDU90O5DPXSBVcrSiam8QCZIa6AIdnYiSR6
 Em224zfp2ElYwe1dfFXkpnG3eh9Y4VlCLljB3lHmLJcQH+8z1OZzynKLdEq/Ab9REqhP
 06vHiZ61pmJYzWCp23I0yCqpRhuxtl7KUVU1NZvzhler1pMN0xX81r3mI+eMW0Q+jZaL
 abMfF08aoT7H5eugne887r6hHzqmyBMl44IG1wDtGCd3IoIX9N+6YZ0nUQq6e0Ai/6l6
 x7sA==
X-Gm-Message-State: APjAAAVXpFI+UUxgrE6HLRDCnUT86LYsue6hdNHwYCDwPIxAiMH6L7wv
 n1sPtndCklbcQW/u9qkDfl0=
X-Google-Smtp-Source: APXvYqxlRTO50l+No7xVKwpItqyZjdobtPKJFuwjRKEwssTpilAbbnsmF2CHhA14G3+3Vx29RwYWDw==
X-Received: by 2002:a65:6552:: with SMTP id
 a18mr127449873pgw.208.1564991682453; 
 Mon, 05 Aug 2019 00:54:42 -0700 (PDT)
Received: from IoT-COE ([2401:4900:2724:3d01:edc0:ce34:1a69:fb80])
 by smtp.gmail.com with ESMTPSA id d18sm44802869pgi.40.2019.08.05.00.53.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 00:54:41 -0700 (PDT)
Date: Mon, 5 Aug 2019 13:22:56 +0530
From: merwintf <merwintf@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org
Subject: [PATCH] Staging : rtl8188eu : rtw_security.c 	- Fixed warning:
 coding style issues 	- Fixed warning: if statement containing return with
 an else 	- Fixed check: coding style issues
Message-ID: <20190805075256.GA7330@IoT-COE>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com, merwintf@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: merwintf <merwintf@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 525 +++++++++++-------
 1 file changed, 334 insertions(+), 191 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 2f90f60f1681..b9f5ebdae034 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -67,7 +67,8 @@ static u32 arcfour_byte(struct arc4context *parc4ctx)
 	return state[(sx + sy) & 0xff];
 }
 
-static void arcfour_encrypt(struct arc4context *parc4ctx, u8 *dest, u8 *src, u32 len)
+static void arcfour_encrypt(struct arc4context *parc4ctx,
+			    u8 *dest, u8 *src, u32 len)
 {
 	u32	i;
 
@@ -80,16 +81,19 @@ static u32 crc32_table[256];
 
 static u8 crc32_reverseBit(u8 data)
 {
-	return (u8)((data<<7)&0x80) | ((data<<5)&0x40) | ((data<<3)&0x20) |
-		   ((data<<1)&0x10) | ((data>>1)&0x08) | ((data>>3)&0x04) |
-		   ((data>>5)&0x02) | ((data>>7)&0x01);
+	return (u8)((data << 7) & 0x80)
+		 | ((data << 5) & 0x40)
+		 | ((data << 3) & 0x20)
+		 | ((data << 1) & 0x10)
+		 | ((data >> 1) & 0x08)
+		 | ((data >> 3) & 0x04)
+		 | ((data >> 5) & 0x02)
+		 | ((data >> 7) & 0x01);
 }
 
 static void crc32_init(void)
 {
-	if (bcrc32initialized == 1) {
-		return;
-	} else {
+	if (bcrc32initialized != 1) {
 		int i, j;
 		u32 c;
 		u8 *p = (u8 *)&c, *p1;
@@ -100,7 +104,8 @@ static void crc32_init(void)
 		for (i = 0; i < 256; ++i) {
 			k = crc32_reverseBit((u8)i);
 			for (c = ((u32)k) << 24, j = 8; j > 0; --j)
-				c = c & 0x80000000 ? (c << 1) ^ CRC32_POLY : (c << 1);
+				c = c & 0x80000000 ?
+				    (c << 1) ^ CRC32_POLY : (c << 1);
 			p1 = (u8 *)&crc32_table[i];
 
 			p1[0] = crc32_reverseBit(p[3]);
@@ -119,23 +124,26 @@ static __le32 getcrc32(u8 *buf, int len)
 
 	if (bcrc32initialized == 0)
 		crc32_init();
-
-	crc = 0xffffffff;       /* preload shift register, per CRC-32 spec */
+	/* preload shift register, per CRC-32 spec */
+	crc = 0xffffffff;
 
 	for (p = buf; len > 0; ++p, --len)
 		crc = crc32_table[(crc ^ *p) & 0xff] ^ (crc >> 8);
-	return cpu_to_le32(~crc);    /* transmit complement, per CRC-32 spec */
+	/* transmit complement, per CRC-32 spec */
+	return cpu_to_le32(~crc);
 }
 
 /*
-	Need to consider the fragment  situation
-*/
+ * Need to consider the fragment  situation
+ */
 void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
 {
 	int	curfragnum, length;
 	u8 *pframe;
 	u8 hw_hdr_offset = 0;
-	struct	pkt_attrib	 *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
+	struct	pkt_attrib	 *pattrib =
+				    &((struct xmit_frame *)pxmitframe)->attrib;
+
 	struct	security_priv	*psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv		*pxmitpriv = &padapter->xmitpriv;
 	const int keyindex = psecuritypriv->dot11PrivacyKeyIndex;
@@ -150,7 +158,7 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
 		return;
 
 	hw_hdr_offset = TXDESC_SIZE +
-		 (((struct xmit_frame *)pxmitframe)->pkt_offset * PACKET_OFFSET_SZ);
+	    (((struct xmit_frame *)pxmitframe)->pkt_offset * PACKET_OFFSET_SZ);
 
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;
 
@@ -164,7 +172,8 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
 		return;
 
 	if (crypto_ops->set_key(psecuritypriv->dot11DefKey[keyindex].skey,
-				psecuritypriv->dot11DefKeylen[keyindex], NULL, crypto_private) < 0)
+				psecuritypriv->dot11DefKeylen[keyindex],
+				NULL, crypto_private) < 0)
 		goto free_crypto_private;
 
 	for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
@@ -182,7 +191,8 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
 		skb_pull(skb, 4);
 		skb_trim(skb, skb->len - 4);
 
-		if (crypto_ops->encrypt_mpdu(skb, pattrib->hdrlen, crypto_private)) {
+		if (crypto_ops->encrypt_mpdu(skb, pattrib->hdrlen,
+					     crypto_private)) {
 			kfree_skb(skb);
 			goto free_crypto_private;
 		}
@@ -201,16 +211,20 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 int rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
 {
-	struct	rx_pkt_attrib	 *prxattrib = &(((struct recv_frame *)precvframe)->attrib);
+	struct	rx_pkt_attrib	 *prxattrib =
+				  &(((struct recv_frame *)precvframe)->attrib);
 
-	if ((prxattrib->encrypt == _WEP40_) || (prxattrib->encrypt == _WEP104_)) {
-		struct	security_priv	*psecuritypriv = &padapter->securitypriv;
+	if ((prxattrib->encrypt == _WEP40_) ||
+	    (prxattrib->encrypt == _WEP104_)) {
+		struct	security_priv	*psecuritypriv =
+						&padapter->securitypriv;
 		struct sk_buff *skb = ((struct recv_frame *)precvframe)->pkt;
 		u8 *pframe = skb->data;
 		void *crypto_private = NULL;
 		int status = _SUCCESS;
 		const int keyindex = prxattrib->key_index;
-		struct lib80211_crypto_ops *crypto_ops = lib80211_get_crypto_ops("WEP");
+		struct lib80211_crypto_ops *crypto_ops =
+						lib80211_get_crypto_ops("WEP");
 		char iv[4], icv[4];
 
 		if (!crypto_ops) {
@@ -227,11 +241,15 @@ int rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
 			goto exit;
 		}
 		if (crypto_ops->set_key(psecuritypriv->dot11DefKey[keyindex].skey,
-					psecuritypriv->dot11DefKeylen[keyindex], NULL, crypto_private) < 0) {
+					psecuritypriv->dot11DefKeylen[keyindex],
+					NULL,
+					crypto_private) < 0) {
 			status = _FAIL;
 			goto exit;
 		}
-		if (crypto_ops->decrypt_mpdu(skb, prxattrib->hdrlen, crypto_private)) {
+		if (crypto_ops->decrypt_mpdu(skb,
+					     prxattrib->hdrlen,
+					     crypto_private)) {
 			status = _FAIL;
 			goto exit;
 		}
@@ -261,7 +279,7 @@ static u32 secmicgetuint32(u8 *p)
 	u32 res = 0;
 
 	for (i = 0; i < 4; i++)
-		res |= ((u32)(*p++)) << (8*i);
+		res |= ((u32)(*p++)) << (8 * i);
 	return res;
 }
 
@@ -297,14 +315,15 @@ void rtw_secmicsetkey(struct mic_data *pmicdata, u8 *key)
 void rtw_secmicappendbyte(struct mic_data *pmicdata, u8 b)
 {
 	/*  Append the byte to our word-sized buffer */
-	pmicdata->M |= ((unsigned long)b) << (8*pmicdata->nBytesInM);
+	pmicdata->M |= ((unsigned long)b) << (8 * pmicdata->nBytesInM);
 	pmicdata->nBytesInM++;
 	/*  Process the word if it is full. */
 	if (pmicdata->nBytesInM >= 4) {
 		pmicdata->L ^= pmicdata->M;
 		pmicdata->R ^= ROL32(pmicdata->L, 17);
 		pmicdata->L += pmicdata->R;
-		pmicdata->R ^= ((pmicdata->L & 0xff00ff00) >> 8) | ((pmicdata->L & 0x00ff00ff) << 8);
+		pmicdata->R ^= ((pmicdata->L & 0xff00ff00) >> 8) |
+				((pmicdata->L & 0x00ff00ff) << 8);
 		pmicdata->L += pmicdata->R;
 		pmicdata->R ^= ROL32(pmicdata->L, 3);
 		pmicdata->L += pmicdata->R;
@@ -338,12 +357,13 @@ void rtw_secgetmic(struct mic_data *pmicdata, u8 *dst)
 		rtw_secmicappendbyte(pmicdata, 0);
 	/*  The appendByte function has already computed the result. */
 	secmicputuint32(dst, pmicdata->L);
-	secmicputuint32(dst+4, pmicdata->R);
+	secmicputuint32(dst + 4, pmicdata->R);
 	/*  Reset to the empty message. */
 	secmicclear(pmicdata);
 }
 
-void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_code, u8 pri)
+void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data,
+			u32 data_len, u8 *mic_code, u8 pri)
 {
 	struct mic_data	micdata;
 	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
@@ -352,15 +372,15 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 	priority[0] = pri;
 
 	/* Michael MIC pseudo header: DA, SA, 3 x 0, Priority */
-	if (header[1]&1) {   /* ToDS == 1 */
+	if (header[1] & 1) {   /* ToDS == 1 */
 		rtw_secmicappend(&micdata, &header[16], 6);  /* DA */
-		if (header[1]&2)  /* From Ds == 1 */
+		if (header[1] & 2)  /* From Ds == 1 */
 			rtw_secmicappend(&micdata, &header[24], 6);
 		else
 			rtw_secmicappend(&micdata, &header[10], 6);
 	} else {	/* ToDS == 0 */
 		rtw_secmicappend(&micdata, &header[4], 6);   /* DA */
-		if (header[1]&2)  /* From Ds == 1 */
+		if (header[1] & 2)  /* From Ds == 1 */
 			rtw_secmicappend(&micdata, &header[16], 6);
 		else
 			rtw_secmicappend(&micdata, &header[10], 6);
@@ -372,8 +392,6 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 	rtw_secgetmic(&micdata, mic_code);
 }
 
-
-
 /* macros for extraction/creation of unsigned char/unsigned short values  */
 #define RotR1(v16)   ((((v16) >> 1) & 0x7FFF) ^ (((v16) & 1) << 15))
 #define   Lo8(v16)   ((u8)((v16)       & 0x00FF))
@@ -383,7 +401,7 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 #define  Mk16(hi, lo) ((lo) ^ (((u16)(hi)) << 8))
 
 /* select the Nth 16-bit word of the temporal key unsigned char array TK[]   */
-#define  TK16(N)     Mk16(tk[2*(N)+1], tk[2*(N)])
+#define  TK16(N)     Mk16(tk[2 * (N) + 1], tk[2 * (N)])
 
 /* S-box lookup: 16 bits --> 16 bits */
 #define _S_(v16)     (Sbox1[0][Lo8(v16)] ^ Sbox1[1][Hi8(v16)])
@@ -396,8 +414,9 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 #define RC4_KEY_SIZE     16    /* 128-bit RC4KEY (104 bits unknown) */
 
 /* 2-unsigned char by 2-unsigned char subset of the full AES S-box table */
-static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)     */
-{
+static const unsigned short Sbox1[2][256] = {
+	/* Sbox for hash (can be in ROM)     */
+	{
 	0xC6A5, 0xF884, 0xEE99, 0xF68D, 0xFF0D, 0xD6BD, 0xDEB1, 0x9154,
 	0x6050, 0x0203, 0xCEA9, 0x567D, 0xE719, 0xB562, 0x4DE6, 0xEC9A,
 	0x8F45, 0x1F9D, 0x8940, 0xFA87, 0xEF15, 0xB2EB, 0x8EC9, 0xFB0B,
@@ -430,9 +449,9 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
 	0x2DB6, 0x3C22, 0x1592, 0xC920, 0x8749, 0xAAFF, 0x5078, 0xA57A,
 	0x038F, 0x59F8, 0x0980, 0x1A17, 0x65DA, 0xD731, 0x84C6, 0xD0B8,
 	0x82C3, 0x29B0, 0x5A77, 0x1E11, 0x7BCB, 0xA8FC, 0x6DD6, 0x2C3A,
-  },
-
-  {  /* second half of table is unsigned char-reversed version of first! */
+	},
+	{
+	/* second half of table is unsigned char-reversed version of first! */
 	0xA5C6, 0x84F8, 0x99EE, 0x8DF6, 0x0DFF, 0xBDD6, 0xB1DE, 0x5491,
 	0x5060, 0x0302, 0xA9CE, 0x7D56, 0x19E7, 0x62B5, 0xE64D, 0x9AEC,
 	0x458F, 0x9D1F, 0x4089, 0x87FA, 0x15EF, 0xEBB2, 0xC98E, 0x0BFB,
@@ -465,26 +484,26 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
 	0xB62D, 0x223C, 0x9215, 0x20C9, 0x4987, 0xFFAA, 0x7850, 0x7AA5,
 	0x8F03, 0xF859, 0x8009, 0x171A, 0xDA65, 0x31D7, 0xC684, 0xB8D0,
 	0xC382, 0xB029, 0x775A, 0x111E, 0xCB7B, 0xFCA8, 0xD66D, 0x3A2C,
-  }
+	}
 };
 
- /*
-**********************************************************************
-* Routine: Phase 1 -- generate P1K, given TA, TK, IV32
-*
-* Inputs:
-*     tk[]      = temporal key			 [128 bits]
-*     ta[]      = transmitter's MAC address	    [ 48 bits]
-*     iv32      = upper 32 bits of IV		  [ 32 bits]
-* Output:
-*     p1k[]     = Phase 1 key			  [ 80 bits]
-*
-* Note:
-*     This function only needs to be called every 2**16 packets,
-*     although in theory it could be called every packet.
-*
-**********************************************************************
-*/
+/*
+ **********************************************************************
+ * Routine: Phase 1 -- generate P1K, given TA, TK, IV32
+ *
+ * Inputs:
+ *     tk[]      = temporal key			 [128 bits]
+ *     ta[]      = transmitter's MAC address	    [ 48 bits]
+ *     iv32      = upper 32 bits of IV		  [ 32 bits]
+ * Output:
+ *     p1k[]     = Phase 1 key			  [ 80 bits]
+ *
+ * Note:
+ *     This function only needs to be called every 2**16 packets,
+ *     although in theory it could be called every packet.
+ *
+ **********************************************************************
+ */
 static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 {
 	int  i;
@@ -497,39 +516,41 @@ static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 
 	/* Now compute an unbalanced Feistel cipher with 80-bit block */
 	/* size on the 80-bit block P1K[], using the 128-bit key TK[] */
-	for (i = 0; i < PHASE1_LOOP_CNT; i++) { /* Each add operation here is mod 2**16 */
-		p1k[0] += _S_(p1k[4] ^ TK16((i&1)+0));
-		p1k[1] += _S_(p1k[0] ^ TK16((i&1)+2));
-		p1k[2] += _S_(p1k[1] ^ TK16((i&1)+4));
-		p1k[3] += _S_(p1k[2] ^ TK16((i&1)+6));
-		p1k[4] += _S_(p1k[3] ^ TK16((i&1)+0));
-		p1k[4] +=  (unsigned short)i;   /* avoid "slide attacks" */
+	for (i = 0; i < PHASE1_LOOP_CNT; i++) {
+		/* Each add operation here is mod 2**16 */
+		p1k[0] += _S_(p1k[4] ^ TK16((i & 1) + 0));
+		p1k[1] += _S_(p1k[0] ^ TK16((i & 1) + 2));
+		p1k[2] += _S_(p1k[1] ^ TK16((i & 1) + 4));
+		p1k[3] += _S_(p1k[2] ^ TK16((i & 1) + 6));
+		p1k[4] += _S_(p1k[3] ^ TK16((i & 1) + 0));
+		/* avoid slide attacks */
+		p1k[4] +=  (unsigned short)i;
 	}
 }
 
 /*
-**********************************************************************
-* Routine: Phase 2 -- generate RC4KEY, given TK, P1K, IV16
-*
-* Inputs:
-*     tk[]      = Temporal key			 [128 bits]
-*     p1k[]     = Phase 1 output key		   [ 80 bits]
-*     iv16      = low 16 bits of IV counter	    [ 16 bits]
-* Output:
-*     rc4key[]  = the key used to encrypt the packet   [128 bits]
-*
-* Note:
-*     The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
-*     across all packets using the same key TK value. Then, for a
-*     given value of TK[], this TKIP48 construction guarantees that
-*     the final RC4KEY value is unique across all packets.
-*
-* Suggested implementation optimization: if PPK[] is "overlaid"
-*     appropriately on RC4KEY[], there is no need for the final
-*     for loop below that copies the PPK[] result into RC4KEY[].
-*
-**********************************************************************
-*/
+ **********************************************************************
+ * Routine: Phase 2 -- generate RC4KEY, given TK, P1K, IV16
+ *
+ * Inputs:
+ *     tk[]      = Temporal key			 [128 bits]
+ *     p1k[]     = Phase 1 output key		   [ 80 bits]
+ *     iv16      = low 16 bits of IV counter	    [ 16 bits]
+ * Output:
+ *     rc4key[]  = the key used to encrypt the packet   [128 bits]
+ *
+ * Note:
+ *     The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
+ *     across all packets using the same key TK value. Then, for a
+ *     given value of TK[], this TKIP48 construction guarantees that
+ *     the final RC4KEY value is unique across all packets.
+ *
+ * Suggested implementation optimization: if PPK[] is "overlaid"
+ *     appropriately on RC4KEY[], there is no need for the final
+ *     for loop below that copies the PPK[] result into RC4KEY[].
+ *
+ **********************************************************************
+ */
 static void phase2(u8 *rc4key, const u8 *tk, const u16 *p1k, u16 iv16)
 {
 	int  i;
@@ -554,10 +575,11 @@ static void phase2(u8 *rc4key, const u8 *tk, const u16 *p1k, u16 iv16)
 	PPK[3] +=  RotR1(PPK[2]);
 	PPK[4] +=  RotR1(PPK[3]);
 	PPK[5] +=  RotR1(PPK[4]);
-	/* Note: At this point, for a given key TK[0..15], the 96-bit output */
-	/*       value PPK[0..5] is guaranteed to be unique, as a function   */
-	/*       of the 96-bit "input" value   {TA, IV32, IV16}. That is, P1K  */
-	/*       is now a keyed permutation of {TA, IV32, IV16}.	       */
+	/* Note: At this point, for a given key TK[0..15], the 96-bit output
+	 *       value PPK[0..5] is guaranteed to be unique, as a function
+	 *       of the 96-bit "input" value   {TA, IV32, IV16}. That is, P1K
+	 *       is now a keyed permutation of {TA, IV32, IV16}.
+	 */
 
 	/* Set RC4KEY[0..3], which includes "cleartext" portion of RC4 key   */
 	rc4key[0] = Hi8(iv16);		/* RC4KEY[0..2] is the WEP IV  */
@@ -567,14 +589,15 @@ static void phase2(u8 *rc4key, const u8 *tk, const u16 *p1k, u16 iv16)
 
 	/* Copy 96 bits of PPK[0..5] to RC4KEY[4..15]  (little-endian)       */
 	for (i = 0; i < 6; i++) {
-		rc4key[4+2*i] = Lo8(PPK[i]);
-		rc4key[5+2*i] = Hi8(PPK[i]);
+		rc4key[4 + 2 * i] = Lo8(PPK[i]);
+		rc4key[5 + 2 * i] = Hi8(PPK[i]);
 	}
 }
 
 /* The hlen isn't include the IV */
 u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
-{																	/*  exclude ICV */
+{
+	/*  exclude ICV */
 	u16	pnl;
 	u32	pnh;
 	u8	rc4key[16];
@@ -587,7 +610,8 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	u8	*pframe, *payload, *iv, *prwskey;
 	union pn48 dot11txpn;
 	struct	sta_info		*stainfo;
-	struct	pkt_attrib	 *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
+	struct	pkt_attrib	 *pattrib =
+				     &((struct xmit_frame *)pxmitframe)->attrib;
 	struct	security_priv	*psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv		*pxmitpriv = &padapter->xmitpriv;
 	u32	res = _SUCCESS;
@@ -596,57 +620,104 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 		return _FAIL;
 
 	hw_hdr_offset = TXDESC_SIZE +
-		 (((struct xmit_frame *)pxmitframe)->pkt_offset * PACKET_OFFSET_SZ);
+	     (((struct xmit_frame *)pxmitframe)->pkt_offset * PACKET_OFFSET_SZ);
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;
 	/* 4 start to encrypt each fragment */
 	if (pattrib->encrypt == _TKIP_) {
 		if (pattrib->psta)
 			stainfo = pattrib->psta;
 		else
-			stainfo = rtw_get_stainfo(&padapter->stapriv, &pattrib->ra[0]);
+			stainfo = rtw_get_stainfo(&padapter->stapriv,
+						  &pattrib->ra[0]);
 
 		if (stainfo != NULL) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("%s: stainfo!= NULL!!!\n",
+				  __func__));
 
 			if (is_multicast_ether_addr(pattrib->ra))
 				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
 			else
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
 
-			for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
-				iv = pframe+pattrib->hdrlen;
-				payload = pframe+pattrib->iv_len+pattrib->hdrlen;
+			for (curfragnum = 0;
+					 curfragnum < pattrib->nr_frags;
+					 curfragnum++) {
+				iv = pframe + pattrib->hdrlen;
+				payload = pframe +
+					  pattrib->iv_len +
+					  pattrib->hdrlen;
 
 				GET_TKIP_PN(iv, dot11txpn);
 
 				pnl = (u16)(dot11txpn.val);
-				pnh = (u32)(dot11txpn.val>>16);
-				phase1((u16 *)&ttkey[0], prwskey, &pattrib->ta[0], pnh);
-				phase2(&rc4key[0], prwskey, (u16 *)&ttkey[0], pnl);
-
-				if ((curfragnum+1) == pattrib->nr_frags) {	/* 4 the last fragment */
-					length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
-					RT_TRACE(_module_rtl871x_security_c_, _drv_info_,
-						 ("pattrib->iv_len=%x, pattrib->icv_len=%x\n",
-						 pattrib->iv_len, pattrib->icv_len));
-					*((__le32 *)crc) = getcrc32(payload, length);/* modified by Amy*/
+				pnh = (u32)(dot11txpn.val >> 16);
+
+				phase1((u16 *)&ttkey[0],
+				       prwskey,
+				       &pattrib->ta[0],
+				       pnh);
+
+				phase2(&rc4key[0],
+				       prwskey,
+				       (u16 *)&ttkey[0],
+				       pnl);
+
+				if ((curfragnum + 1) == pattrib->nr_frags) {
+					/* 4 the last fragment */
+					length = pattrib->last_txcmdsz -
+						 pattrib->hdrlen -
+						 pattrib->iv_len -
+						 pattrib->icv_len;
+
+					RT_TRACE(_module_rtl871x_security_c_,
+						 _drv_info_,
+						 ("pattrib->iv_len=%x,pattrib->icv_len=%x\n",
+						  pattrib->iv_len,
+						  pattrib->icv_len));
+
+					/* modified by Amy */
+					*((__le32 *)crc) = getcrc32(payload,
+								    length);
 
 					arcfour_init(&mycontext, rc4key, 16);
-					arcfour_encrypt(&mycontext, payload, payload, length);
-					arcfour_encrypt(&mycontext, payload+length, crc, 4);
+					arcfour_encrypt(&mycontext,
+							payload,
+							payload,
+							length);
+					arcfour_encrypt(&mycontext,
+							payload + length,
+							crc,
+							4);
 				} else {
-					length = pxmitpriv->frag_len-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
-					*((__le32 *)crc) = getcrc32(payload, length);/* modified by Amy*/
+					length = pxmitpriv->frag_len -
+						 pattrib->hdrlen -
+						 pattrib->iv_len -
+						 pattrib->icv_len;
+
+					/* Modified by Amy */
+					*((__le32 *)crc) = getcrc32(payload,
+								    length);
 					arcfour_init(&mycontext, rc4key, 16);
-					arcfour_encrypt(&mycontext, payload, payload, length);
-					arcfour_encrypt(&mycontext, payload+length, crc, 4);
+					arcfour_encrypt(&mycontext,
+							payload,
+							payload,
+							length);
+					arcfour_encrypt(&mycontext,
+							payload + length,
+							crc,
+							4);
 
 					pframe += pxmitpriv->frag_len;
-					pframe = (u8 *)round_up((size_t)(pframe), 4);
+					pframe =
+					   (u8 *)round_up((size_t)(pframe), 4);
 				}
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("%s: stainfo==NULL!!!\n", __func__));
 			res = _FAIL;
 		}
 	}
@@ -655,7 +726,8 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 /* The hlen isn't include the IV */
 u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
-{																	/*  exclude ICV */
+{
+	/*  exclude ICV */
 	u16 pnl;
 	u32 pnh;
 	u8   rc4key[16];
@@ -667,16 +739,17 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 	u8	*pframe, *payload, *iv, *prwskey;
 	union pn48 dot11txpn;
 	struct	sta_info		*stainfo;
-	struct	rx_pkt_attrib	 *prxattrib = &((struct recv_frame *)precvframe)->attrib;
+	struct	rx_pkt_attrib	 *prxattrib =
+				     &((struct recv_frame *)precvframe)->attrib;
 	struct	security_priv	*psecuritypriv = &padapter->securitypriv;
 	u32		res = _SUCCESS;
 
-
 	pframe = (unsigned char *)((struct recv_frame *)precvframe)->pkt->data;
 
 	/* 4 start to decrypt recvframe */
 	if (prxattrib->encrypt == _TKIP_) {
-		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
+		stainfo = rtw_get_stainfo(&padapter->stapriv,
+					  &prxattrib->ta[0]);
 		if (stainfo) {
 			if (is_multicast_ether_addr(prxattrib->ra)) {
 				if (!psecuritypriv->binstallGrpkey) {
@@ -686,40 +759,50 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				}
 				prwskey = psecuritypriv->dot118021XGrpKey[prxattrib->key_index].skey;
 			} else {
-				RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
+				RT_TRACE(_module_rtl871x_security_c_,
+					 _drv_err_,
+					 ("%s: stainfo!= NULL!!!\n", __func__));
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
 			}
 
-			iv = pframe+prxattrib->hdrlen;
-			payload = pframe+prxattrib->iv_len+prxattrib->hdrlen;
-			length = ((struct recv_frame *)precvframe)->pkt->len-prxattrib->hdrlen-prxattrib->iv_len;
+			iv = pframe + prxattrib->hdrlen;
+			payload = pframe +
+				  prxattrib->iv_len +
+				  prxattrib->hdrlen;
+			length = ((struct recv_frame *)precvframe)->pkt->len -
+				  prxattrib->hdrlen -
+				  prxattrib->iv_len;
 
 			GET_TKIP_PN(iv, dot11txpn);
 
 			pnl = (u16)(dot11txpn.val);
-			pnh = (u32)(dot11txpn.val>>16);
+			pnh = (u32)(dot11txpn.val >> 16);
 
-			phase1((u16 *)&ttkey[0], prwskey, &prxattrib->ta[0], pnh);
-			phase2(&rc4key[0], prwskey, (unsigned short *)&ttkey[0], pnl);
+			phase1((u16 *)&ttkey[0], prwskey,
+			       &prxattrib->ta[0], pnh);
+			phase2(&rc4key[0], prwskey,
+			       (unsigned short *)&ttkey[0], pnl);
 
 			/* 4 decrypt payload include icv */
 
 			arcfour_init(&mycontext, rc4key, 16);
 			arcfour_encrypt(&mycontext, payload, payload, length);
 
-			*((__le32 *)crc) = getcrc32(payload, length-4);
+			*((__le32 *)crc) = getcrc32(payload, length - 4);
 
-			if (crc[3] != payload[length-1] ||
-			    crc[2] != payload[length-2] ||
-			    crc[1] != payload[length-3] ||
-			    crc[0] != payload[length-4]) {
+			if (crc[3] != payload[length - 1] ||
+			    crc[2] != payload[length - 2] ||
+			    crc[1] != payload[length - 3] ||
+			    crc[0] != payload[length - 4]) {
 				RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
 					 ("rtw_wep_decrypt:icv error crc (%4ph)!=payload (%4ph)\n",
-					 &crc, &payload[length-4]));
+					  &crc, &payload[length - 4]));
 				res = _FAIL;
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_decrypt: stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("rtw_tkip_decrypt: stainfo==NULL!!!\n"));
 			res = _FAIL;
 		}
 	}
@@ -729,7 +812,6 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 
 /* 3			===== AES related ===== */
 
-
 #define MAX_MSG_SIZE	2048
 /*****************************/
 /******** SBOX Table *********/
@@ -775,10 +857,15 @@ static  u8 sbox_table[256] = {
 /*****************************/
 
 static void bitwise_xor(u8 *ina, u8 *inb, u8 *out);
-static void construct_mic_iv(u8 *mic_header1, int qc_exists, int a4_exists, u8 *mpdu, uint payload_length, u8 *pn_vector);
-static void construct_mic_header1(u8 *mic_header1, int header_length, u8 *mpdu);
-static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, int a4_exists, int qc_exists);
-static void construct_ctr_preload(u8 *ctr_preload, int a4_exists, int qc_exists, u8 *mpdu, u8 *pn_vector, int c);
+static void construct_mic_iv(u8 *mic_header1, int qc_exists, int a4_exists,
+			     u8 *mpdu, uint payload_length, u8 *pn_vector);
+static void construct_mic_header1(u8 *mic_header1, int header_length,
+				  u8 *mpdu);
+static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, int a4_exists,
+				  int qc_exists);
+static void construct_ctr_preload(u8 *ctr_preload, int a4_exists,
+				  int qc_exists, u8 *mpdu, u8 *pn_vector,
+				  int c);
 static void xor_128(u8 *a, u8 *b, u8 *out);
 static void xor_32(u8 *a, u8 *b, u8 *out);
 static u8 sbox(u8 a);
@@ -841,6 +928,7 @@ static void next_key(u8 *key, int round)
 static void byte_sub(u8 *in, u8 *out)
 {
 	int i;
+
 	for (i = 0; i < 16; i++)
 		out[i] = sbox(in[i]);
 }
@@ -901,7 +989,7 @@ static void mix_column(u8 *in, u8 *out)
 
 	for (i = 3; i > 0; i--) {    /* logical shift left 1 bit */
 		andf7[i] = andf7[i] << 1;
-		if ((andf7[i-1] & 0x80) == 0x80)
+		if ((andf7[i - 1] & 0x80) == 0x80)
 			andf7[i] = (andf7[i] | 0x01);
 	}
 	andf7[0] = andf7[0] << 1;
@@ -970,7 +1058,8 @@ static void construct_mic_iv(u8 *mic_iv, int qc_exists, int a4_exists, u8 *mpdu,
 	if (!qc_exists)
 		mic_iv[1] = 0x00;
 	for (i = 2; i < 8; i++)
-		mic_iv[i] = mpdu[i + 8];	/* mic_iv[2:7] = A2[0:5] = mpdu[10:15] */
+		mic_iv[i] = mpdu[i + 8];
+	     /* mic_iv[2:7] = A2[0:5] = mpdu[10:15] */
 	for (i = 8; i < 14; i++)
 		mic_iv[i] = pn_vector[13 - i];	/* mic_iv[8:13] = PN[5:0] */
 	mic_iv[14] = (unsigned char)(payload_length / 256);
@@ -987,7 +1076,8 @@ static void construct_mic_header1(u8 *mic_header1, int header_length, u8 *mpdu)
 	mic_header1[0] = (u8)((header_length - 2) / 256);
 	mic_header1[1] = (u8)((header_length - 2) % 256);
 	mic_header1[2] = mpdu[0] & 0xcf;    /* Mute CF poll & CF ack bits */
-	mic_header1[3] = mpdu[1] & 0xc7;    /* Mute retry, more data and pwr mgt bits */
+	/* Mute retry, more data and pwr mgt bits */
+	mic_header1[3] = mpdu[1] & 0xc7;
 	mic_header1[4] = mpdu[4];       /* A1 */
 	mic_header1[5] = mpdu[5];
 	mic_header1[6] = mpdu[6];
@@ -1007,7 +1097,8 @@ static void construct_mic_header1(u8 *mic_header1, int header_length, u8 *mpdu)
 /* Builds the last MIC header block from	*/
 /* header fields.			       */
 /************************************************/
-static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, int a4_exists, int qc_exists)
+static void construct_mic_header2(u8 *mic_header2, u8 *mpdu,
+				  int a4_exists, int qc_exists)
 {
 	int i;
 
@@ -1026,7 +1117,7 @@ static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, int a4_exists, int
 
 	if (!qc_exists && a4_exists) {
 		for (i = 0; i < 6; i++)
-			mic_header2[8+i] = mpdu[24+i];   /* A4 */
+			mic_header2[8 + i] = mpdu[24 + i];   /* A4 */
 	}
 
 	if (qc_exists && !a4_exists) {
@@ -1036,7 +1127,7 @@ static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, int a4_exists, int
 
 	if (qc_exists && a4_exists) {
 		for (i = 0; i < 6; i++)
-			mic_header2[8+i] = mpdu[24+i];   /* A4 */
+			mic_header2[8 + i] = mpdu[24 + i];   /* A4 */
 
 		mic_header2[14] = mpdu[30] & 0x0f;
 		mic_header2[15] = mpdu[31] & 0x00;
@@ -1048,7 +1139,8 @@ static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, int a4_exists, int
 /* Builds the last MIC header block from	*/
 /* header fields.			       */
 /************************************************/
-static void construct_ctr_preload(u8 *ctr_preload, int a4_exists, int qc_exists, u8 *mpdu, u8 *pn_vector, int c)
+static void construct_ctr_preload(u8 *ctr_preload, int a4_exists,
+				  int qc_exists, u8 *mpdu, u8 *pn_vector, int c)
 {
 	int i;
 
@@ -1063,9 +1155,11 @@ static void construct_ctr_preload(u8 *ctr_preload, int a4_exists, int qc_exists,
 		ctr_preload[1] = mpdu[24] & 0x0f;
 
 	for (i = 2; i < 8; i++)
-		ctr_preload[i] = mpdu[i + 8];		       /* ctr_preload[2:7] = A2[0:5] = mpdu[10:15] */
+		ctr_preload[i] = mpdu[i + 8];
+	     /* ctr_preload[2:7] = A2[0:5] = mpdu[10:15] */
 	for (i = 8; i < 14; i++)
-		ctr_preload[i] =    pn_vector[13 - i];	  /* ctr_preload[8:13] = PN[5:0] */
+		ctr_preload[i] =    pn_vector[13 - i];
+	     /* ctr_preload[8:13] = PN[5:0] */
 	ctr_preload[14] =  (unsigned char)(c / 256); /* Ctr */
 	ctr_preload[15] =  (unsigned char)(c % 256);
 }
@@ -1116,11 +1210,13 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 	else
 		a4_exists = 1;
 
-	if ((frtype == WIFI_DATA_CFACK) || (frtype == WIFI_DATA_CFPOLL) || (frtype == WIFI_DATA_CFACKPOLL)) {
+	if ((frtype == WIFI_DATA_CFACK) || (frtype == WIFI_DATA_CFPOLL) ||
+	    (frtype == WIFI_DATA_CFACKPOLL)) {
 		qc_exists = 1;
 		if (hdrlen !=  WLAN_HDR_A3_QOS_LEN)
 			hdrlen += 2;
-	} else if ((frsubtype == 0x08) || (frsubtype == 0x09) || (frsubtype == 0x0a) || (frsubtype == 0x0b)) {
+	} else if ((frsubtype == 0x08) || (frsubtype == 0x09) ||
+		   (frsubtype == 0x0a) || (frsubtype == 0x0b)) {
 		if (hdrlen !=  WLAN_HDR_A3_QOS_LEN)
 			hdrlen += 2;
 		qc_exists = 1;
@@ -1129,11 +1225,11 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 	}
 
 	pn_vector[0] = pframe[hdrlen];
-	pn_vector[1] = pframe[hdrlen+1];
-	pn_vector[2] = pframe[hdrlen+4];
-	pn_vector[3] = pframe[hdrlen+5];
-	pn_vector[4] = pframe[hdrlen+6];
-	pn_vector[5] = pframe[hdrlen+7];
+	pn_vector[1] = pframe[hdrlen + 1];
+	pn_vector[2] = pframe[hdrlen + 4];
+	pn_vector[3] = pframe[hdrlen + 5];
+	pn_vector[4] = pframe[hdrlen + 6];
+	pn_vector[5] = pframe[hdrlen + 7];
 
 	construct_mic_iv(mic_iv, qc_exists, a4_exists, pframe, plen, pn_vector);
 
@@ -1154,7 +1250,8 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 	aes128k128d(key, chain_buffer, aes_out);
 
 	for (i = 0; i < num_blocks; i++) {
-		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);/* bitwise_xor(aes_out, &message[payload_index], chain_buffer); */
+		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
+	     /* bitwise_xor(aes_out, &message[payload_index], chain_buffer); */
 
 		payload_index += 16;
 		aes128k128d(key, chain_buffer, aes_out);
@@ -1165,7 +1262,8 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
 		for (j = 0; j < payload_remainder; j++)
-			padded_buffer[j] = pframe[payload_index++];/* padded_buffer[j] = message[payload_index++]; */
+			padded_buffer[j] = pframe[payload_index++];
+		     /* padded_buffer[j] = message[payload_index++]; */
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		aes128k128d(key, chain_buffer, aes_out);
 	}
@@ -1175,37 +1273,42 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 
 	/* Insert MIC into payload */
 	for (j = 0; j < 8; j++)
-		pframe[payload_index+j] = mic[j];
+		pframe[payload_index + j] = mic[j];
 
 	payload_index = hdrlen + 8;
 	for (i = 0; i < num_blocks; i++) {
-		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, pn_vector, i+1);
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists,
+				      pframe, pn_vector, i + 1);
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
 		for (j = 0; j < 16; j++)
 			pframe[payload_index++] = chain_buffer[j];
 	}
 
-	if (payload_remainder > 0) {    /* If there is a short final block, then pad it,*/
-					/* encrypt it and copy the unpadded part back   */
-		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, pn_vector, num_blocks+1);
+	if (payload_remainder > 0) {
+		/* If there is a short final block, then pad it,
+		 * encrypt it and copy the unpadded part back
+		 */
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists,
+				      pframe, pn_vector, num_blocks + 1);
 
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
 		for (j = 0; j < payload_remainder; j++)
-			padded_buffer[j] = pframe[payload_index+j];
+			padded_buffer[j] = pframe[payload_index + j];
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		for (j = 0; j < payload_remainder; j++)
 			pframe[payload_index++] = chain_buffer[j];
 	}
 	/* Encrypt the MIC */
-	construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, pn_vector, 0);
+	construct_ctr_preload(ctr_preload, a4_exists,
+			      qc_exists, pframe, pn_vector, 0);
 
 	for (j = 0; j < 16; j++)
 		padded_buffer[j] = 0x00;
 	for (j = 0; j < 8; j++)
-		padded_buffer[j] = pframe[j+hdrlen+8+plen];
+		padded_buffer[j] = pframe[j + hdrlen + 8 + plen];
 
 	aes128k128d(key, ctr_preload, aes_out);
 	bitwise_xor(aes_out, padded_buffer, chain_buffer);
@@ -1225,7 +1328,8 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	u8	*pframe, *prwskey;	/*  *payload,*iv */
 	u8   hw_hdr_offset = 0;
 	struct	sta_info		*stainfo;
-	struct	pkt_attrib	 *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
+	struct	pkt_attrib	 *pattrib =
+				     &((struct xmit_frame *)pxmitframe)->attrib;
 	struct	security_priv	*psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv		*pxmitpriv = &padapter->xmitpriv;
 
@@ -1236,7 +1340,8 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 		return _FAIL;
 
 	hw_hdr_offset = TXDESC_SIZE +
-		 (((struct xmit_frame *)pxmitframe)->pkt_offset * PACKET_OFFSET_SZ);
+		 (((struct xmit_frame *)pxmitframe)->pkt_offset *
+		  PACKET_OFFSET_SZ);
 
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;
 
@@ -1245,30 +1350,51 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 		if (pattrib->psta)
 			stainfo = pattrib->psta;
 		else
-			stainfo = rtw_get_stainfo(&padapter->stapriv, &pattrib->ra[0]);
+			stainfo = rtw_get_stainfo(&padapter->stapriv,
+						  &pattrib->ra[0]);
 
 		if (stainfo) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("%s: stainfo!= NULL!!!\n", __func__));
 
 			if (is_multicast_ether_addr(pattrib->ra))
 				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
 			else
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
-			for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
-				if ((curfragnum+1) == pattrib->nr_frags) {	/* 4 the last fragment */
-					length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
-
-					aes_cipher(prwskey, pattrib->hdrlen, pframe, length);
+			for (curfragnum = 0;
+					  curfragnum < pattrib->nr_frags;
+					  curfragnum++) {
+				/* 4 the last fragment */
+				if ((curfragnum + 1) == pattrib->nr_frags) {
+					length = pattrib->last_txcmdsz -
+						 pattrib->hdrlen -
+						 pattrib->iv_len -
+						 pattrib->icv_len;
+
+					aes_cipher(prwskey,
+						   pattrib->hdrlen,
+						   pframe,
+						   length);
 				} else {
-					length = pxmitpriv->frag_len-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
-
-					aes_cipher(prwskey, pattrib->hdrlen, pframe, length);
+					length = pxmitpriv->frag_len -
+						 pattrib->hdrlen -
+						 pattrib->iv_len -
+						 pattrib->icv_len;
+
+					aes_cipher(prwskey,
+						   pattrib->hdrlen,
+						   pframe,
+						   length);
 					pframe += pxmitpriv->frag_len;
-					pframe = (u8 *)round_up((size_t)(pframe), 8);
+					pframe =
+					    (u8 *)round_up((size_t)(pframe), 8);
 				}
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("%s: stainfo==NULL!!!\n", __func__));
 			res = _FAIL;
 		}
 	}
@@ -1278,32 +1404,42 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 {
-	struct rx_pkt_attrib *prxattrib = &((struct recv_frame *)precvframe)->attrib;
+	struct rx_pkt_attrib *prxattrib =
+				&((struct recv_frame *)precvframe)->attrib;
 	u32 res = _SUCCESS;
 
 	/* 4 start to encrypt each fragment */
 	if (prxattrib->encrypt == _AES_) {
-		struct sta_info *stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
+		struct sta_info *stainfo = rtw_get_stainfo(&padapter->stapriv,
+							   &prxattrib->ta[0]);
 
 		if (stainfo != NULL) {
 			int key_idx;
 			const int key_length = 16, iv_len = 8, icv_len = 8;
-			struct sk_buff *skb = ((struct recv_frame *)precvframe)->pkt;
+			struct sk_buff *skb =
+					((struct recv_frame *)precvframe)->pkt;
 			void *crypto_private = NULL;
 			u8 *key, *pframe = skb->data;
-			struct lib80211_crypto_ops *crypto_ops = lib80211_get_crypto_ops("CCMP");
-			struct security_priv *psecuritypriv = &padapter->securitypriv;
+			struct lib80211_crypto_ops *crypto_ops =
+						lib80211_get_crypto_ops("CCMP");
+
+			struct security_priv *psecuritypriv =
+							&padapter->securitypriv;
 			char iv[8], icv[8];
 
 			if (is_multicast_ether_addr(prxattrib->ra)) {
-				/* in concurrent we should use sw descrypt in group key, so we remove this message */
+				/* in concurrent we should use
+				 * sw descrypt in group key,
+				 * so we remove this message
+				 */
 				if (!psecuritypriv->binstallGrpkey) {
 					res = _FAIL;
 					DBG_88E("%s:rx bc/mc packets, but didn't install group key!!!!!!!!!!\n", __func__);
 					goto exit;
 				}
 				key_idx = psecuritypriv->dot118021XGrpKeyid;
-				key = psecuritypriv->dot118021XGrpKey[key_idx].skey;
+				key =
+				  psecuritypriv->dot118021XGrpKey[key_idx].skey;
 			} else {
 				key_idx = 0;
 				key = stainfo->dot118021x_UncstKey.skey;
@@ -1322,11 +1458,16 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 				res = _FAIL;
 				goto exit_lib80211_ccmp;
 			}
-			if (crypto_ops->set_key(key, key_length, NULL, crypto_private) < 0) {
+			if (crypto_ops->set_key(key,
+						key_length,
+						NULL,
+						crypto_private) < 0) {
 				res = _FAIL;
 				goto exit_lib80211_ccmp;
 			}
-			if (crypto_ops->decrypt_mpdu(skb, prxattrib->hdrlen, crypto_private)) {
+			if (crypto_ops->decrypt_mpdu(skb,
+						     prxattrib->hdrlen,
+						     crypto_private)) {
 				res = _FAIL;
 				goto exit_lib80211_ccmp;
 			}
@@ -1342,7 +1483,9 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 			if (crypto_ops && crypto_private)
 				crypto_ops->deinit(crypto_private);
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_encrypt: stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_,
+				 _drv_err_,
+				 ("rtw_aes_encrypt: stainfo==NULL!!!\n"));
 			res = _FAIL;
 		}
 	}
-- 
2.17.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
