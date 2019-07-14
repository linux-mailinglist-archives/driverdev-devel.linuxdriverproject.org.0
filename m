Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021FB67F68
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 16:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C258873B6;
	Sun, 14 Jul 2019 14:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UUrWCUT-T2y7; Sun, 14 Jul 2019 14:43:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8327586F85;
	Sun, 14 Jul 2019 14:43:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 23BCD1BF319
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 14:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2052386F85
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 14:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rs+XbYpWGRH for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 14:43:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D9BB38587D
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 14:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1563115336;
 bh=QlWBoDSI8w5rtSGM2FONMF9eDoomMwZOKM0CWt7f9Qs=;
 h=X-UI-Sender-Class:To:Cc:References:Subject:From:Date:In-Reply-To;
 b=r0z7sEYyYdbxwwk81BJrfa/s+1tIzSHkt5mRPLBGsHJXONHdlMd+T+Jy+JyA5QXdr
 0f/znLHpsSaiad9gV2ngh5mLE0YkJ5n1b/ZZSqZLV6f9NqIxVvnVDFcDFLTfJFV+/0
 J+vWoEEVXnaaeO5X6gHDwqSHdP9kLll5xJQuXkls=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.159.144]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MgfFr-1i8zNv1GCt-00Nwyg; Sun, 14
 Jul 2019 16:42:16 +0200
To: Keyur Patel <iamkeyur96@gmail.com>, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
References: <20190711175055.25157-1-iamkeyur96@gmail.com>
Subject: Re: [v3] staging: most: remove redundant print statement when
 kfifo_alloc fails
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <27df9bec-dbd5-8267-8df2-4948ca14e6d4@web.de>
Date: Sun, 14 Jul 2019 16:42:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190711175055.25157-1-iamkeyur96@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:CILvNAgH4j/r/l0QeYLmySGJW4sotrIMHgtT/QGXKCwPtVGyNgC
 muc6v29BhaDY3CHud/zwI9Z2nfF8Wjgnap0gwlIL5AVU+Xq3ctJtXaVSIBicpvz2qPXh7q4
 QghdYOMuy8pEHg9/rK9sL2XPGWaa83MEybvEV2S1Q02fAtC1S4kQA0BJYagSPZZne/z650Z
 ztxpHCZqqQegUx3GN+tgg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:2BFl/3eKXy4=:SMmoK8HZlreXscIRauN/Pi
 TVzsrtOnLBzXUAVSopc3EZXGlALNbouN+hzzLn06AjxGhwXRfs3lZXZKSBo7uHbN/mmYnUAfb
 flVsnPvpxqAyPr7Y9E/dU6MdwQsz5G7HStt/Ox7kuvwz2qPw1scWKQ3X3DOJrghFjhTrtO43u
 /iHitrBZyBAX6FCxW9fzqoOLWrs73Ll2EGUyCIDccITD2BK0Bgs4d2BQoYTX2TgLGFBiaznQx
 dim962G9rsoMr/A5mpGTMcbz4y2VZ4gkdN6VhpPkz56b7n7+EhhlDXmuYkf6w6LezkK5hiFNc
 QPhRqY2kBkkPc6oKQj+GGbme2lUixl5mPRmvHevQ1SPV+XNDXyHh4foBMgzw2/pYy2W/KIaTL
 XeK4GP9+zgxAwmlDSNfF20DoH52SBJs8Paehx/hpEXtn7azJguqoX7yCNRbBI1oMmS069SNni
 rKp7aMfh9uV4io2L+KAU1Jzm1FRM75JEuFNjLod1SESLipKGISD62ZTPHz4PvpYxJauhMO19T
 CjzQrCa3237c5i2oImMvPEZ5UcXOAIiuQzifg0OdY0IGvEATjIgo6cjgpESeuYvUKX0+sPvkz
 Yt+ZZv82eqiJpur8XIUnqfA7GKomiZRTyeQiJafDhfnsq1O0kL6n3s2s3H4FYGllp2vZIWID0
 e6/gDc+ulBoycIqnNaXbckQWI4uJjoP/CEsOX09WaSF9jxGx5FTT0Xbfs/u/5sV9YiL8sVi6f
 qH6W/79Guh/DYYIZe2OKqKj0a8Stou+5V0GeMwXMZ/bg04v+Y7R4nFuY85p8tGOWNfBcfnsru
 PW2IGNHwihu/vTTg9xnvYLC1NVpFmOcQ0UIMb+r3HFJ5B0Qikj1MfMPC24657rtcxAFocUVuB
 JNxVUBfv6EBkXIE6EezEpzqCCy7t9G47L3/yRjQe+/oSIlYP281E7A/jVFJ2/MHbhpHlBebBD
 XlcgjAKlVaaAdN1XjL2w8+tXwPHpkmB3IcmR9LOeufAQuKGhpXNoHK3eD8ta6dRCHhmnaFaiu
 AgQCq06a+0ePV+NWe7js56Jk2Aab73rEvSLUJz0GHl4/2RXKrESrijJbqfYGhu1Kq+/7OvXVl
 ENwFQ5EXd046qv5nRuqUnocj1wXSouL0ll4
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

PiBUaGlzIHByaW50IHN0YXRlbWVudCBpcyByZWR1bmRhbnQgYXMga2ZpZm9fYWxsb2MganVzdCBj
YWxscyBrbWFsbG9jX2FycmF5Cj4gYW5kIHdpdGhvdXQgdGhlIF9fR0ZQX05PV0FSTiBmbGFnLCBh
bHJlYWR5IGRvZXMgYSBkdW1wX3N0YWNrKCkuCgpJIHN1Z2dlc3QgdG8gb21pdCB0aGUgd29yZCDi
gJxhbmTigJ0gZnJvbSB0aGlzIHNlbnRlbmNlLgpXaWxsIGFueSBmdXJ0aGVyIHdvcmRpbmcgYWRq
dXN0bWVudHMgYmVjb21lIGhlbHBmdWwgZm9yIGNvbW1pdCBkZXNjcmlwdGlvbnM/CgoKPiBDaGFu
Z2VzIGluIHYzOgo+IC0gZml4IGNoZWNrcGF0Y2ggd2Fycm5pbmcKPiAtLS0KClBsZWFzZSBtb3Zl
IHN1Y2ggdmVyc2lvbiBpbmZvcm1hdGlvbiBiZWxvdyB0aGUgdHJpcGxlIGRhc2hlcyB3aXRob3V0
IGEgdHlwby4KClJlZ2FyZHMsCk1hcmt1cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
