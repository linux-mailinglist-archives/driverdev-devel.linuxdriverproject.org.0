Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B1C66F67
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 15:01:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81F4588328;
	Fri, 12 Jul 2019 13:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v6laCp5QkhRr; Fri, 12 Jul 2019 13:01:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67358882F0;
	Fri, 12 Jul 2019 13:01:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A03D1BF324
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 13:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FB978768D
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 13:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n9VCSXIfq1cO for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 13:01:03 +0000 (UTC)
X-Greylist: delayed 00:06:50 by SQLgrey-1.7.6
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE62D8766D
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 13:01:02 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190712125410euoutp011527a7a62bcb06d2e45589edde302f4b~wqg6LAUFs2621726217euoutp01A
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 12:54:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190712125410euoutp011527a7a62bcb06d2e45589edde302f4b~wqg6LAUFs2621726217euoutp01A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562936050;
 bh=SvNBqsasmMJ35pKfe52wEDcdzqVXxeLAO+14YQc5HjA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=OriKHNe8UYzZneVkTvcpZv+t3OzcXzcmVNnPOI2m7DRKxa2BI4rJQ9sl38PxEHdJ/
 z9ZUHDm9Gl97K7j7IhjMBIn7vpm1JglfjPxOXhi8yL0erVZpWX4HsYsLGXjDGHwgEe
 +UvcA/OMfMSmTdvpJZdW+IbbInAkdpVzA415FVRU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190712125409eucas1p1366c6c3b34756b2e52d0491dc1246412~wqg50NMA31697116971eucas1p1H;
 Fri, 12 Jul 2019 12:54:09 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D0.42.04325.1F2882D5; Fri, 12
 Jul 2019 13:54:09 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190712125408eucas1p166fd03846592d11ffbea036072607dc4~wqg4_69BW2455424554eucas1p1g;
 Fri, 12 Jul 2019 12:54:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190712125408eusmtrp2e23ca1e107a35086ef09c865cf042369~wqg4wiEm00521605216eusmtrp29;
 Fri, 12 Jul 2019 12:54:08 +0000 (GMT)
X-AuditID: cbfec7f5-fbbf09c0000010e5-ef-5d2882f10e25
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 00.7C.04146.0F2882D5; Fri, 12
 Jul 2019 13:54:08 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190712125407eusmtip1755535a5147b6e9225a0e62a4bb7f407~wqg36aWav0388503885eusmtip1e;
 Fri, 12 Jul 2019 12:54:07 +0000 (GMT)
Subject: Re: [PATCH 00/12] treewide: Fix GENMASK misuses
To: Joe Perches <joe@perches.com>, Andrew Morton
 <akpm@linux-foundation.org>, Patrick Venture <venture@google.com>, Nancy
 Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, Andrew
 Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-wireless@vger.kernel.org,
 linux-media@vger.kernel.org
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <469b0d3d-9466-b287-5ca3-27f3d01ff3cd@samsung.com>
Date: Fri, 12 Jul 2019 14:54:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <cover.1562734889.git.joe@perches.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHfXfOzo7a6rjUPVhkza5CmhT1RiEmYQciqC/WEqmVB4vcis1Z
 5gfFe9oNDbVNdIWlmalpq1zOahPtouYtsTJX6gepLEJHqaXtdIz89nv+z+3/vLw0Icui/Ojj
 mnhOq1HFKSgP8n7LZMf676lrozcUji7FxTVVFO7tsomwpYfGRdYPBG5sm5LgXuc3ChsdwyQ2
 GT1x3XCfGKfd7iBwSfNXEvdYiil8vtYsxj1pXQg3z15COKdvRIy/VAxIcIvJF79IHyWx9cld
 EmdO3aTCfNjXWRYJWzueSrGDTXaSNdXp2WdF0yTryG0VsfVlyeyromuInajsI9inTSHseN2y
 vZ4HPbbHcHHHEzhtcOhhj2OPhx3EqdzVZ26V7EpBNv8cRNPAbILyehd60DKmAkHHzCwlBBMI
 hiyPiBzk7grGEVhfB/LMN5g/j0qEonIE6VNFcx1jCB7+zBLxVYsZDGb7R5JPeDM1JAzk5BN8
 QDAFCDqHL/6dSzHr4Hf9G4pnKRMKF57lSXgmmVVgGbGLefZhImHSdG6uxgueXx0heePuzEZo
 cy7nZYLxhzSzkRBYDm9HSkX8LmCaaejLqEKC752Qm/eOFHgxfGq9JxF4Kcw2lIoETgZHRToh
 NGcjMNc2EEJiG9hbu8T8YsJlusYSLMg74O1Tq0h4yIXQP+YleFgIefcLCUGWQnamTKheAY52
 89xAOdzodFKXkcIw7zDDvGsM864x/N9rQmQlknN6nTqW023UcKeDdCq1Tq+JDTp6Ul2HXN/z
 5Uyr8yFq+nXEhhgaKRZI+7euiZaJVQm6RLUNAU0ovKWVsy5JGqNKPMtpTx7S6uM4nQ0toUmF
 XJrk9iFKxsSq4rkTHHeK0/7Limh3vxR0YOX76qmhPb4VsjBlZ1R7bUto150DARJnRPd1ercn
 HPFKqQ7Ux1jRWGjs4KFuL3l/5nSEttnXe8wncrBEtD8lo1eZOGmPLMtvLG9veBBo2qL8QU/8
 XHvFLSY+nKXCjWL1vtJGzUDA5uBFSv8CY9VN/e6LjfiHmyEyVSlJT8pUkLpjqpBAQqtT/QH2
 QnULmgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFKsWRmVeSWpSXmKPExsVy+t/xu7ofmjRiDa4uVrCYs34Nm8WVi4eY
 LHZd5rCYsfcBs8WeM7/YLa58fc9mMfv+YxaLBbO5LTY9vsZq0bz6HLPFvCPvWCwu75rDZtGz
 YSurxeXmi4wWR/73M1p0XXvCavFmxR12i2MLxCxOtbxgsdh7YCOLRduvZWwOoh5X23exe2z4
 3MTmcW/fYRaPBZtKPU7M+M3icb/7OJPH5iX1HudnLGT0+LLqGrPHwX2GHp83yQVwR+nZFOWX
 lqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehl7H98n7mgW61i
 5Tz3BsZD8l2MnBwSAiYSW1+/YO9i5OIQEljKKHHweTcTREJcYvf8t8wQtrDEn2tdbCC2kMBr
 RonZ90xBbGEBC4mthx+ygDSLCKxnkXi3s4cZxGEWmMYoMeX1OSaIsW2MEt1H1rGCtLAJaEr8
 3XwTbBSvgJ1E74lJ7CA2i4CqxK4nh4FqODhEBcIkjp7IgygRlDg58wkLSJhTwFjizFcFkDCz
 gLrEn3mXmCFseYnmrbOhbHGJW0/mM01gFJqFpHsWkpZZSFpmIWlZwMiyilEktbQ4Nz232FCv
 ODG3uDQvXS85P3cTIzBdbDv2c/MOxksbgw8xCnAwKvHw3rBUjxViTSwrrsw9xCjBwawkwrvq
 P1CINyWxsiq1KD++qDQntfgQoynQaxOZpUST84GpLK8k3tDU0NzC0tDc2NzYzEJJnLdD4GCM
 kEB6YklqdmpqQWoRTB8TB6dUA6Ob0u0C22WmNaeeTtq1bteBOQGX5jl2LlJ9vsfuNc+PpSWN
 DG9370iKnTd/97uCkh0rvP7O4U9ht+s2WZ+WFuPVZfJF40+opO0DE5WA5ByBypJfyw7O/mB/
 e6H2IoaZnRYOy3z+v6//2zEl6wjXBZ16dcfumb6NL5PemQo5Bz97Kly2PsT++BMlluKMREMt
 5qLiRAAlheMYLQMAAA==
X-CMS-MailID: 20190712125408eucas1p166fd03846592d11ffbea036072607dc4
X-Msg-Generator: CA
X-RootMTR: 20190710050444epcas1p250f7aa0f8798a7757df51d66f5970c2a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190710050444epcas1p250f7aa0f8798a7757df51d66f5970c2a
References: <CGME20190710050444epcas1p250f7aa0f8798a7757df51d66f5970c2a@epcas1p2.samsung.com>
 <cover.1562734889.git.joe@perches.com>
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 alsa-devel@alsa-project.org, linux-mmc@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgSm9lLAoKT24gMTAuMDcuMjAxOSAwNzowNCwgSm9lIFBlcmNoZXMgd3JvdGU6Cj4gVGhlc2Ug
R0VOTUFTSyB1c2VzIGFyZSBpbnZlcnRlZCBhcmd1bWVudCBvcmRlciBhbmQgdGhlCj4gYWN0dWFs
IG1hc2tzIHByb2R1Y2VkIGFyZSBpbmNvcnJlY3QuICBGaXggdGhlbS4KPgo+IEFkZCBjaGVja3Bh
dGNoIHRlc3RzIHRvIGhlbHAgYXZvaWQgbW9yZSBtaXN1c2VzIHRvby4KPgo+IEpvZSBQZXJjaGVz
ICgxMik6Cj4gICBjaGVja3BhdGNoOiBBZGQgR0VOTUFTSyB0ZXN0cwo+ICAgY2xvY2tzb3VyY2Uv
ZHJpdmVycy9ucGNtOiBGaXggbWlzdXNlIG9mIEdFTk1BU0sgbWFjcm8KPiAgIGRybTogYXNwZWVk
X2dmeDogRml4IG1pc3VzZSBvZiBHRU5NQVNLIG1hY3JvCj4gICBpaW86IGFkYzogbWF4OTYxMTog
Rml4IG1pc3VzZSBvZiBHRU5NQVNLIG1hY3JvCj4gICBpcnFjaGlwL2dpYy12My1pdHM6IEZpeCBt
aXN1c2Ugb2YgR0VOTUFTSyBtYWNybwo+ICAgbW1jOiBtZXNvbi1teC1zZGlvOiBGaXggbWlzdXNl
IG9mIEdFTk1BU0sgbWFjcm8KPiAgIG5ldDogZXRoZXJuZXQ6IG1lZGlhdGVrOiBGaXggbWlzdXNl
cyBvZiBHRU5NQVNLIG1hY3JvCj4gICBuZXQ6IHN0bW1hYzogRml4IG1pc3VzZXMgb2YgR0VOTUFT
SyBtYWNybwo+ICAgcnR3ODg6IEZpeCBtaXN1c2Ugb2YgR0VOTUFTSyBtYWNybwo+ICAgcGh5OiBh
bWxvZ2ljOiBHMTJBOiBGaXggbWlzdXNlIG9mIEdFTk1BU0sgbWFjcm8KPiAgIHN0YWdpbmc6IG1l
ZGlhOiBjZWRydXM6IEZpeCBtaXN1c2Ugb2YgR0VOTUFTSyBtYWNybwo+ICAgQVNvQzogd2NkOTMz
NTogRml4IG1pc3VzZSBvZiBHRU5NQVNLIG1hY3JvCj4KPiAgZHJpdmVycy9jbG9ja3NvdXJjZS90
aW1lci1ucGNtN3h4LmMgICAgICAgICAgICAgICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9h
c3BlZWQvYXNwZWVkX2dmeC5oICAgICAgICAgICAgICAgfCAgMiArLQo+ICBkcml2ZXJzL2lpby9h
ZGMvbWF4OTYxMS5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgZHJpdmVycy9p
cnFjaGlwL2lycS1naWMtdjMtaXRzLmMgICAgICAgICAgICAgICAgICB8ICAyICstCj4gIGRyaXZl
cnMvbW1jL2hvc3QvbWVzb24tbXgtc2Rpby5jICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oICAgICAgIHwgIDIgKy0K
PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX3NnbWlpLmMgICAgICAgICB8ICAy
ICstCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2Rlc2NzLmggICAgICAg
fCAgMiArLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1zdW44
aS5jIHwgIDQgKystLQo+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9yZWFsdGVrL3J0dzg4L3J0dzg4
MjJiLmMgICAgIHwgIDIgKy0KPiAgZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tZzEyYS11
c2IyLmMgICAgICAgICB8ICAyICstCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRy
dXMvY2VkcnVzX3JlZ3MuaCAgfCAgMiArLQo+ICBzY3JpcHRzL2NoZWNrcGF0Y2gucGwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMTUgKysrKysrKysrKysrKysrCj4gIHNvdW5kL3NvYy9j
b2RlY3Mvd2NkLWNsc2gtdjIuYyAgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAxNCBmaWxl
cyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPgpBZnRlciBhZGRp
bmcgZm9sbG93aW5nIGNvbXBpbGUgdGltZSBjaGVjazoKCi0tLS0tLQoKZGlmZiAtLWdpdCBhL01h
a2VmaWxlIGIvTWFrZWZpbGUKaW5kZXggNTEwMmIyYmJkMjI0Li5hYzRlYTVmNDQzYTkgMTAwNjQ0
Ci0tLSBhL01ha2VmaWxlCisrKyBiL01ha2VmaWxlCkBAIC00NTcsNyArNDU3LDcgQEAgS0JVSUxE
X0FGTEFHU8KgwqAgOj0gLURfX0FTU0VNQkxZX18gLWZuby1QSUUKwqBLQlVJTERfQ0ZMQUdTwqDC
oCA6PSAtV2FsbCAtV3VuZGVmIC1XZXJyb3I9c3RyaWN0LXByb3RvdHlwZXMgLVduby10cmlncmFw
aHMgXArCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLWZuby1zdHJpY3QtYWxp
YXNpbmcgLWZuby1jb21tb24gLWZzaG9ydC13Y2hhciAtZm5vLVBJRSBcCsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0
aW9uCi1XZXJyb3I9aW1wbGljaXQtaW50IFwKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLVduby1mb3JtYXQtc2VjdXJpdHkgXAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtV25vLWZvcm1hdC1zZWN1cml0eSAtV2Vycm9yPWRpdi1ieS16ZXJvIFwKwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC1zdGQ9Z251ODkKwqBLQlVJTERfQ1BQRkxB
R1MgOj0gLURfX0tFUk5FTF9fCsKgS0JVSUxEX0FGTEFHU19LRVJORUwgOj0KZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvYml0cy5oIGIvaW5jbHVkZS9saW51eC9iaXRzLmgKaW5kZXggNjY5ZDY5
NDQxYTYyLi42MWQ3NGIxMDMwNTUgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvYml0cy5oCisr
KyBiL2luY2x1ZGUvbGludXgvYml0cy5oCkBAIC0xOSwxMSArMTksMTEgQEAKwqAgKiBHRU5NQVNL
X1VMTCgzOSwgMjEpIGdpdmVzIHVzIHRoZSA2NGJpdCB2ZWN0b3IgMHgwMDAwMDBmZmZmZTAwMDAw
LgrCoCAqLwrCoCNkZWZpbmUgR0VOTUFTSyhoLCBsKSBcCi3CoMKgwqDCoMKgwqAgKCgoflVMKDAp
KSAtIChVTCgxKSA8PCAobCkpICsgMSkgJiBcCivCoMKgwqDCoMKgwqAgKCgoflVMKDApKSAtIChV
TCgxKSA8PCAobCkpICsgMSArIDAvKChoKSA+PSAobCkpKSAmIFwKwqDCoMKgwqDCoMKgwqDCoCAo
flVMKDApID4+IChCSVRTX1BFUl9MT05HIC0gMSAtIChoKSkpKQrCoArCoCNkZWZpbmUgR0VOTUFT
S19VTEwoaCwgbCkgXAotwqDCoMKgwqDCoMKgICgoKH5VTEwoMCkpIC0gKFVMTCgxKSA8PCAobCkp
ICsgMSkgJiBcCivCoMKgwqDCoMKgwqAgKCgoflVMTCgwKSkgLSAoVUxMKDEpIDw8IChsKSkgKyAx
ICsgMC8oKGgpID49IChsKSkpICYgXArCoMKgwqDCoMKgwqDCoMKgICh+VUxMKDApID4+IChCSVRT
X1BFUl9MT05HX0xPTkcgLSAxIC0gKGgpKSkpCsKgCsKgI2VuZGlmIC8qIF9fTElOVVhfQklUU19I
ICovCgotLS0tLS0tCgpJIHdhcyBhYmxlIHRvIGRldGVjdCBvbmUgbW9yZSBHRU5NQVNLIG1pc3Vl
IChBQVJDSDY0LCBhbGx5ZXNjb25maWcpOgoKwqAgQ0PCoMKgwqDCoMKgIGRyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWhkbWkubwpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi4v
aW5jbHVkZS9saW51eC9iaXRvcHMuaDo1OjAsCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGZyb20gLi4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxMiwKwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgZnJvbSAuLi9pbmNsdWRlL2xpbnV4L2Nsay5oOjEzLArCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4uL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC1pbm5vLWhkbWkuYzo5OgouLi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtaW5uby1oZG1pLmM6IEluIGZ1bmN0aW9uCuKAmGlubm9faGRtaV9waHlfcmszMzI4X3Bvd2Vy
X29u4oCZOgouLi9pbmNsdWRlL2xpbnV4L2JpdHMuaDoyMjozNzogZXJyb3I6IGRpdmlzaW9uIGJ5
IHplcm8gWy1XZXJyb3I9ZGl2LWJ5LXplcm9dCsKgICgoKH5VTCgwKSkgLSAoVUwoMSkgPDwgKGwp
KSArIDEgKyAwLygoaCkgPj0gKGwpKSkgJiBcCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeCi4uL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWhkbWkuYzoyNDo0Mjogbm90ZTogaW4KZXhw
YW5zaW9uIG9mIG1hY3JvIOKAmEdFTk1BU0vigJkKwqAjZGVmaW5lIFVQREFURSh4LCBoLCBsKcKg
ICgoKHgpIDw8IChsKSkgJiBHRU5NQVNLKChoKSwgKGwpKSkKwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBefn5+fn5+Ci4uL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWhk
bWkuYzoyMDE6NTA6IG5vdGU6IGluCmV4cGFuc2lvbiBvZiBtYWNybyDigJhVUERBVEXigJkKwqAj
ZGVmaW5lIFJLMzMyOF9URVJNX1JFU0lTVE9SX0NBTElCX1NQRUVEXzdfMCh4KcKgIFVQREFURSh4
LCA3LCA5KQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBefn5+fn4K
Li4vZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8taGRtaS5jOjEwNDY6MjY6
IG5vdGU6IGluCmV4cGFuc2lvbiBvZiBtYWNybyDigJhSSzMzMjhfVEVSTV9SRVNJU1RPUl9DQUxJ
Ql9TUEVFRF83XzDigJkKwqDCoCBpbm5vX3dyaXRlKGlubm8sIDB4YzYsIFJLMzMyOF9URVJNX1JF
U0lTVE9SX0NBTElCX1NQRUVEXzdfMCh2KSk7CgoKT2YgY291cnNlIEkgZG8gbm90IGFkdmlzZSB0
byBhZGQgdGhlIGNoZWNrIGFzIGlzIHRvIEtlcm5lbCAtIGl0IGlzCnVuZGVmaW5lZCBiZWhhdmlv
ciBhcmVhIEFGQUlLLgoKClJlZ2FyZHMKCkFuZHJ6ZWoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
