Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 232131A8368
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 17:40:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA0A420796;
	Tue, 14 Apr 2020 15:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PEz8TZbYLYlK; Tue, 14 Apr 2020 15:40:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8E570203B2;
	Tue, 14 Apr 2020 15:40:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B589D1BF59D
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B0D6B861E7
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qajFaCkDw492 for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 15:40:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AF84684F75
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 15:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586878781;
 bh=9OBF6gIjnTCjWkLOnZw3x33tS8mKryfNv0za8UnranA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KR6ctP5E28ExNfQyU4nYL19Thd+6hjEDhiVKcsF77siheMnXF/whNUnEMxzcgYRK3
 xjlsJ41JvCplpQY/+yzOGwWtMobzasntqtLpcZpwkZAUjIJNVx73dWVxk2akb2anTS
 IBlNvTSrnvBPXdvIJI4EKTFwpNr42ZRYDawtAFUA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MPokD-1jbloF3z63-00MsVj; Tue, 14 Apr 2020 17:39:41 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/5] staging: vt6656: Use define instead of magic number for
 tx_rate
Date: Tue, 14 Apr 2020 17:38:47 +0200
Message-Id: <20200414153849.5785-4-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414153849.5785-1-oscar.carter@gmx.com>
References: <20200414153849.5785-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:lxuWUOiVxukpQ2P1v0kvR0BBk5n4QGoskbxEewLD2Q2qXZ6+QNZ
 JXOXB/XgnuoS/bgvRFm7LhcZX6TxmTt4QEd2e0yT68u3VkwECvKNCVYoxpmxx1p+GFL2GLc
 1qZUYdaYDdpd4d5mq2tXnitAsQZnNpeK8kXWTTJdY/jw27Czr36oafo4rE043sdCJ1QnE1N
 1e8fPVj5LQVEGIYr13oWg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:T4fp2YI8ohc=:OHdWikw8B0zzCa595ZMPoV
 j1Ti4zhYfcSJdu03kXfZFaG6Tk5aLGK1YkfWB01k8DXtxNT38UIO7DTxbRLwLQM6H5yjJiQd2
 T2YT34U0fHl/inq1C64CZHzp3OF106H3xWPee/m2RiFjoTW/Mz2IIX01jR56B5/27BrH7EXMJ
 j9+CEqzTs84U+Yq4DFIdYPDVhotKGtuqZjH92mBDYCkPQsx4U5USliuBAXj3N8r/mEygO/665
 83RPVmIu3KX2sQBBlmpXLukuBERZb0+UGl4c34xU/AcdsjHVXpL9UY+9aGj9fNur6Q0k0Vrdd
 +tDP+niIhJE8AGW/S95CtAGvtp8NRxvFsiZhP7gMG8rN/ztQjQp3U4ODrxqk9dPW8ZxtisU5Y
 Di+edi9gRbWu1TqtMeWtdicySfOijZxho2TBP7Li64X9DMFlUs5/0Uoe9ENzJ+Ue3Y7TgKCT4
 bV14tXOoR7PQZXSerayNO2ly/XZ1qaKJ1FD3OmOVjaWen1NV+O2ypfQhwRrwq7gf1YZAqnd5C
 pBVFezB5ppDWAwyRxzOq0X8663yRqlBgWuU+ThAqn38wwqKc+SFsv2eU0n4MvAl4lP65LUAaI
 v0+0mX3ZIBClnYa+kISKrjKsu/iFCdthSf2HlxchSvUiDzlxzLV5MAWcTe92mx2IZ143lgkF2
 BNCXLWfv4zcAnVmX/XUc7MDtvxLnd0ZtWlwDHb0hoOwOzFom0hixXSAm41qOBt/brb5ytgBzX
 LmjUa+OHTJFZAzrJMnvhwP3Zh48+j6h6TstgCLH+WYVn3GO4AEpcbgcIr0xiMKdLvBEXi2oLF
 P3yZ8SjjVKVrcG4ZwcaUI+3GzTHFIEIgqZNeJKIk/j2UXj17OCMIIegsLVBsAAcFjhcXXyWK/
 myI7uJC7Q++n8VtS+Pd3RJjRPlmjoGRLREHSiStKZ4e4Ou8w+98rY7t4wisuQkGc2khTxcrU9
 ZYsrUilsBs6pZ5+cOIm1gTNzDKI0ZzNZvvqB/3aFHMgITYUBa35BhW53Yp0VUK0eJkBqVqVgM
 wmQpZijVk56AKVLyA/ihiFI0BC5tBGOYg5cbyJc21nYL+q5XfL30D/Hw3cpXqZNpgjYrbCxoD
 0t3vlp2RgxElGnSfWVgrXzP1WAphK9MmSbZKQGuAeFrlp443I+cphSbr98wuzCXG0d/y6K0Pa
 Myc6/G7uEOCdo4giCascLHWwaCKCItWej0R5B8pLZ2AuR4+PpU3ie56IgRuJt8mP4yDRLtMKV
 wvoTtKDJ6ybZq5gaU
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the define RATE_11M present in the file "device.h" instead of the
magic number 3. So the code is more clear.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index e0352405e4cf..149c9bba7108 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -24,6 +24,7 @@

 #include <linux/bits.h>
 #include <linux/kernel.h>
+#include "device.h"
 #include "mac.h"
 #include "baseband.h"
 #include "rf.h"
@@ -221,7 +222,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,

 	rate = (unsigned int)vnt_frame_time[tx_rate];

-	if (tx_rate <= 3) {
+	if (tx_rate <= RATE_11M) {
 		if (preamble_type == PREAMBLE_SHORT)
 			preamble = 96;
 		else
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
