Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 934534E81AC
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Mar 2022 15:49:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1027560B43;
	Sat, 26 Mar 2022 14:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZBJWShKmVQyL; Sat, 26 Mar 2022 14:49:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF49560B2F;
	Sat, 26 Mar 2022 14:49:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 075081BF346
 for <devel@linuxdriverproject.org>; Sat, 26 Mar 2022 14:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E944E825B1
 for <devel@linuxdriverproject.org>; Sat, 26 Mar 2022 14:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=brlp.in
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B2RBQWhxaSwM for <devel@linuxdriverproject.org>;
 Sat, 26 Mar 2022 14:49:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from nmail.brlp.in (unknown [20.197.57.176])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02EBB82456
 for <devel@driverdev.osuosl.org>; Sat, 26 Mar 2022 14:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by nmail.brlp.in (Postfix) with ESMTP id 9A3502BF69A3;
 Mon, 21 Mar 2022 15:29:14 +0000 (UTC)
Received: from nmail.brlp.in ([127.0.0.1])
 by localhost (nmail.brlp.in [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id WgdnUQUysvt8; Mon, 21 Mar 2022 15:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by nmail.brlp.in (Postfix) with ESMTP id 18B2C2D1B9A5;
 Mon, 21 Mar 2022 14:37:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 nmail.brlp.in 18B2C2D1B9A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brlp.in;
 s=DE65A7C8-960D-11EC-9C1B-CA9A6899B418; t=1647873422;
 bh=x/Ge5kdCdot4XAcIyhA5v3h2vrVz0DuDNqvnegS4bI4=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=m+nYWLuMaYPjyG/vi5Ps3LKl5A+dviHdnycZZspMNS3zUGJ2xz2P4VaWc22tsXBi/
 9kHVu99IY3QgVt2cxUaFJ6xaq0G79cY1gSGfkeQcCIwfSCXT0XNH1QeeHRFfGSWFtC
 aSDTXyVp/p8OLYujHPt5wTwIQSVjGGats0N9obfSIo1tJWBjJ3+EkSZ2hF6OhWF5Q6
 CuqR09bFvNUH8kabNRZ/OgeEXlTejah1jg18DDtiD7L7DVGd1RrDvyZUIIdztZjxAI
 lyhCCoDd9i5Jd5c/Ze4Ow9Ikuy2UbMlyk91sEEWVIIRkcSzsw8s7xhz/JMM5QOPl90
 l9PdKU/UxM87g==
X-Virus-Scanned: amavisd-new at brlp.in
Received: from nmail.brlp.in ([127.0.0.1])
 by localhost (nmail.brlp.in [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id v2W0OZl7K3o7; Mon, 21 Mar 2022 14:37:01 +0000 (UTC)
Received: from cris-PC.www.huaweimobilewifi.com (unknown [10.2.2.6])
 by nmail.brlp.in (Postfix) with ESMTPSA id 6A3472D24BEA;
 Mon, 21 Mar 2022 12:02:04 +0000 (UTC)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: spende von 2,000,000 euro
To: Recipients <bpm_asarganj@brlp.in>
From: ''Gloria Mackenzie'' <bpm_asarganj@brlp.in>
Date: Mon, 21 Mar 2022 20:01:54 +0800
Message-Id: <20220321120205.6A3472D24BEA@nmail.brlp.in>
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
Reply-To: Gloriamackenziespende@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGllYmVyIEZyZXVuZCwKCkljaCBiaW4gR2xvcmlhIG1hY2tlbnppZSwgRkxPUklEQSwgVmVyZWlu
aWd0ZSBTdGFhdGVuIHZvbiBBbWVyaWthLCBkZXIgTWVnYS1HZXdpbm5lciB2b24gJDU5MG1pbGxp
b24gSW4gTWVnYSBNaWxsaW9ucyBKYWNrcG90LCBzcGVuZGUgaWNoIGFuIDUgenVmw6RsbGlnZSBQ
ZXJzb25lbiwgd2VubiBTaWUgZGllc2UgRS1NYWlsIGVyaGFsdGVuLCBkYW5uIHd1cmRlIElocmUg
RS1NYWlsIG5hY2ggZWluZW0gU3BpbmJhbGwgYXVzZ2V3w6RobHQuSWNoIGhhYmUgZGVuIGdyw7bD
n3RlbiBUZWlsIG1laW5lcyBWZXJtw7ZnZW5zIGF1ZiBlaW5lIFJlaWhlIHZvbiBXb2hsdMOkdGln
a2VpdHNvcmdhbmlzYXRpb25lbiB1bmQgT3JnYW5pc2F0aW9uZW4gdmVydGVpbHQuSWNoIGhhYmUg
bWljaCBmcmVpd2lsbGlnIGRhenUgZW50c2NoaWVkZW4sIGRpZSBTdW1tZSB2b24g4oKsIDIuMDAw
LjAwMCwwMCBhbiBTaWUgYWxzIGVpbmUgZGVyIGF1c2dld8OkaGx0ZW4gNSB6dSBzcGVuZGVuLCB1
bSBtZWluZSBHZXdpbm5lIHp1IMO8YmVycHLDvGZlbiwgc2VoZW4gU2llIGJpdHRlIG1laW5lIFlv
dSBUdWJlIFNlaXRlIHVudGVuLgoKVUhSIE1JQ0ggSElFUjogaHR0cHM6Ly93d3cueW91dHViZS5j
b20vd2F0Y2g/dj1XODE4X2VHNFY5cwoKCkRhcyBpc3QgZGVpbiBTcGVuZGVuY29kZTogW0dNMzk1
ODIwXQoKCgpBbnR3b3J0ZW4gU2llIG1pdCBkZW0gU1BFTkRFLUNPREUgYW4gZGllc2UKCkdsb3Jp
YW1hY2tlbnppZXNwZW5kZUBnbWFpbC5jb20KCgpJY2ggaG9mZmUsIFNpZSB1bmQgSWhyZSBGYW1p
bGllIGdsw7xja2xpY2ggenUgbWFjaGVuLgoKR3LDvMOfZQpHbG9yaWEgTWFja2VuemllCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
