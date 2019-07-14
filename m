Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C257F6806B
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 19:13:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2B5A85582;
	Sun, 14 Jul 2019 17:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tMMY7g7JabL; Sun, 14 Jul 2019 17:13:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C132854C9;
	Sun, 14 Jul 2019 17:13:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59FB01BF20F
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 56B9286DCA
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:13:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HOU4ZWzc6cv for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:13:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DAB385FFD
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 17:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1563124348;
 bh=ZwUVGTes67xwWLPiXZKdeb3x5yXkNmefiwWX7+ZjxNk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=rJtWMpu/vF2XCvYCrMDEN3/AWyZ5Og76b4Op4sJhUfAXI7m8XG0jQLxZBpZavyiIl
 3lisLN0vi3nV/mpGPgpkCscijXsuGhi4JITuXyZsmto6lHuGstg4MCCQtRuQWslxcg
 sIat+Dg9EMxPwj8RVbW19R38vdhCbCcegoAeLNqA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.159.144]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LcPSk-1iDlOM1GA2-00jte3; Sun, 14
 Jul 2019 19:12:28 +0200
Subject: Re: [v4] staging: most: Delete an error message for a failed memory
 allocation
To: Keyur Patel <iamkeyur96@gmail.com>, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
References: <20190711175055.25157-1-iamkeyur96@gmail.com>
 <20190714164126.3159-1-iamkeyur96@gmail.com>
 <dd7867db-1089-7366-165f-6accba233c38@web.de>
 <20190714170424.GA3615@keyur-pc>
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <425b30ac-623c-065e-1a2f-fc131dee28d1@web.de>
Date: Sun, 14 Jul 2019 19:12:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190714170424.GA3615@keyur-pc>
Content-Language: en-GB
X-Provags-ID: V03:K1:vLG0Znm3ELZXwizjRjiBtRsjf0xOwJiwg0fohJ84Uxzt8Nx2Kju
 Eii8mfqUOzaXHTgNoRH9gm4TqEgDtiyndhOJ4CKsyT9cXISAFnrssoVhg5qBco9gfZXhHDm
 pWerzPHJgaSPUKtCbtl0mCxRyjx5T/cfB29bEuGksx78kSQNIG6GTZSL2zA6Cb4kofylmf3
 ap4yuN8Se8CqVtWMQ25sQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:6xZQFS62B/g=:QwYyOQcZfSeknepdLyC2WN
 xRK5c55ZEHEr0RfMZkb/hWTjUlmPrdgtTDTdh8j37phAOLv5fkHLugCrVl9DOoA/YGOuTf35F
 eqQyYzAHKkWQsm2JrQZeWx6qPHkzmXPCDE4W1dnkwOqV+uw5BoN8fDci1VFeK65OdYQj826sD
 UiNXD+ToE1vxzelF+ADvGLyb+fq/QaLu1UbBV+pGZuGW17NJLwJ2YxtIowXvWVpeHFGQ9dX1J
 v56XzdRFGLDHqGoPz+kxrcBtYg6gwjcBXjLXJVhXAJ0TGo5ARSrD6eqQc0N9TOrvCSVIHK1qy
 8Vw277CGlrfzoXvzmogKSplbJMWdn8XQH05GBfWcYIhsZWSMh0A+ZfvgYiXK37XejKhxOwiLg
 oPvUW1H+QkzK+0BDdZ0A0ZNIkwCAJLcz3k9ffC93EZUc/Isag7Dz3NcYDWincNfleqW8/YdGT
 3m03YMBynbkvZSYDJRyyIpmRgCSeVNGvL4dstjbLHN/kG97qQiV19iKhY+4qQL/yd0qt0ZNCt
 KGF0NxjgXbRUUY3XrEwjd7+G1s+imuqsfOlfxaoDh1HoUpXJJT3IDf64vpRSiyoC1H7tiUPQr
 zFfclnuQI3VmsS1gM0CKWsVk7TAddwwb1PLUAVLXpumzbOTSBKKUM21kri48NGVRzLmshEWdj
 XzMC5wBbWVFtMCfssBl/oggGi9ROz4CkYtsPZI/TeBNh8ao46dcmPznUeNwR4iTyfOVHFEPFL
 obObw59tJiTPMOYVMChWEauQ/1om5UlBrAbSsLRRmzcXgs6D/hxtC/pKzM65sCEPgQU8Js/AH
 O9vPE025xsgnFSODxM6LwYpg3jdBJUQTTObCllX4xb9hGQB/bjjRHnaVRT3wuo2WIU1bPVGqA
 CatFYUV0/uq2EXfkgOe+jW99NKw8uQWwuLOcpJmPMv4v15F3oUFpnCB6jko3zTZPMXEAZEVjk
 nz3tjHyeMhWJrb3bBkLUkgp4cjFNe3YJrEKOsM5MKyUc21nltcmDZvWze6++TpCHdoOQMk2fN
 5eIP1WN1L/OyTddrFbF7ekcT3pCgo8Lpyuhh86hJ05nJIkYq1mDnnuQGaTdK8NxNc2O1ddkb9
 wQBJ+b6W922Jcb/7h1orO/atRgnHCdzz7Fi
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
 linux-kernel@vger.kernel.org, Suresh Udipi <sudipi@jp.adit-jv.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Colin Ian King <colin.king@canonical.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PiBJIHRoaW5rIGNvbW1pdCBtZXNzYWdlIGlzIGNsZWFyIGVub3VnaCB0byB1bmRlcnN0YW5kIHdo
eSB0aGlzIGlzIG5lZWRlZC4KClRoZXJlIGFyZSBkaWZmZXJlbmNlcyB0byBjb25zaWRlciBiZXR3
ZWVuIHRoZSBpbnZvbHZlZCBzb2Z0d2FyZSBkZXZlbG9wZXJzLgoKCj4gWW91IGNhbiBzZW5kIG1l
IHdoYXQgc2hvdWxkIEkgaW5jbHVkZSBpbiBjb21taXQgZGVzY3JpcHRpb24KClRoZSBjbGFyaWZp
Y2F0aW9uIHNob3VsZCBiZSBjb250aW51ZWQgd2l0aCB0aGUgbnVtYmVyIOKAnHY14oCdCmluIHRo
ZSBtZXNzYWdlIHN1YmplY3QuCgoKPiBhbmQgSSB3aWxsIGFkZCBhbmQgc2VuZCBpdCBhZ2Fpbi4g
T3RoZXJ3aXNlLCBHcmVnIGNhbiBjb21tZW50IG9uIHRoaXMuCgpXb3VsZCB5b3UgbGlrZSB0byBy
ZWNoZWNrIGluZm9ybWF0aW9uIHNvdXJjZXMgZm9yIHRoZSBzYWZlIGRlc2NyaXB0aW9uCm9mIHRo
ZSBMaW51eCBhbGxvY2F0aW9uIGZhaWx1cmUgcmVwb3J0PwoKUmVnYXJkcywKTWFya3VzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
