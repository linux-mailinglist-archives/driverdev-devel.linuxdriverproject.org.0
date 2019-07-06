Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7B460F8B
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 10:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DCB9878B3;
	Sat,  6 Jul 2019 08:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jK7KHLR5Z7jA; Sat,  6 Jul 2019 08:57:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7AC586DA5;
	Sat,  6 Jul 2019 08:57:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5151D1BF357
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 08:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F5B487702
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 08:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ru+k2zpJf3YO for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 08:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 330C286DA5
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 08:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1562403418;
 bh=mga3jcoqarNpM03f1VZ9ZEB8Apx+m+Akum97wS1Kp74=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=hCo3095G193LGVFu1cJcDkTvKcTlSSnEtJpxD1eUsJBDOE1qZIgnCnM9+QO+LfuKA
 FNU/CvdgL3bdribx1CrKUYAsWXefFxH+UNs7Iiwhk5RKKvIK7xSYhM9Nd6u1MGXgk7
 biR+RLlsKzHIPE3pgmINNfV4lyBnTRoUKKOzKTYI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.148.45]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MfHsM-1i8O5A065C-00Onja; Sat, 06
 Jul 2019 10:56:58 +0200
To: devel@driverdev.osuosl.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ioannis Valasakis <code@wizofe.uk>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] staging: octeon: One function call less in
 cvm_oct_common_set_multicast_list()
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <877404bb-a9e4-ffa5-a621-d87fbca549ef@web.de>
Date: Sat, 6 Jul 2019 10:56:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:3SOAS6OIFImhnFeCq412wwiEs+6NcGPbuGVNRS4Jm2jfPZq2Kq0
 ohsWa0K578Qm16/yGXW2Gh40EGmfDosYUZMsLjn4AQxTKT4AiviO++ddene9jfv/98Ug4Q2
 QeHAO18L/1qSsTenV9Zqoao/DO8Ekf0NkuxPc7mz/VZ/6J5dSEPnacE/QqEKbsC2+MSvGf8
 eq34JgIBTT038wGEfG73w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:OPlnqBzK9f4=:rOcU37DcUhjiB1pgh72XCQ
 gw+iKVem0qpNNgCgxc+2JzxyydefFW4XC0gVjSipyoArnI9OkTAcs5OPhZ6MGPwS2MnGZYsrK
 QFKZ0cfWeI1cdPU1ru1Alx+SWndCTXjZgwLOvT5z807OHlXViJ9W4ZSfhNjJ/WHwIgeAFJlb3
 ukW8USSCoeeLiMRIhO/XcVXFDTvsGWvf/JL7MBAsW4ZLWyUopFXQC31sCn3K3u+gb+f8lATdP
 jqowoaTn0CvZP+OvjszdH4mh45lNta2LDkzsM1tCwHCBTydwIiSuttHrxbrW+3gJVq/1EFryt
 5u/CBz7/s6Xd+9lfRTAZ3nzeqXP0bL9OzQM6hz8GuwYW6g02utv14GbZbQcAPv7M8Z08PhpOz
 CBV6swQXSvk2syWPg1Ip8pqgeFW/+hxNQCiw1zyqdEw4WozcXOhxsSrp8WbiLQHKGedUrqlYf
 Dv0NdM2JF+NpaXmErsYyGTvDBuW8iVSH25XvnzoWufZcUrrher+dim3bJ1PlMG/3Ip6LxyT/y
 tibUWzzGYuuUGu8Fe5E6EyH9HLtuvlJCNM8LgomX2IY80dSh6Hyqvlpum5BvOg8vJSXYtYohM
 JEhJ3PseVzBMfiT7dQMNZHBY6kx0TAEWFCjgWxZwzQV0hbvcWpuIBnn551TbSt+zg4EhnAf2g
 D5nLH6zfB76Q6YQK0xGO6nFfMvu+Xgyy64ts5+NQENs2SGU7aBHmBc/V8xO6xejLzM6DzWbho
 UKqe16sn3ysQgYEl0HCcgusN+8Yi4ZDuzNacYECUk/O4DV6kXq87nlvU1eChG80oGpSSBJ40A
 cpqxB3EO2vqmQguLmPEnvexbXy/qMb9gfMwKzMtMV7OOir/7vvTUIzrZlpkrxVGm+VBKJZUQG
 /gMmjb94n/7HSQ7yoAyBLPjJEDjZs1GWSlX6Nl9BrCcc2+fN/L8Y7Ch6cLFerShor/0MxW01s
 wcaLow9FUMG0gaHtZCXbNEg01Dwn2S0F7XaVmEj8p3rOVPjrSVjcWo2y0fudv10uQNxa5f4uh
 rPc/cfXP0Ky9ZCWyyrqnSqA86ERZb6sHUFm3jRltWDWwkPCoDcjYFgMfFm5jpJfl4wfbuYGaN
 fyNt3wKdWk1NviwEpPciDvwHBHY9kLlSh7f
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sat, 6 Jul 2019 10:48:23 +0200

Avoid an extra function call by using a ternary operator instead of
a conditional statement.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/staging/octeon/ethernet.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 8847a11c212f..93f127a0b287 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -337,13 +337,8 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)

 		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CTL(index, interface),
 			       control.u64);
-		if (dev->flags & IFF_PROMISC)
-			cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN
-				       (index, interface), 0);
-		else
-			cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN
-				       (index, interface), 1);
-
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN(index, interface),
+			       dev->flags & IFF_PROMISC ? 0 : 1);
 		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
 			       gmx_cfg.u64);
 	}
--
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
