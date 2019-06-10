Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C033B748
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 16:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D131286739;
	Mon, 10 Jun 2019 14:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5YtwvGLSCS6p; Mon, 10 Jun 2019 14:25:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85A6386645;
	Mon, 10 Jun 2019 14:25:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 612911BF41D
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 14:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C3B6203F9
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 14:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KS51v1NV24c2 for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 14:25:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B75A20015
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1560176742;
 bh=U44tvgLFlGaanEXUft8L0ra5RPYPwCR8fVvFRN9rId0=;
 h=X-UI-Sender-Class:Date:From:To:Subject;
 b=jhPIwgyZDrcYiBE+EBVITpjmvPs8k9ybFnBqORDaxjODcpAt37tHB6PfgUKF0NCCb
 DWtjsoQEsXz93E+sAXRMVK0jGkQ1UcV2K45xvSwaqRdZ+xh+i8cY47FtkfzCAK/KyI
 mGp+4SMoCWEj61fxRNs3x6hUdm/HJCQl8c9cXj5c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from baum ([188.192.86.147]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N3siA-1gamQQ0aDg-00zrCT; Mon, 10
 Jun 2019 16:25:42 +0200
Date: Mon, 10 Jun 2019 16:30:26 +0200
From: Li Mingshuo <linuxli@gmx.de>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: remove the leading spaces
Message-ID: <20190610143024.GA6154@baum>
MIME-Version: 1.0
Content-Disposition: inline
X-Provags-ID: V03:K1:5EtO3LE+QSuVCzAbJwqSNCufpBC2Aw1MmQ7nY0FBtBEGaeD6eeE
 GzWcSLsYFO5hgsc3foTkbP4WUF/moYt8MCT75YxmSB+RY8YY5GxsPP0f+vlkK763J/SSYEX
 qGTMU5lpLf27wlpWcfNuD7TB0FjYgDHdiD3brcjnDoIJTX0ou7UOIwDWbCNPJ6XTa6NFvwJ
 Ry4VQt9y4dG8WozhKP4tA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:1nwd2riEFaY=:H9YGwNcLOMEljwutjRS/5e
 rstzuPeNjjJKws6LSo5xKkaCGN0ASct7o9aGbSKMMmdKzpWleoO9tJyuaOGMhh5UFoEgoupnk
 lkHCAMJ0ZT1hHRSmMeVyxiV1UY55amaKRuQ8OmHTTsFNwnasfhvWkuVluifFguUxmPFUrQARt
 P5OJqg2nIFFkqMz6wtC/acQNGvPQdrnryvfFf5lYBfD5tDRdt8G+ETXo6UhxHduCkKiau12Xq
 wjofvbJo4wNyfT5NkZLgZPAXnsEfwX+FrtQluu//r5oPZIlGJClPI23mEOGj10wYfB6wu9/Ni
 Z2JXfQZujesZNqRY9tSq3ocgzDPBMSOYRprqXpwnEgAqthBMpGoGzrohBUJ/DFk8WOJh6M+iE
 CAqScJhJVn6NbYmR3iu5wgiOjaCmiLXwetB1F5VKY1jcwoqAK0+o9mjrvaM7+l5qNHm2E9U67
 nhORmubxQZhzRegBc1hp7vF+8uR4/pEX1YjeUNyMB9MqT9c11U0Y2XvbrduT0joPD1VDRjFC+
 PIhvw/pHDrxt5NQxnKKq0pL7Ptn0P1/OCfcrbvnOriXjI4yAQORa+FIreNGbWLrjl2afmLQVB
 C5V2AdsP6azJ2cESHHnE+jwf1F6iBiytTF3ghFiQArOq0p6jk+xpI8moWw/y7Ps5LNqwAbEwj
 7TuMGiKna35CLT4aIvW0+4ZvI7Kl/FwRNCoxAkmDM4P+Zz9tn1/POEHkulQl8Azh4rMi11r1V
 KktbpTfULV45/EVLOvERiBt5V4YbOE5lpBHBOHqbJr36RRXOwSIQyaiYAXhwbz1H0X2JdcyyG
 B49RRe81gct9w5FUYx3BF2Q+FKjuymqafsMf4/CaZRIZ+XUytvNZtXFsnXpib86+MPnk+vv/e
 vtEcBPpG5k51FUxdea6n5gJbZvf7f1DTq4r+EoeApRPui1BqkM5bPECJCbPu0LYUmijmKxllP
 jzAhqWPWAJXKgpuW/T3IQHQIDUlyG21I=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch warning, removing leading spaces to make
sure that tabstop starts a new line.

Signed-off-by: Li Mingshuo <linuxli@gmx.de>
---
 drivers/staging/rtl8712/rtl871x_xmit.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index 3bea2e374f13..4199cb586fb1 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -148,8 +148,8 @@ struct xmit_frame {
 	_pkt *pkt;
 	int frame_tag;
 	struct _adapter *padapter;
-	 u8 *buf_addr;
-	 struct xmit_buf *pxmitbuf;
+	u8 *buf_addr;
+	struct xmit_buf *pxmitbuf;
 	u8 *mem_addr;
 	u16 sz[8];
 	struct urb *pxmit_urb[8];
--
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
