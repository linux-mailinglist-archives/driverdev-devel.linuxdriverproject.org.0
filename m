Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE9A1855FA
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Mar 2020 17:15:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8190187BB5;
	Sat, 14 Mar 2020 16:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYSzGWNVh42n; Sat, 14 Mar 2020 16:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53AE287B7B;
	Sat, 14 Mar 2020 16:15:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DACE31BF42E
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 16:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2E6687B84
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 16:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id drtWOqPZc59I for <devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 16:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6462087B7B
 for <devel@driverdev.osuosl.org>; Sat, 14 Mar 2020 16:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584202520;
 bh=+Cey9W0qDhL9blf7YDqnmxt2qHCMNZyrQN8bBA3CrSY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=G/IVx0AaMVukfz4cnWbHSYlrhthY0B3QUoA5X+33Q4ex9FkkWeagS3DdZ22sZ98nf
 +0XCFqeO8310cdKhcUy4xbPJUOYDv+q3pzRju6nxtR2xLkVhKVBayYTPxb4RDPt/ef
 xHePC36qiocQHBBUdfn/vZqGpZHLp1aQHXVuv4o0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MSc1L-1ikOBt21pR-00StSE; Sat, 14 Mar 2020 17:15:20 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH v2] staging: vt6656: Use BIT_ULL() macro instead of bit shift
 operation
Date: Sat, 14 Mar 2020 17:14:41 +0100
Message-Id: <20200314161441.4870-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:dr3jVjQMoh0KUHNN6Az3uPVe0kI6mi8G0B3vSf4x9r+DxqbFhq0
 zPDObF/FNVkou6QlsKW4UeWcu3yfV3hwabmhPHwmjWSYt9VjBduGCds+IUfRrheMSO2qlZl
 h0GRY9v+TbKcccwkpV7OVaeCb2gX6QEg9YSqxdH73FtTHhgDkilyXiO+AMKy0XCgNMS14P6
 KQRy1E40L1+4Oq5UykBvw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:jcswsmEnrfw=:yJEWLCI5lFHm3CkvqFvu40
 Xdt/ebqqn7Doc4JVUxs5lDLjyDy7MdLQ3ZTeJ6HpcLh/i7fJ19rfIkiNGWUiiJQirrDtU7vZC
 yP039fS1wgD7ob+bAnwkdd8/cftKXYDcpDNazrNJ9hfWSOv29jqmM/lAl+2JeIUEVs3t11a3e
 4i2KZOWKl8zZWDKLNZ5FtNWdt7gLqIV/q0H6MbNowhL3/wGUoc8Kjn3tRJfIPzAAs4SvdrZuV
 TatesIxRrLPdf3Kfw8AZV3XmFOVv/38f3ik62EIxAqjCSxMuOp/wjWClU48dvEx7UsyUiTwvf
 GTCsNqwAwiu12EThjySGE23Y3XCAJgluYn5ppsGsXiG32R+tA8g6i+O5lbxenrZICFhHoaZod
 LQBmJkM3Bj2dpDU66gF//JSkh9HlHLgmqeYrY1KoKIo6b1oV61ong69fufb+FK3UvPTlBWBE3
 fs5ooz8GoBAet/1otHEEUEO4B5In3yGkQ2wbOFxeO7yiBfm7Zjm7EIqQWFV3QP2ii930Mlhyv
 0lCJRWlLthtMzRybArooLRC3tsiXWZC14ND4lQ+PA5vYWCUFAyzDJLlZoc97Pl3B3jEC4f82M
 8SE28y8cbSOEzLwhnY8lv7FwuzA26h8yPPTgU0zvek+GL8xAw8yzx07OKcv1Tpf+wokdmEU+s
 T/FoXl9ZpTAyhcronZJ8h4XIpGXbYlhqzzNkeBp7OXJn/ymbs/25RESM2eLEHWz8Hq2/r2kn+
 sWkQJScFNo2Fef/6BsMUAUDe2aVaHqj8I99cifEiIELZfD4GOT9M8eEvXlNAtvVUtiPdHFwhj
 VBXfL6dWrLisWDRdcbjQu6zvaL7Dm0M+lqRmHV2GenxG2ioy/1aUKjD0XkhFga1yPZ4TPfsl1
 2daYlU6VClA7Wdik/6gNE3S2+e8XifHGi8O3nwxfbemzHVoM+W0N1/2pbORJNqw3TIwBrmU9y
 An4b0U4B5ofX165NzPj4tbClBhks/Qg3+BEU5AWAF6/mLMni6fEzmQQFNWQU1WRtJDaXg15Go
 X2nAeDBNqtggcj1PZbJ7yKFziwMTLHliyRpj1ApUnVl5zNzwWsBQ87VTyPmQeguzfPBYTvMPF
 Jo/YXbKvveN6fP031bSTt8QchtSfyD9ahwkaiVQRDbXiYze35U4H3hBz7DsoQm3leI0+6fgOW
 tK4tW+h1MIYNS9yW6tOylmhIGrGjVlznCarndfMc/VTp/3TaJVvuiQOPBk5T+pQy37V/Bar4I
 nnSu33YMBFGkVr/Y6
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
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the bit left shift operation with the BIT_ULL() macro and remove
the unnecessary mask off operation against the bit_nr variable.

This mask is only there for legacy reasons. Originally it was 31 (0x1f)
and the bit_nr variable spread across an mc_filter array with two u32
elements. Now, this mask is not needed because its value is 0x3f and the
mc_filter variable is an u64 type.

In this situation, the 26 bit right shift operation against the value
returned by the ether_crc function set the bit_nr variable to the
following value:

bit 31 to bit 6 -> All 0 (due to the bit shift operation happens over an
unsigned type).

bit 5 to bit 0 -> The 6 msb bits of the value returned by the ether_crc
function.

The purpose of the 0x3f mask against the bit_nr variable is to reset
(set to 0) the 26 msb bits (bit 31 to bit 6), but these bits are yet 0.
So, the mask off operation is now unnecessary.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Changelog v1 -> v2
- Add more information to clarify the patch.
- Add notes about the legacy provide by Malcolm Priestley.

 drivers/staging/vt6656/main_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 5e48b3ddb94c..f7ca9e97594d 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -21,6 +21,7 @@
  */
 #undef __NO_VERSION__

+#include <linux/bits.h>
 #include <linux/etherdevice.h>
 #include <linux/file.h>
 #include "device.h"
@@ -802,8 +803,7 @@ static u64 vnt_prepare_multicast(struct ieee80211_hw *hw,

 	netdev_hw_addr_list_for_each(ha, mc_list) {
 		bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
-
-		mc_filter |= 1ULL << (bit_nr & 0x3f);
+		mc_filter |= BIT_ULL(bit_nr);
 	}

 	priv->mc_list_count = mc_list->count;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
