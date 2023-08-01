Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C0376B884
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Aug 2023 17:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71A0C80E57;
	Tue,  1 Aug 2023 15:22:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71A0C80E57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id POR_c0bujg0f; Tue,  1 Aug 2023 15:22:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41816813FD;
	Tue,  1 Aug 2023 15:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41816813FD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AC191BF4E4
 for <devel@linuxdriverproject.org>; Tue,  1 Aug 2023 15:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED61E60736
 for <devel@linuxdriverproject.org>; Tue,  1 Aug 2023 15:22:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED61E60736
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDY0u4GXwHyK for <devel@linuxdriverproject.org>;
 Tue,  1 Aug 2023 15:22:15 +0000 (UTC)
Received: from newsmg.ebi.com.tr (webmail.sctlab.io [31.25.168.78])
 by smtp3.osuosl.org (Postfix) with ESMTP id 20D7860AC0
 for <devel@driverdev.osuosl.org>; Tue,  1 Aug 2023 15:22:14 +0000 (UTC)
X-AuditID: ac1f0a62-415ff70000001f25-6d-64c916cabea7
Received: from [10.1.18.47] (185.253.162.3) by EGUVENEX.EGUVEN.LOCAL
 (192.168.127.11) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Tue, 1 Aug
 2023 04:13:36 +0300
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Betreff
To: Recipients <testuser@EGUVEN.LOCAL>
From: Mavis@osuosl.org, Wancyzk@osuosl.org
Message-ID: <902449092acb4b1492e67e2218163336@EGUVENEX.EGUVEN.LOCAL>
Date: Tue, 1 Aug 2023 04:13:36 +0300
X-Originating-IP: [185.253.162.3]
X-ClientProxiedBy: EGUVENEX.EGUVEN.LOCAL (192.168.127.11) To
 EGUVENEX.EGUVEN.LOCAL (192.168.127.11)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsVyYEU9t+5psZMpBvPbeCxu/HOzuPWHxaL/
 9hJmiwVrFjJbrGk9zW6xZvMFNotrqy4yWtw8eYbN4nBDhsWXTd9ZLRp3PWOx2P9oOpvFxl3/
 mCwe7w+z2HPmF7tF0/89jBanFzSwW7xYe4/dYvKr2ewWu5Z1MjmIeKw7P4PFY90HXo8Z5w6x
 e9zbd5jF49enGUweO2fdZff48DHO48L+ZyweW19dYPfY03OHyePWrk8sHpOXbmHyWLirncnj
 /CVtj0V/VzB5rDzayBwgGMVlk5Kak1mWWqRvl8CV0Xr6IVPBRZaKVbuWMzcwvmXuYuTkkBAw
 kbh2ZTqQzcUhJLCKUaKh6SUjSIJZQE/ixtQpbCA2r4CgxMmZT1gg4toSyxa+BmrgALLVJL52
 lYCEhQUEJN7cfgw2UwQovH1/CxOIzSYgLDHj8l4miDEuEgc+TGMBaRUSUJJ4sjoIJMwioCKx
 vGEDO8Q5ihIbVm1kBCmREEiVeLLSegIj3ywk98xCcs8sJPfMQrhnASPLKkaB3MTMHEO91KRM
 veT8XL2Sok2MwPhcI8+VtIPx8paPeocYmTgYDzFKcDArifBK/z6eIsSbklhZlVqUH19UmpNa
 fIhRmoNFSZzXQHNfvJBAemJJanZqakFqEUyWiYNTqoHpuPTSA5ElWa7dHXKBGsd4dq7K69ja
 GKsq7n0neRoPq8PtRZtnrdV2XD/vg7bSpLaSC6/3XMoX6RS6tuBjqsTh6SeXhm8sbOcuPF3h
 YLfdrmuWFlebxv/s3fdTjN5I1C7mzVW8Hn9adelzcy5//S3sAVdm7Tzb/G+Zs4Awo7OJp4/6
 t2PftF0eGKibbAuRejHZ6pMuzwb9jrQMmwn78vV/5Z/LTXb89Dxl8ueK119viWabfFKuelai
 pOrLYsCddfjyRsbnXGcLq9j5OeMZiuPOCppkGLT3rc72YztjMeGcko6xrOXyS3F6ct855/OV
 mB9perPx/CP9NjnXFRrLNQ12b+RtKA5lE276kOEVocRSnJFoqMVcVJwIAPweScA+AwAA
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osuosl.org; s=default; t=1690903336;
 bh=xNQSf6W53UR8rVdijg2LV61WzBfD8zc4PTKHOk5gFXQ=;
 h=Subject:To:From:Date:From;
 b=f36QHz7Vv2zWyUZb18FGV+vNnvjMIg/I6Rw5ALm+qxD5SBWFpg3KpMyyktI4X9Whj
 5J1KUZzWlaTo3sRdc1UIK+fiHiN46Sv7nlJ2ekrRH+50KQzc2ZyvPutP4Y67/EWG7L
 d7/BzcLNxGSxU+y7tDDVOsV3z/n2XLNqlxLG7Yh/leJNOQIuieN3IkqBibpg4cfPsQ
 CDHyiAWJSixK2VGVLoWcgVggIJjoUoCi6AWhSZ8sqOw/M6w7ZNM/N51UGceujdKymJ
 ohLJdBph3m7Q0y6BVH4lLs566SolMVQ5eTeLmbaJ5pg7ePafDBReSvaa2hEIYymh5H
 aN6xg1GnNiQ/w==
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

" <testuser@EGUVEN.LOCAL>
Date: Tue, 01 Aug 2023 02:13:31 +0100
Reply-To: wanczykmavis01@yahoo.com

Hallo, ich bin Frau Mavis Wancyzk, Sie haben eine Spende in H=F6he von 4.80=
0.000,00 EUR. Ich habe am 25. August 2017 den Powerball-Jackpot in Amerika =
im Wert von 759 Millionen US-Dollar gewonnen und spende einen Teil davon zu=
m Gedenken an f=FCnf gl=FCckliche Menschen und drei Unternehmen und Wohlt=
=E4tigkeitsheime mein Mann, der an Krebs gestorben ist. Kontaktieren Sie mi=
ch f=FCr weitere Details unter: =


E-Mail f=FCr weitere Informationen: wanczykmavis01@yahoo.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
