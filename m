Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E21A5B01C
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 16:12:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 493728633E;
	Sun, 30 Jun 2019 14:12:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B6MluGStBlzA; Sun, 30 Jun 2019 14:12:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DEA0E8272B;
	Sun, 30 Jun 2019 14:12:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9D381BF336
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 14:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9548985D5C
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 14:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7of7-UzMqgK for <devel@linuxdriverproject.org>;
 Sun, 30 Jun 2019 14:12:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mailout2n.rrzn.uni-hannover.de (mailout2n.rrzn.uni-hannover.de
 [130.75.2.113])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 26BCB8272B
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 14:12:47 +0000 (UTC)
Received: from [192.168.2.27] (p4FF11F7C.dip0.t-ipconnect.de [79.241.31.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mailout2n.rrzn.uni-hannover.de (Postfix) with ESMTPSA id E33431F435;
 Sun, 30 Jun 2019 16:12:44 +0200 (CEST)
Subject: Re: [PATCH 1/2] staging: rts5208: Rewrite redundant if statement to
 improve code style
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190626142857.30155-1-tobias.niessen@stud.uni-hannover.de>
 <20190626142857.30155-2-tobias.niessen@stud.uni-hannover.de>
 <20190626145636.GG28859@kadam>
From: =?UTF-8?Q?Tobias_Nie=c3=9fen?= <tobias.niessen@stud.uni-hannover.de>
Message-ID: <a0f3ac8b-541a-d3d0-e25e-26da11e29748@stud.uni-hannover.de>
Date: Sun, 30 Jun 2019 16:12:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190626145636.GG28859@kadam>
Content-Language: de-DE
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Sabrina Gaube <sabrina-gaube@web.de>, linux-kernel@vger.kernel.org,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QW0gMjYuMDYuMjAxOSB1bSAxNjo1NiBzY2hyaWViIERhbiBDYXJwZW50ZXI6Cj4gQm90aCB0aGVz
ZSBwYXRjaGVzIHNlZW0gZmluZS4KPiAKPiBPbiBXZWQsIEp1biAyNiwgMjAxOSBhdCAwNDoyODo1
NlBNICswMjAwLCBUb2JpYXMgTmllw59lbiB3cm90ZToKPj4gVGhpcyBjb21taXQgdXNlcyB0aGUg
ZmFjdCB0aGF0Cj4+Cj4+ICAgICBpZiAoYSkgewo+PiAgICAgICAgICAgICBpZiAoYikgewo+PiAg
ICAgICAgICAgICAgICAgICAgIC4uLgo+PiAgICAgICAgICAgICB9Cj4+ICAgICB9Cj4+Cj4+IGNh
biBpbnN0ZWFkIGJlIHdyaXR0ZW4gYXMKPj4KPj4gICAgIGlmIChhICYmIGIpIHsKPj4gICAgICAg
ICAgICAgLi4uCj4+ICAgICB9Cj4+Cj4+IHdpdGhvdXQgYW55IGNoYW5nZSBpbiBiZWhhdmlvciwg
YWxsb3dpbmcgdG8gZGVjcmVhc2UgdGhlIGluZGVudGF0aW9uCj4+IG9mIHRoZSBjb250YWluZWQg
Y29kZSBibG9jayBhbmQgdGh1cyByZWR1Y2luZyB0aGUgYXZlcmFnZSBsaW5lIGxlbmd0aC4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogVG9iaWFzIE5pZcOfZW4gPHRvYmlhcy5uaWVzc2VuQHN0dWQudW5p
LWhhbm5vdmVyLmRlPgo+PiBTaWduZWQtb2ZmLWJ5OiBTYWJyaW5hIEdhdWJlIDxzYWJyaW5hLWdh
dWJlQHdlYi5kZT4KPiAKPiBTaWduZWQtb2ZmLWJ5IGlzIGxpa2Ugc2lnbmluZyBhIGxlZ2FsIGRv
Y3VtZW50IHRoYXQgeW91IGRpZG4ndCBwdXQgYW55Cj4gb2YgU0NPJ3Mgc2VjcmV0IFVOSVhXQVJF
IHNvdXJjZSBjb2RlIGludG8geW91ciBwYXRjaCBvciBkbyBvdGhlciBpbGxlZ2FsCj4gYWN0aXZp
dGllcy4gIEV2ZXJ5b25lIHdobyBoYW5kbGVzIGEgcGF0Y2ggaXMgc3VwcG9zZWQgdG8gU2lnbiBp
dC4KPiAKPiBJdCdzIHdlaXJkIHRvIHNlZSBTYWJyaW5hIHJhbmRvbWx5IHNpZ25pbmcgeW91ciBw
YXRjaGVzLiAgUHJvYmFibHkgdGhlcmUKPiBpcyBhIG1vcmUgYXBwcm9wcmlhdGUga2luZCBvZiB0
YWcgdG8gdXNlIGFzIHdlbGwgb3IgaW5zdGVhZCBzdWNoIGFzCj4gQ28tRGV2ZWxvcGVkLWJ5LCBS
ZXZpZXdlZC1ieSBvciBTdWdnZXN0ZWQtYnkuCj4gCj4gcmVnYXJkcywKPiBkYW4gY2FycGVudGVy
Cj4gCgpUaGFuayB5b3UsIERhbi4gVGhpcyBwYXRjaCBzZXJpZXMgaXMgYSBtYW5kYXRvcnkgcGFy
dCBvZiBhIGNvdXJzZSBTYWJyaW5hIGFuZCBJIGFyZSB0YWtpbmcgYXQgdW5pdmVyc2l0eS4gV2Ug
d2VyZSB0b2xkIHRvIGFkZCBTaWduZWQtb2ZmLWJ5IGZvciBib3RoIG9mIHVzLiBJIGNhbiBhZGQg
Q28tRGV2ZWxvcGVkLWJ5IGlmIHRoYXQgaGVscHM/IE9yIHNob3VsZCBzaGUganVzdCB2ZXJpZnkg
dmlhIGVtYWlsIHRoYXQgc2hlIGRpZCBpbmRlZWQgc2lnbiBvZmY/CgpSZWdhcmRzLApUb2JpYXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
