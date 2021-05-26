Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BEF391699
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 May 2021 13:50:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F6E640147;
	Wed, 26 May 2021 11:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0lmlLJr7ou7Z; Wed, 26 May 2021 11:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 227EF4041C;
	Wed, 26 May 2021 11:50:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A892C1BF3A4
 for <devel@linuxdriverproject.org>; Wed, 26 May 2021 11:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A413E6077C
 for <devel@linuxdriverproject.org>; Wed, 26 May 2021 11:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=xs4all.nl
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F2qCH0TNrjZW for <devel@linuxdriverproject.org>;
 Wed, 26 May 2021 11:50:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29A0F605D8
 for <devel@driverdev.osuosl.org>; Wed, 26 May 2021 11:50:33 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id ls3NlTCMIWkKbls3QlCyOr; Wed, 26 May 2021 13:50:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1622029831; bh=juoWGaHNbHl2FSEv5DpMVwvxfrfot9RIxDernjro99Q=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=QI+Xrzj5oY9xKsmpHOcXiSL5+paJvYOMfwwMIHojXjd9A7VL2kQPrArJPMGIGeVBC
 uG15vQxAX4vUpzdemzZzMiyeve2c+aGMxyu5OAdzvc33kZbeh8nTAgXGo61M8CXcmj
 i0BoOVM7bsd3MzZuzOhXm16JjIYYyKk3StdUkUyLPl/hYMkg2T0ISso2jeeuWh0bFa
 D8SVY+coWOkSnZY9j/+65j1kOAsGqYypNMEHb4rVX/40/9D1JvxN0sOCf1Nf0o4yg7
 MQoj+ovot2KFE2WObO5Lxs4Lr4pXl1j/k1R+2i4NnKQXci6XuiBubgYHYUA/PHZ+jl
 R0mHZEGnf20Hw==
Subject: Re: [PATCH v5 02/16] phy: Distinguish between Rx and Tx for MIPI
 D-PHY with submodes
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
References: <20210115200141.1397785-1-paul.kocialkowski@bootlin.com>
 <20210115200141.1397785-3-paul.kocialkowski@bootlin.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <58d6651d-09c3-2b93-bd5b-1807744b2354@xs4all.nl>
Date: Wed, 26 May 2021 13:50:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210115200141.1397785-3-paul.kocialkowski@bootlin.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfIKtpY4V226WObacR6uCv2pLF5qZOhTXPLEGIKajbtpMsfp6Mp3aOkSAlIifh58GcpjquWBHJ+YyUJCGEEiRLd/A23b+YFa7BeyBFm70E/XSbxQKy9Yp
 L4C9bZDOFlw6zumUkkHyoiIslp3/S3Hk+IjDNYo0nCY7eYGlxiU8aAPxdJxCjUV0boKP6LRQM1Bx0JWcnkO8uwuwdX6z3GH1RNFX0qXueKMPMuhKN1anywbn
 79X1JBFxf1kHfugUHSC2TkEyyNHzLvadDPoXRorbKngWjIDUkv8FcMsXj9NSegg+g6aKc9KX2UUNwYkV+3Q6h4/jJ6C/ctgVOwpeoCS9TeiPD/BgqPpOGiN/
 hMgRx6JOIB7HV2Naixzx2M7Pkh1bNoo933+aNVp3a+w5E6/6/F3l2zZnqPxQzZZyhm3Y0ND8AlSplw14Ti70pWKTfsT63GRkBUYzdu1Zx+Ta6szYN1H27i6L
 v67l5voEAxL51GBOCUR3d6Fp5POjRl9cLVb71LrKGdul0a3HlASW6+3cK4sRGrDQ+hVjvYIjGRG3pGbPXnYLgSXF2hnfbo1v6JkqQVIt6fADKtksKx0VExzz
 i/8DYQ3rEGRiaRUxg2kdJEsb88IGXgTktjAefhOWA3Dr205ukywYeKvPF0xk8oYkeSrK/hlL/LEmKonoANl0ncw/GB3+2NvEtEJdEvyqSLaSe9ygkYYuUraU
 XVYCq2+UKNQ4JUFtLI9KfvZBhbUJ2wITtrW94Le5cUDigcrvn9mcQMhyDhrq/aMNPHobzdyfixWs7+OFuMqGuehZcrBzilAgJhUGQAzbCY0UEmhG/sw9IDg/
 R2wqVFKjCcGc9XkEEBCSjVmQX7lVolAWw28ABMTwUL8ZgympFut3ryZLx73OIc6pbrPt/e52ynJNhSsHZzraJeNU6rMW7ZmOG5aiMPrY94x7Okowinrurt8b
 7+McjEg6SwtlU13erf1Y2KvnthS8iGpeuw5paPWZWOXtwjvIgjocPOTnlj9DX+mvSl2ZEbXAyrLq86jc5ww+8ZBSXpAFJvggjbEWuSy2/cE771ktor91OeBY
 GRDnmy5BeSPpvBFZYmmfPq77zGvqRlCgoWfXrtGl5zQpmyashyHw0H+a
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTUvMDEvMjAyMSAyMTowMSwgUGF1bCBLb2NpYWxrb3dza2kgd3JvdGU6Cj4gQXMgc29tZSBE
LVBIWSBjb250cm9sbGVycyBzdXBwb3J0IGJvdGggUnggYW5kIFR4IG1vZGUsIHdlIG5lZWQgYSB3
YXkgZm9yCj4gdXNlcnMgdG8gZXhwbGljaXRseSByZXF1ZXN0IG9uZSBvciB0aGUgb3RoZXIuIEZv
ciBpbnN0YW5jZSwgUnggbW9kZSBjYW4KPiBiZSB1c2VkIGFsb25nIHdpdGggTUlQSSBDU0ktMiB3
aGlsZSBUeCBtb2RlIGNhbiBiZSB1c2VkIHdpdGggTUlQSSBEU0kuCj4gCj4gSW50cm9kdWNlIG5l
dyBNSVBJIEQtUEhZIFBIWSBzdWJtb2RlcyB0byB1c2Ugd2l0aCBQSFlfTU9ERV9NSVBJX0RQSFku
Cj4gVGhlIGRlZmF1bHQgKHplcm8gdmFsdWUpIGlzIGtlcHQgdG8gVHggc28gb25seSB0aGUgcmtp
c3AxIGRyaXZlciwgd2hpY2gKPiB1c2VzIEQtUEhZIGluIFJ4IG1vZGUsIG5lZWRzIHRvIGJlIGFk
YXB0ZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwua29jaWFs
a293c2tpQGJvb3RsaW4uY29tPgo+IEFja2VkLWJ5OiBIZWxlbiBLb2lrZSA8aGVsZW4ua29pa2VA
Y29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
a2lzcDEvcmtpc3AxLWlzcC5jIHwgIDMgKystCj4gIGluY2x1ZGUvbGludXgvcGh5L3BoeS1taXBp
LWRwaHkuaCAgICAgICAgICAgICAgICAgICB8IDEzICsrKysrKysrKysrKysKPiAgMiBmaWxlcyBj
aGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1pc3AuYyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1pc3AuYwo+IGluZGV4
IDJlNWI1N2UzYWVkYy4uY2FiMjYxNjQ0MTAyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1pc3AuYwo+ICsrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1pc3AuYwo+IEBAIC05NDgsNyArOTQ4
LDggQEAgc3RhdGljIGludCBya2lzcDFfbWlwaV9jc2kyX3N0YXJ0KHN0cnVjdCBya2lzcDFfaXNw
ICppc3AsCj4gIAo+ICAJcGh5X21pcGlfZHBoeV9nZXRfZGVmYXVsdF9jb25maWcocGl4ZWxfY2xv
Y2ssIGlzcC0+c2lua19mbXQtPmJ1c193aWR0aCwKPiAgCQkJCQkgc2Vuc29yLT5sYW5lcywgY2Zn
KTsKPiAtCXBoeV9zZXRfbW9kZShzZW5zb3ItPmRwaHksIFBIWV9NT0RFX01JUElfRFBIWSk7Cj4g
KwlwaHlfc2V0X21vZGVfZXh0KGNkZXYtPmRwaHksIFBIWV9NT0RFX01JUElfRFBIWSwKPiArCQkJ
IFBIWV9NSVBJX0RQSFlfU1VCTU9ERV9SWCk7Cgpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JraXNwMS9ya2lzcDEtaXNwLmM6IEluIGZ1bmN0aW9uIOKAmHJraXNwMV9taXBpX2NzaTJf
c3RhcnTigJk6CmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1p
c3AuYzo5NTE6MTk6IGVycm9yOiDigJhjZGV24oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0
aGlzIGZ1bmN0aW9uKQogIDk1MSB8ICBwaHlfc2V0X21vZGVfZXh0KGNkZXYtPmRwaHksIFBIWV9N
T0RFX01JUElfRFBIWSwKICAgICAgfCAgICAgICAgICAgICAgICAgICBefn5+CgpIdWg/CgpSZWdh
cmRzLAoKCUhhbnMKCj4gIAlwaHlfY29uZmlndXJlKHNlbnNvci0+ZHBoeSwgJm9wdHMpOwo+ICAJ
cGh5X3Bvd2VyX29uKHNlbnNvci0+ZHBoeSk7Cj4gIAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L3BoeS9waHktbWlwaS1kcGh5LmggYi9pbmNsdWRlL2xpbnV4L3BoeS9waHktbWlwaS1kcGh5
LmgKPiBpbmRleCBhODc3ZmZlZTg0NWQuLjBmNTdlZjQ2YThiNSAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL2xpbnV4L3BoeS9waHktbWlwaS1kcGh5LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L3BoeS9w
aHktbWlwaS1kcGh5LmgKPiBAQCAtNiw2ICs2LDE5IEBACj4gICNpZm5kZWYgX19QSFlfTUlQSV9E
UEhZX0hfCj4gICNkZWZpbmUgX19QSFlfTUlQSV9EUEhZX0hfCj4gIAo+ICsvKioKPiArICogZW51
bSBwaHlfbWlwaV9kcGh5X3N1Ym1vZGUgLSBNSVBJIEQtUEhZIHN1Yi1tb2RlCj4gKyAqCj4gKyAq
IEEgTUlQSSBELVBIWSBjYW4gYmUgdXNlZCB0byB0cmFuc21pdCBvciByZWNlaXZlIGRhdGEuCj4g
KyAqIFNpbmNlIHNvbWUgY29udHJvbGxlcnMgY2FuIHN1cHBvcnQgYm90aCwgdGhlIGRpcmVjdGlv
biB0byBlbmFibGUgaXMgc3BlY2lmaWVkCj4gKyAqIHdpdGggdGhlIFBIWSBzdWItbW9kZS4gVHJh
bnNtaXQgaXMgYXNzdW1lZCBieSBkZWZhdWx0IHdpdGggcGh5X3NldF9tb2RlLgo+ICsgKi8KPiAr
Cj4gK2VudW0gcGh5X21pcGlfZHBoeV9zdWJtb2RlIHsKPiArCVBIWV9NSVBJX0RQSFlfU1VCTU9E
RV9UWCA9IDAsCj4gKwlQSFlfTUlQSV9EUEhZX1NVQk1PREVfUlgsCj4gK307Cj4gKwo+ICAvKioK
PiAgICogc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkgLSBNSVBJIEQtUEhZIGNv
bmZpZ3VyYXRpb24gc2V0Cj4gICAqCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
