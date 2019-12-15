Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2961011F846
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 16:07:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97BB487D57;
	Sun, 15 Dec 2019 15:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S4H70bRGTl7K; Sun, 15 Dec 2019 15:07:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C252487CDD;
	Sun, 15 Dec 2019 15:07:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 346F31BF94B
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 15:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 30E2787CDD
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 15:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYJbTLviadAA for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 15:07:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E635587CB5
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 15:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576422432;
 bh=GnIzcTEvdq/ok4EhyO4z+DWoEPJ/qPc8ZlaySopFQUc=;
 h=X-UI-Sender-Class:To:Cc:References:Subject:From:Date:In-Reply-To;
 b=SkK/RVcL4vEW4C2FTaRN46W71yPI+/y+UEMGRqjPrfeaLNBLSitTycqQKlzkXd+Pc
 5XJ+fWcvaK7NdHMChDKJdxb5yznEX/3monTaWibBvaWZ57YlzX69eEMFxJTZTxc5on
 22WNNOwuWuoogv2jfMWHEIzv+mwe6YMGaLmydxyc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([2.243.76.50]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LmLOE-1i6tow2nqs-00ZtMa; Sun, 15
 Dec 2019 16:07:12 +0100
To: Navid Emamdoost <navid.emamdoost@gmail.com>, devel@driverdev.osuosl.org
References: <20191215013306.18880-1-navid.emamdoost@gmail.com>
Subject: Re: [PATCH] staging: comedi: drivers: Fix memory leak in
 gsc_hpdi_auto_attach
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <69f03714-c10e-8ff9-ae64-7b35b6a5fae9@web.de>
Date: Sun, 15 Dec 2019 16:07:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191215013306.18880-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:lhBIYc6fG3ILpnG8gx6fjslwn8J8Y+O0t9sgEcIVRjwTRmgOf6D
 hzxs3sa+2sZixeDokmfChOLYHEibTcxI7M+iba+fzXf8J2rThDNg/OPwdq44u6OSkBaHUd1
 9EAfdc8R7a6vPG9/sM+NlBjyJNRfB5SIkO27gCfqDkCp8Nqcu7/IcPgP42zj3XvPNMWVIWU
 KBUPSXTAWbm1GP7qKRLhw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:H/a0YwD1GW0=:OWoMtpeCPj3aM8Bu1+Aa4Z
 7JeRx+jbiwFwhXwrecVDMqHyNjwIfQmrrXYHj1RnQugJ0v3xJli2WrqYJOLrW5oxUGCKmING3
 EO/We3uUZ1tAWSgYpyTnVvmjQ9QOoKouJx7oWERjgTyP0lTiCcSaKzN0/mkSEICU9A6cJ6pwg
 ihLasnP+0ZaH1YMPV9O3XbAWBkgoi9MB9Dtb4LTNtb3buMi6KPOCq2S82iB/dlQxixnmDHny0
 QycE56qmx5NlLJQOkClcpb/xuL9BMeqlJED5tT5Fnl6PWpDa3tEpGd4qBXq+rQnbUxYbycMZm
 KMNbiYU8vaqgqUD/pHqR/cAuT/tBd8bQmbjfDjfdFNmGIAXNLSBV5NyR2I3G/quNx7IKU1RV4
 5gEAo2zywyhqvSJmSbHv39bcTo4lzrrYhzWNXIyB1HS20PLjQVJUH66YoqffVShW+lu6hD04j
 NcaWf6RLdvtn0SI83mQ7Q4Bo/HHRp05KkDoGPLEsYNSgOBYz6JPf5TB5NgAJeOWYKw7stiVwY
 Mdne0ozvlYQCcpPscvxG7HyP+E9wr1g7BMXFK85W7upDzW65LZJzEYucBcRAu2xklcfSHQtk4
 OcyfTeZ8HJKVzZgLdbbME2p9vcWtpDRyKdUbwihR46dAI2EJnNhAdcuwIP2/adSP0gOTMOAfy
 Zra49sDd/VOAnVKAhNRVwOJn4yjVxugQOi4J1CDkEPRkwqKcizd+UmFtk2aShjvXWc5yZK3rw
 TPLsCRkPOR2gnyaTqC7h+WA5zZCTR07zTBeAPvwY48iFaG0L2ZKHyv23wG83Hkz4+KliJOriX
 mZe669sImev8qNpbNjHOYuUjsr7Tdi1B8hsc2P7ev371kzX2+2/YnfTQo6tst/2hix1j6o1qX
 73naRgqQIi7bmpmr6XHBjGhsweHDfPQ6pDt6Qxb6KWiAvk9OrC5UShpCbSYm1mZY06NvXn1WH
 OHHXNkumF+E20JTDD3WvtzwHsE8TUcFNn40KxBlx5fXeqVOAnb9ITXH3YLA7kJZBriHdka/CQ
 5cbtm+3HOQmNEwYz0ULx6UTyXg3A9kFEsCA7nonPXFloyLQUHkUc/nvKmGEgXYs8sPrPzXqWy
 ndshgwN4H0vtKGqe5KIfLQX6siT/PGUMI12X5JqqvXfH82aWZGOLgfaCqIuYvr/ktk/6Fa+VY
 gKFbksUiDL9T5727yOUHJD9NMyBb7Zmv0jXAwFNyk16nYEmw2uHrI2J64rVOANLH39NJaBtqB
 g2Mb97iYWILEq7lK9N2SdO9qxIn1JgrJD51QmAgDS37K4yYZOGQ4dF20I9Og=
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>, Navid Emamdoost <emamd001@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PiBJbiB0aGUgaW1wbGVtZW50YXRpb24gb2YgZ3NjX2hwZGlfYXV0b19hdHRhY2goKSwgdGhlIGFs
bG9jYXRlZCBkbWEKPiBkZXNjcmlwdGlvbiBpcyBsZWFrcyBpbiBjYXNlIG9mIGFsaWdubWVudCBl
cnJvciwg4oCmCgpQbGVhc2UgYXZvaWQgYSB0eXBvIGluIHRoaXMgY2hhbmdlIG1lc3NhZ2UuCgoK
4oCmCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVycy9nc2NfaHBkaS5jCuKApgo+
IEBAIC02NjAsNiArNjYxLDE1IEBAIHN0YXRpYyBpbnQgZ3NjX2hwZGlfYXV0b19hdHRhY2goc3Ry
dWN0IGNvbWVkaV9kZXZpY2UgKmRldiwKPiAgCXMtPmNhbmNlbAk9IGdzY19ocGRpX2NhbmNlbDsK
Pgo+ICAJcmV0dXJuIGdzY19ocGRpX2luaXQoZGV2KTsKPiArCj4gK3JlbGVhc2VfZG1hX2Rlc2M6
Cj4gKwlpZiAoZGV2cHJpdi0+ZG1hX2Rlc2MpCj4gKwkJZG1hX2ZyZWVfY29oZXJlbnQoJnBjaWRl
di0+ZGV2LAo+ICsJCQkJICBzaXplb2Yoc3RydWN0IHBseF9kbWFfZGVzYykgKgo+ICsJCQkJTlVN
X0RNQV9ERVNDUklQVE9SUywKPiArCQkJCWRldnByaXYtPmRtYV9kZXNjLAo+ICsJCQkJZGV2cHJp
di0+ZG1hX2Rlc2NfcGh5c19hZGRyKTsKPiArCXJldHVybiByZXR2YWw7Cj4gIH0KPgo+ICBzdGF0
aWMgdm9pZCBnc2NfaHBkaV9kZXRhY2goc3RydWN0IGNvbWVkaV9kZXZpY2UgKmRldikKCkkgZ290
IHRoZSBpbXByZXNzaW9uIHRoYXQgcmV0dXJuIHZhbHVlcyBmcm9tIGNhbGxzIG9mIHRoZSBmdW5j
dGlvbiDigJxkbWFfYWxsb2NfY29oZXJlbnTigJ0Kc2hvdWxkIGJlIGNoZWNrZWQgYmVmb3JlLgoq
IFdvdWxkIHlvdSBsaWtlIHRvIGFkZCBudWxsIHBvaW50ZXIgY2hlY2tzIGF0IG90aGVyIHNvdXJj
ZSBjb2RlIHBsYWNlcz8KKiBTaG91bGQgdGhlIGp1bXAgdGFyZ2V0cyBiZSBhY2NvcmRpbmdseSBh
ZGp1c3RlZCB0aGVuIGZvciB0aGUgY29tcGxldGlvbgogIG9mIHRoZSBkZXNpcmVkIGV4Y2VwdGlv
biBoYW5kbGluZz8KClJlZ2FyZHMsCk1hcmt1cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
