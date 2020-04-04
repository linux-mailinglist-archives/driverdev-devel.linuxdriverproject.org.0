Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7619D19E56E
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Apr 2020 16:15:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D8ED86274;
	Sat,  4 Apr 2020 14:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tn1tsn9QanA; Sat,  4 Apr 2020 14:15:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36E478626C;
	Sat,  4 Apr 2020 14:15:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59BE91BF20F
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 14:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 569C686274
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 14:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gs0XI3wjiHJh for <devel@linuxdriverproject.org>;
 Sat,  4 Apr 2020 14:15:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3F198626C
 for <devel@driverdev.osuosl.org>; Sat,  4 Apr 2020 14:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586009702;
 bh=lbbBWv1jwPbMkYTCVBcrHbtiC2lvaDdvG3tFhSrWSyQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CgtrrvdWs3Mq9ZeXwaIb+wNGuu4dFG8pIXd1w2tOWcNvagN0J/hwES+OINqlbuVHA
 ibT+h+6kTu6jDPxqIjicwAtxPodL8lAtfRS/EVuV2RYNwkR7oZUfEugHKd8goxXWYF
 pUwf0RyYKPhdCJxRBFpW/GTK7Iwq+2JS6+Ul+jNY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1M4Jqb-1jL0gm3qHh-000HBY; Sat, 04 Apr 2020 16:15:02 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] staging: vt6656: Remove unnecessary local variable
 initialization
Date: Sat,  4 Apr 2020 16:14:00 +0200
Message-Id: <20200404141400.3772-4-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200404141400.3772-1-oscar.carter@gmx.com>
References: <20200404141400.3772-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:nAfqjazem6z6y/TYc4YVW8HXnrU+5qkGZv6K0hwpbX56hkTo0gk
 rvX56M1E7K2nl2TqTVP43YAKDJIz9q00BxYhJSqwX3wXbhpL7AVpRNYo+H3Tbt4PGqmmKLm
 n9MHrB8go4cxKCHd/YD4liiUEf0sS/RYkHR73KW1WbVUytjy+Bds172D6f9LsGBe8DNfL+6
 vSP7vRZnk36c0I807aOjw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:V9S1WR/bcOA=:nrF5eOGjFx6DaaLTOR5Jex
 +WtFRJNf9RKBJxorTX2Kmw6bvRO00cuCRfe7gvFj5TB5Ci4cQhDG9SdvozNufiw8rvdohCoKY
 C+B+TzNlVRcurL6/sBCPg/UV2IiagnJXm2edPACgBw3t2a+REE1PAjVjNFJD/KmzPQxknS6IZ
 EkDPkFaOy9Og9+fqocpidtuhldAf9+KueZr7X1OBjU7R3bclgsCBd9DgKgTV6H1HEyOyuHpRk
 ckfkpAJkPA77fElx0dfTE/STnDDDXaiuXtT7GT2Hhl4aJaIXdgZBjwhNVtHCRZCycIfgNd2BF
 Vi1DXxPI+em/9EyYuMS8FoQDZm/TLswz0CJQXxtEB9IhW+HG7EjDbznywoXeWAWbrlvrBdgS6
 3JR5jqdWb0SEZb+v+7WM+3SIkx/5NJMZojPfCvsnSokWfPWNWjQqFP9Om0X3M8YCQHi50TuU8
 kD4nJTeO4DOG/YJqhiO6p8kKkI8kQDQaYiNxEyZwBuqSg9OAuKfY94oZpX7oWpAreiW7AVhMO
 sGfz1wMnadxkqsExm2PUy3lp6Rm6+Ei3Fx8hM+cXIev9wMH421sO8D5XntFz/SUU/SSpjhfQj
 dZvDWtuZf8JUKXsBZXVbB+WCIguXjemslkFA7qH7G4FIiC3wzdPImsMzTTlVsT6gzjrmLp9RE
 DPbSRXYHzF/kJrFaKYfffz79c8+F+3Tg9/O4m14ooltoe4xDf+ygPprJ78m0c4Zb0w/m12ByR
 kd4KGAc4hOUKTXdAdnpg96qE1rMxNapgNq3L8kfj/mHUlsozx5u/1FULOWVuaI/155cvuGTDP
 HwxElkaRJONE5bQr5uMXjGc8ezLwMv3h5UPP9v4d7jkWU+I/nD44cnAHknrp+GLagiN8heO1B
 /LV/8xAq+MK+4ioSiOPgzbzcA50X817Ru0g9rCoQh2GLbfwAcPlhCgEOHu/jmKlhDIoTrDCJo
 3l2nZtRkrVdQM9ijhp3nuAidzdmSRZuewwkqIrYqpHAIx3gnM40upueOFPgPELz3lgW/YdYKP
 4ZjK+ClHG7PZ8Nf0yneMdClQzNueVYjZoi+rbDPnK0TVbSj1V4deL7fPTZVlkJXQM3X8av+D9
 UTLJ2+lxkhTbAmodql4RmEFIb2yEVRYPvf+xVupbn7GawADs1kxrNK5TIAD3PFHvKXNGm08j7
 0WCsZDyPZ+3xcEu7++k3yMu5zQkUl2f78eleragrGKs1KVwEA24HRBSMc1PQnx3fNOPL//CIx
 Gt1aUYR35Py1VpTnz
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Don't initialize the rate variable as it is set a few lines later.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index a785f91c1566..04393ea6287d 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -135,7 +135,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 {
 	unsigned int frame_time;
 	unsigned int preamble;
-	unsigned int rate = 0;
+	unsigned int rate;

 	if (tx_rate >= ARRAY_SIZE(vnt_frame_time))
 		return 0;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
