Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EAE1A11DA
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 18:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6ACA587613;
	Tue,  7 Apr 2020 16:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jyd16XoC4bgE; Tue,  7 Apr 2020 16:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8EF487631;
	Tue,  7 Apr 2020 16:39:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EEEB11BF47F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8D5E87BFE
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3qWAcBqbZIm for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 16:39:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E2E287B6D
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 16:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586277582;
 bh=sgFBcuEhJ09mNWZg34/SHX56SC+2GL9Chr9TTaUeP1s=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TPGr2ttTPy4K7zMAmRKEHRH79rNJIQOVUG/T7ryGHLGo10c9OK46Z3nfWObswQWTn
 QVxqsnXaIWsOxeB3hozsxGWyJObUhrDXzmAktAhmFFkXcGbdmqeomxmmENr8plYb6q
 9vneJQT1e8U9SdG+3+PIx5UrvTmIu+8fwaefyzNc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1M8ygO-1jPisi2mgw-006At5; Tue, 07 Apr 2020 18:39:42 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/2] staging: vt6656: Use define instead of magic number
 for tx_rate
Date: Tue,  7 Apr 2020 18:39:14 +0200
Message-Id: <20200407163915.7491-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407163915.7491-1-oscar.carter@gmx.com>
References: <20200407163915.7491-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:80gdE0QlBjoYBKLhB15CgxM2/0qdTaSX6YXBn+M3I/XTjQLkEk3
 3f0twBV+6Yee+7jaZPU22/kN3PSGSMQ66NAgUhe8DuUmTceeVyFXYiVZCe2uCQUns1TsohY
 1nwjSyS56NHIAhpL9fkGluik6/oYFMfpooPwtkyL3pwF2LgkZGSld0+Qy3kEHharogd5kAb
 5r7MVEicf+xLoMhJ/Q+Gw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:irZJPE8IK2k=:HeMx1OxnRCK+wsO10X51Vk
 i5SrpEPdI2/YYhcsvTSeD0pAqRfzqCuvxPHec1oNK5J989yA9Y4T0QNyQczh0gbMTU25Fihbl
 68pae8CJa/eY0JBekvUcK89U3sHM3xjeIRwWdcxyReKnqiYutEVLbZtDxc/6p1adzD/xn52W4
 XAM9o0muwLDcXTBQhUvlMwSiW8djbjrlTFMaNYvpv8laq1OIYQgtKDNgsTGYc+OHM7x2PDebQ
 Rb0kv7IZeE0AW39fJ5yf0vWdxv6Li4M3fCxKJ3E1QnaOVhBq/3urmdWo2a7aa680AlcOhfhDs
 dGRhfOYpK66KRTW8DArOdPQLhLD/fqsYR2d+c1lJMxQ2JTy4lM+cCrDXWDCymNLaSatsPsIWn
 NSC5wTdV1q4iwhP3x5LZXptBnBtDKe2wEVQk0b+p4Y2TEtvqKab6Qg0+HI5kW/Rfb3XekvOEZ
 w52dHxPKZMUSgOHE0cy47WcVG90WcG7zFhJDTXxNNPOqksZmWqzgA1nSe/M0oOm/QV3lIMr7T
 g7qXXu/F9jSapRQo4TttvfaLvYU1OAyqceIzemJpKQn5+boCSRwQMledNsnoovZ20qvxTgonn
 hxHAzzT63wIUwQGRDvNpCgIGs9PQVThKryM64lCdQcCZ13gy2y/QRdEWoKS7oX1swhftn2Mpc
 ipU7XTMU3X0xMTMeI4Mg6jrXo/wcTX7ScjnKeTut4h69sAyRHnPpS/cao/avWlbPgoEhr76jd
 K85uPgqIQ2fKTPg/rRH6kincw3spMCJH6vKayFB952fYyT8gKqttWSacP+zsLo38cHF5snrcD
 gJ5V0vjaTB4IoWr+ARtZOl/XtkAYZdENw3xX4Hsa04hJCDJFNnqUfWoI1KRlw/f9f4SVN0UOj
 GpFtPPBbznyVmx4p17t9v5Uo+IhcqhxdMb6e/zniWABhBC2ypEnnxTFrj1LQ5RNoQWifW567f
 RhnadIX93eML1XTG4BNwpPYd7/Rj6bvEheCVVnr7heLCgpFI6OHlEmpGcPgoLcw6bZS3sl/GX
 13+w3gqk+GtLjW7rQeM7M1GsGtjL+8Covvge1NhnK32Cpv0qEpZKC+hFhp6/CXX3px0k6D0pd
 AFbJ4+N9dAmNSr9W40nWHZqqFH6VIfX0QTMZZs8aW22psH3TIeOjx7QPpOuv7ZJidcA/TZATE
 uBB2kyJVfMeTzjUwAqE22ZfK6IOEsGPAfMMBWi5QrWdkT3v9EuSaIm7B0k93G55dkNV05cMuO
 fnEjETBqQpq1DZ2CA
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
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
index a19a563d8bcc..092e56668a09 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -24,6 +24,7 @@

 #include <linux/bits.h>
 #include <linux/kernel.h>
+#include "device.h"
 #include "mac.h"
 #include "baseband.h"
 #include "rf.h"
@@ -141,7 +142,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,

 	rate = (unsigned int)vnt_frame_time[tx_rate];

-	if (tx_rate <= 3) {
+	if (tx_rate <= RATE_11M) {
 		if (preamble_type == 1)
 			preamble = 96;
 		else
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
