Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E478468023
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 18:21:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 67B302049C;
	Sun, 14 Jul 2019 16:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSuHWvb2Ime9; Sun, 14 Jul 2019 16:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 970E320467;
	Sun, 14 Jul 2019 16:21:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36C9C1BF40B
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 16:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 336EC87774
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 16:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rbbXEFFmafWO for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 16:21:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E684A86F12
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 16:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1563121232;
 bh=ojBi/XpmMFn0sdEoIQUyl/H2bxFYbME+lLlXjuicgsM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=siPkxUnbDriftMrNvioMMsRB4ID2nA4EKMUJFmfRopavP4QauyqMrQBG2qVlykn54
 lw9BjtdS9yGfqcVAKJQC7/fN2zObxzIlXZUuXQRJNFBS1QtKNSNZBNZl3l0yDiH44r
 scjQIUxVH/ELX+p3rqPq87p7EzRmruT2fnmbw28o=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.159.144]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Lrs70-1iT9KA32fG-013am7; Sun, 14
 Jul 2019 18:20:32 +0200
Subject: Re: [v4] staging: most: remove redundant print statement when
 kfifo_alloc fails
To: Keyur Patel <iamkeyur96@gmail.com>, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
References: <20190714150546.31836-1-iamkeyur96@gmail.com>
 <06fc2495-dda5-61d2-17e8-0c385e02da1e@web.de>
 <20190714154737.GB32464@keyur-pc>
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <ffe057b9-390c-c3c0-a7d2-f0187585377c@web.de>
Date: Sun, 14 Jul 2019 18:20:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190714154737.GB32464@keyur-pc>
Content-Language: en-US
X-Provags-ID: V03:K1:ZluLrUm5hhFTbII/ptf7OCIj3yen1WeI3BPnFX+ZtvdVCsjCX/N
 0tWCv2P1aqKJEAftwLqvi8NrGkIvHcMuG74kTsNO5cAaQGU/h9ahNj075QigYuc4uCg2cAk
 dIZeqH/76M+crw4/b4+/X7sVK+v6N2AIgGE5UkyajPaZTqtThnac8d2XjTZraEFAO4r3Pzg
 Ze+F4dvFpnrKjHq05fUWw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:b3ZtDy0Sndo=:3uesOBXhP7afgZBxBUJE7B
 nHV4kZKT16LIEPMxoZqIS6ZXfCN6ShUO6ZAnmQXUM88Kfv8o3jdGC0j9eYyAePeNmDvQZ6mHx
 8dbT+9jiLAkKiMDW3XYWgD85HcCaPCvKIYfeIBdiv2nj2Lr3m7nVh9ek48udrKCTX1qOuv3PS
 0r7vFpFiMu9U5Enj9sIfZqzSPRcYrpXn714U0FG7yXA8kOrrNNLTl7L35WX0xt5ifkcQh569t
 uFug8EIB82/kVw7BOIPZpkkvfBc6hzf3vZdFjjjJ3/l4ewn6TyUDuml8IVGNaC7r4/vrNmfOl
 YO8Tiyr0//9nB7Z+BffQhr0KzCd8VaZKv27E8wVT3iB5VkEYzCgKPMAZSWfwP//A45sVUw4Yq
 w3EGPDL7xvP0LAEdvonvzMk7Mwx1wd4PVKJle6oz6grANZM7YxUU0sTZ/Z7jJbajJBmwkk/h9
 I92v9V0iYhzGibC9tqL7nufFejo5l2dotzO+kO678Kc1kqHFwT2U+z3zK4D0+pEhIYeTiFiVd
 RMVE5/sZ28JESW+pm+pIpcngs8Bqh7HfugyS7cR4/Ia3Z++ZzjiFn43jHVKLjNfiCcPUc4NrU
 aTKKxY1m8za8OIlTnA2nPX8vDUn8H+RwhdYM0qd7T/+LMfJM6+FKE7BrwqN1pD7Ekfg4/rbJh
 QJKPOtTkXwXuGpBAqYiSym811H5s/Nc8EJG2OvS+WxmCRUYOcxl5GdnzO4ePTZE9FE3yjtR6s
 g+e0nBDJws/yWD0qnrIxVAIt0tW2SoyliFj2KbUuRPiAwTmE3r+aBEQTRbMW5pvhhDqWue7H1
 69Gq/SZfzzmzhBB0xS7cf28V92RRNLkWh7RNapiOWSUwtUe87P5soiT82g/u41dXLdMQBjr4b
 MldS9iHWdE74ybAsqgYdz0CRLwkKKIc0oIPAYM6CihUmRIgR2zQ3xOZfHf6X6q5PgwHhVyGTv
 6APCZLbAQzD7X11qdwdpTDXKd91vqf7EL3kaC2g+1sxRDrAP+6wKMGXzvsWRop/pXpF1QpxjO
 wEoc10elWbbRjJ3wqwYby8jUXVad3poIWB+wecKICBTke4sOwIGYFp/omuzanR2vgbSS6D/Ya
 Wvz+t1tJ7tYm4mWhHSf1pHClek3Zqtm33EW
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PiBJIGRpZG4ndCBnZXQgeW91LiBJIHN0aWlsIG5lZWQgdG8gdXBkYXRlIGNoYW5nZWxvZwoKSSB3
b3VsZCBhcHByZWNpYXRlIHRoZSBjb21wbGV0aW9uIG9mIHRoZSBsaXN0aW5nIGZvciBWMiB0aWxs
IFY0LgpJIGd1ZXNzIHRoYXQgYSBtZXNzYWdlIHJlc2VuZCBjb3VsZCBiZSBzdWZmaWNpZW50IGZv
ciB0aGVzZSBhZGp1c3RtZW50cy4KCgo+IGFuZCBzZW5kIG1vcmUgdmVyc2lvbgoKVGhpcyBjb3Vs
ZCBiZSBhbm90aGVyIG9wcG9ydHVuaXR5IGlmIHlvdSB3b3VsZCBsaWtlIHRvIGltcHJvdmUKdGhl
IGNvbW1pdCBkZXNjcmlwdGlvbiBjb25zaWRlcmFibHkuCkhvdyBkbyB5b3UgdGhpbmsgYWJvdXQg
cHJldmlvdXMgY2xhcmlmaWNhdGlvbiBhdHRlbXB0cyBvbiBhIHRvcGljIGxpa2UK4oCcRGVsZXRl
IGFuIGVycm9yIG1lc3NhZ2UgZm9yIGEgZmFpbGVkIG1lbW9yeSBhbGxvY2F0aW9u4oCdPwoKUmVn
YXJkcywKTWFya3VzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
