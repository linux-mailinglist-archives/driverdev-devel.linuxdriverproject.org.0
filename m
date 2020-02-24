Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F38516A4B0
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 12:15:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C859522786;
	Mon, 24 Feb 2020 11:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bpmvKmN+zUqc; Mon, 24 Feb 2020 11:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1390D204DF;
	Mon, 24 Feb 2020 11:15:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA82E1BF2F1
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6530204A6
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xTw9stSvL4to for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 11:15:20 +0000 (UTC)
X-Greylist: delayed 00:07:11 by SQLgrey-1.7.6
Received: from mx01-muc.bfs.de (mx01-muc.bfs.de [193.174.230.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 12F122034C
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 11:15:20 +0000 (UTC)
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
 by mx01-muc.bfs.de (Postfix) with ESMTPS id 2D1DF2030F;
 Mon, 24 Feb 2020 12:07:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901; 
 t=1582542479;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JCtrqclveZMR9bnvI+c35GZ68+SSPkioSoUcgAu7HVQ=;
 b=y+zc+9PnKoovr5BCvCo7GA9XEMgHyanYcREL45gWStYT8FIVh0tkI2IGR2q9b6ou4y5pGB
 KXxEKJRqUWb4K8ChNHjFfVSIsUG3Jm8zHEIb4hkFMnjnYecVWizeskB/g8JecJXwtAzlql
 86muZe7+JOTHRRWLcXJ5j43HYRv0kLkyk1KeCxeAQITpysgfjL2cl1MxfQYwo8Gr/h4a0i
 +UVP98BmP73xXpaZ36gQEkEvBo83YSsbc6X2kh2Y99VbHfOQWQZPSg04IrZZWx7uX3RyFZ
 Xb3IVS98u8Z42h5jgh8qYVrA0Kmng8xE+lNLp+pO7usS65/ms61XDIvawoF4ww==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 24 Feb
 2020 12:07:55 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Mon, 24 Feb 2020 12:07:55 +0100
From: Walter Harms <wharms@bfs.de>
To: Colin King <colin.king@canonical.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>
Subject: AW: [PATCH] staging: rtl8723bs: core: remove redundant zero'ing of
 counter variable k
Thread-Topic: [PATCH] staging: rtl8723bs: core: remove redundant zero'ing of
 counter variable k
Thread-Index: AQHV6l3vorwXgv50W0ysut7cburs2qgqLndI
Date: Mon, 24 Feb 2020 11:07:55 +0000
Message-ID: <5f875f84e6014d2bb5b78f71dc2831a2@bfs.de>
References: <20200223152840.418439-1-colin.king@canonical.com>
In-Reply-To: <20200223152840.418439-1-colin.king@canonical.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
MIME-Version: 1.0
Authentication-Results: mx01-muc.bfs.de
X-Spamd-Result: default: False [-3.00 / 7.00]; ARC_NA(0.00)[];
 TO_DN_EQ_ADDR_SOME(0.00)[]; HAS_XOIP(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 RCPT_COUNT_FIVE(0.00)[5]; DKIM_SIGNED(0.00)[];
 NEURAL_HAM(-0.00)[-0.989,0]; RCVD_NO_TLS_LAST(0.10)[];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 RCVD_COUNT_TWO(0.00)[2]; MID_RHS_MATCH_FROM(0.00)[];
 BAYES_HAM(-3.00)[99.99%]
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


________________________________________
Von: kernel-janitors-owner@vger.kernel.org <kernel-janitors-owner@vger.kernel.org> im Auftrag von Colin King <colin.king@canonical.com>
Gesendet: Sonntag, 23. Februar 2020 16:28
An: Greg Kroah-Hartman; devel@driverdev.osuosl.org
Cc: kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
Betreff: [PATCH] staging: rtl8723bs: core: remove redundant zero'ing of counter variable k

From: Colin Ian King <colin.king@canonical.com>

The zero'ing of counter variable k is redundant as it is never read
after breaking out of the while loop. Remove it.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index 3b8848182221..bdb6ff8aab7d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -244,10 +244,8 @@ u16        Address)
                while (!(Bytetemp & 0x80)) {
                        Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
                        k++;
-                       if (k == 1000) {
-                               k = 0;
+                       if (k == 1000)
                                break;
-                       }

IMHO this is confusing to read, i suggest:

 for(k=0;k<1000;k++) {
      Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
      if ( Bytetemp & 0x80 )
               break;
      }

 NTL is am wondering what will happen if k==1000
 and Bytetemp is still invalid. Will rtw_read8() fail or
 simply return invalid data ?

 ym2c,
 re,
 wh
                }
                return rtw_read8(Adapter, EFUSE_CTRL);
        } else
--
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
