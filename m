Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBBFD446E
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 17:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92CDC88141;
	Fri, 11 Oct 2019 15:33:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YkNIJf-TeY0O; Fri, 11 Oct 2019 15:33:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 939A6880C2;
	Fri, 11 Oct 2019 15:33:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5517E1BF2AB
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 15:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45879880F6
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 15:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EqkLxfK4Q8XJ for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 15:33:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F417880A5
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 15:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570807999;
 bh=aPkC2JXE8SWDXXFgXbGApTTn8Cw3i+g0IEo5MjAFGRc=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=LAhfFOGqeDCphkmIYtHJ3gD6epQVwVB8fKCPKPx001hDS3FpfDq8cQ0AZ1qRlXbPW
 Ey/KYpDZ7ksfGeJfyUkWf7g0Rv5n3byAUQFzmRsbK2Pvso4tx+TsE0Dk5WhdGIrYZM
 xFS9kG+d6f0nqZXN8TP5BaOepmPm2vPjLzZ6zdMc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.164.92]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LlneG-1hjc6B1Yrg-00ZNdL; Fri, 11
 Oct 2019 17:33:19 +0200
To: kernel-janitors@vger.kernel.org, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "J. Bruce Fields" <bfields@redhat.com>, Aditya Pakki <pakki001@umn.edu>,
 Kangjie Lu <kjlu@umn.edu>, Navid Emamdoost <emamd001@umn.edu>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: staging: wlan-ng: Checking a kmemdup() call in
 prism2sta_inf_hostscanresults()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <cd77c9fd-47dd-28ae-33b3-c9b36bea078b@web.de>
Date: Fri, 11 Oct 2019 17:33:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:ORjBE+YOr+R3WaDrS7KDq37vrvatGgt3IT5lAx9RElcdeVGkSRx
 nk9uzyjrY8fpWf29PTw5YFYIWQnNqUzuPthzObCnLb/BpRB1k8Xv1SGEwwYI4IdBja2sh05
 2yF9Mo3rhbLpVXQr5nUCS/t9aW9XvDvxOsCqZOWhiSaSA7bWEJCcf6dhtObbjokjE7csWeM
 HrNF12zliEVGIvf+f/BVQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:jcm8Ul/3x4U=:qzgyYq9YG1nUVfiTKBnp2+
 sHLC8n08Y/ZQPmCqtTLq0fnKbmRPK9CXibTPDuvUvNYm+TNSATwAiVExtQGwVXF1dUhTvLBWb
 SvtUKghJUVwku01r/0d6dJOc3yBd0HVRNFMn1wdTaRtCZ8ej54hMTNFhsw2xQGaPdOLs/jiRW
 zuzclD19GTTwyOdkzgXE6DADulhs+9OzV0qztZ01L1Lc85PSmKJazhOtruVVIFbcvCf5ognGD
 6kOZMrsiKqrtXH4k74wNBU4e1CGeCDVPADNTDQ6ZRsLOTpzWNDKWh0uR9VvYcNSAmpDjGj739
 +A62s70fwXahfYFUAk42qhqvx7ZFse349X0erZGrm6U5935tDkNugB+YWY64wyhJF+zNbm3+v
 LVmDSEVOLmcX1MexT5hC3HQAhVzZM1zFut45vqpsVt4RiPNZLCwUpBwp98GAvxoVg9eo5YPKB
 qcf+p1a0c4mQ1KRiL0pKk6FI/CsndOMstPUGmvXEyO7RCQwv2A9h/N+eu2eEGKAAW+Ac9LS9y
 hjySSUUDu/I4cGgdk8zxnYP36qp0AYn96fYtQJoIGIP2PH903pRED9/mEWCM/JseuUyIkSXCt
 dpQgFO/d5onElz2Vm4AAlUM3RrDvaGAsGLS98747BAm6RJEqhXLemHExNEtJmRWaT4EVwoH4S
 4+538RBs0jLNpg+Nbwzl95aH8q+e+kI/hRTeNl8Zkm4cbgSd+PgJxigrIAKD2LEGDOKZcnUlh
 kt90hJH2l233L8kuXe+HxOEXYn3/+ZF3zb08Cf9wjkv6RPiFMaQ7dleTFeTS5SZjgZeLfNznX
 r+7a+RKB8lLY6I9Jf8kegDT8XoYcI+DbBeUk+N0kOQSMHgy2bDtwH2SqDnWbLQp0k21IrTjKJ
 aIyLkbcEey+oZI3H0IQhPOexPrAqD44E9sQ8Di1SrlY2iX+0i+oXCW4fVljTcobyL09gCzznS
 5ygBkOtD7e5J/28j/duWBoQImHkhs9a5M9XxUKWgjgxnIXEXaRtAHJbX1hHmi7NnOTeaS+83f
 LGy+tnzrikIeAvZJ8WFjgHNoMzZDlyUfsMR5UibJpBI85qrlbtMT3daQkpuQjWJJMATboLfor
 Wy8xWARqpZT8ZoHCHP5mvFXae/EsXGaZE5BiMPCq4AzaUtcf9AvOy9//CbOxuuNPdONXPj1p3
 FXB6afTLhz1FMMmybKzTFfU0hERvgIEHUcjVottkrAZNmUFxgBcd+eGz+s63MnbX0ZxNLds12
 ZpPOXZaXLCLPGz1wMs+wwfTMEgZXt8B18M7uKZIGceDU8mdqBke+OEoUpB58=
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
Cc: LKML <linux-kernel@vger.kernel.org>, Stephen McCamant <smccaman@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sCgpJIGhhdmUgdHJpZWQgYW5vdGhlciBzY3JpcHQgZm9yIHRoZSBzZW1hbnRpYyBwYXRj
aCBsYW5ndWFnZSBvdXQuClRoaXMgc291cmNlIGNvZGUgYW5hbHlzaXMgYXBwcm9hY2ggcG9pbnRz
IG91dCB0aGF0IHRoZSBpbXBsZW1lbnRhdGlvbgpvZiB0aGUgZnVuY3Rpb24g4oCccHJpc20yc3Rh
X2luZl9ob3N0c2NhbnJlc3VsdHPigJ0gY29udGFpbnMgc3RpbGwKYW4gdW5jaGVja2VkIGNhbGwg
b2YgdGhlIGZ1bmN0aW9uIOKAnGttZW1kdXDigJ0uCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvc3Rh
Z2luZy93bGFuLW5nL3ByaXNtMnN0YS5jP2lkPTI2YTdhZTI5NDlhODZlMWI3NGUyNDg1ZDcyNWVm
YjUyOGUyYTgxYmIjbjEwODYKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuNC1y
YzIvc291cmNlL2RyaXZlcnMvc3RhZ2luZy93bGFuLW5nL3ByaXNtMnN0YS5jI0wxMDg2CgpIb3cg
ZG8geW91IHRoaW5rIGFib3V0IHRvIGltcHJvdmUgaXQ/CgpSZWdhcmRzLApNYXJrdXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
