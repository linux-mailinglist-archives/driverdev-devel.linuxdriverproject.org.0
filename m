Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA62953A958
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jun 2022 16:44:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75D7560F99;
	Wed,  1 Jun 2022 14:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9NZ3Ky4QHbaS; Wed,  1 Jun 2022 14:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98D7260B08;
	Wed,  1 Jun 2022 14:44:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44D3B1BF20F
 for <devel@linuxdriverproject.org>; Wed,  1 Jun 2022 14:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 411AE82F77
 for <devel@linuxdriverproject.org>; Wed,  1 Jun 2022 14:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=elcon.hu
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SU6PJJMYzWhQ for <devel@linuxdriverproject.org>;
 Wed,  1 Jun 2022 14:44:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx.elcon.hu (mx.elcon.hu [94.21.1.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB52E82F98
 for <devel@driverdev.osuosl.org>; Wed,  1 Jun 2022 14:44:04 +0000 (UTC)
Received: from mail.elcon.hu ([192.168.2.155]:50692 helo=webmail.elcon.hu)
 by mx.elcon.hu with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.94.2) (envelope-from <kzoltan@elcon.hu>)
 id 1nvn9C-0007Fr-9e; Mon, 30 May 2022 23:41:58 +0200
Received: from localhost (localhost [127.0.0.1])
 by webmail.elcon.hu (Postfix) with ESMTP id DFA8D65E8229A;
 Mon, 30 May 2022 23:41:57 +0200 (CEST)
Received: from webmail.elcon.hu ([127.0.0.1])
 by localhost (webmail.elcon.hu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Hk-ouwWMGiQs; Mon, 30 May 2022 23:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by webmail.elcon.hu (Postfix) with ESMTP id 2AA936408EEAC;
 Mon, 30 May 2022 23:39:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 webmail.elcon.hu 2AA936408EEAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elcon.hu;
 s=02528220-7315-11E8-A9F0-3A51BF6A9B2E; t=1653946769;
 bh=R6rQ0NozwjtOIX2+hZKSFSFGEfR0ePpvDBiEDyEYo1g=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=CTtPJHXGz0XSBvm5+wdczs23NveFfp120WEe0zS0OaPa+ktHAlpZ0SA/NwaPqKPdv
 W3nGZJu5HbtegStbCJ8CVd8w00X9BwigRPyN7qwwYoG9FG51LZGV910N2Rax9M427C
 dj1n3LuDUZNocj8i+5MaXYkXaX9QdCl2ZOvFQJT9xcaoZektNF2mUrLY0pk6xfFsQ2
 bjV250EFuXpLDh5lcyKh9wiegYysILlGA940d5KuCXfMlBvRt3o/BWC5lDV4ZKw0Du
 PHac9oaKpjR9MiA9uQyTrkE7BVLZK2EKPt1OB8PRTB2wPBRbisAOxebASXCT/IMidQ
 A+ccYwD7Hnwcw==
X-Virus-Scanned: amavisd-new at webmail.elcon.hu
Received: from webmail.elcon.hu ([127.0.0.1])
 by localhost (webmail.elcon.hu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id sNMJQqFP9Mnf; Mon, 30 May 2022 23:39:29 +0200 (CEST)
Received: from [10.0.1.227] (unknown [185.252.223.39])
 by webmail.elcon.hu (Postfix) with ESMTPSA id EA22865AC153F;
 Mon, 30 May 2022 23:37:09 +0200 (CEST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?Wohlt=C3=A4tigkeitsspende_von_2=2E000=2E000_Millionen_Euro?=
To: Recipients <kzoltan@elcon.hu>
From: ''Gloria Mackenzie'' <kzoltan@elcon.hu>
Date: Tue, 31 May 2022 05:37:02 +0800
Message-Id: <20220530213709.EA22865AC153F@webmail.elcon.hu>
X-Sophos-OBS: fail
X-SASI-RCODE: none
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
b20vd2F0Y2g/dj1XODE4X2VHNFY5cwoKRGFzIGlzdCBkZWluIFNwZW5kZW5jb2RlOiBbR00zOTU4
MjBdCgoKQW50d29ydGVuIFNpZSBtaXQgZGVtIFNQRU5ERS1DT0RFIGFuIGRpZXNlCgpHbG9yaWFt
YWNrZW56aWVzcGVuZGVAZ21haWwuY29tCgoKSWNoIGhvZmZlLCBTaWUgdW5kIElocmUgRmFtaWxp
ZSBnbMO8Y2tsaWNoIHp1IG1hY2hlbi4KCkdyw7zDn2UKR2xvcmlhIE1hY2tlbnppZQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
