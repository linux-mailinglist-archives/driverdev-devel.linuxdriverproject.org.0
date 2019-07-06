Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3766A610B6
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 14:42:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77A6C8531D;
	Sat,  6 Jul 2019 12:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WOFopWgPnGvn; Sat,  6 Jul 2019 12:42:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE567852F8;
	Sat,  6 Jul 2019 12:42:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73F041BF2A5
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 12:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 707F187263
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 12:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WeV+nZQm4Rqq for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 12:42:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx.0dd.nl (mx.0dd.nl [5.2.79.48])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5066A87216
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 12:42:30 +0000 (UTC)
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 730A95FD5A;
 Sat,  6 Jul 2019 14:42:28 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="eFLjbDtw"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 2FD8C1CF7767;
 Sat,  6 Jul 2019 14:42:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 2FD8C1CF7767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1562416948;
 bh=k777QJuTPEp+3K5ZBwqis9UlgciPo8TjkTXRBdrC64g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eFLjbDtw3H4iXpvTL3LWzoR2KE+J47skIG+mE86Kt5xhGY4yt6et5IsN04DuUOa1q
 +eoXUqLoKn8E7+zmGbV+M1zX/cWLoldJUNZizenGZS1bGXYekz4n6D6ee6pc03BW+d
 ueXKVAb53r/gATlsMy2X2FiwFUnHctDDEHvjV6G2+E2cGprfxTTP4nO8SNd8RMPg3+
 bJGnEOxt3f8hBE/lkYmwOTHP7cUTAViDUiRs7u3dV+Od3H391sxa2+Xl7Kxpn25Kaf
 zR+Iq+Xa/rA8fDuPEeug4+unKPKkRwiqT/JRddWWb5SUWc6YgcLk2tcSqIzjyGBQ1y
 V5i8EIzej6ZYA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sat, 06 Jul 2019 12:42:28 +0000
Date: Sat, 06 Jul 2019 12:42:28 +0000
Message-ID: <20190706124228.Horde.dSkghkbFTITqOQgJqae5q-C@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: Fix compiler error 'slot' may be
 used uninitialized
References: <20190705203327.8493-1-opensource@vdorst.com>
 <CAMhs-H9+jA1=_=V04ox8Nthdyc2xL4yGpzRr==Hh=P4Pb8ZZyg@mail.gmail.com>
In-Reply-To: <CAMhs-H9+jA1=_=V04ox8Nthdyc2xL4yGpzRr==Hh=P4Pb8ZZyg@mail.gmail.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UXVvdGluZyBTZXJnaW8gUGFyYWN1ZWxsb3MgPHNlcmdpby5wYXJhY3VlbGxvc0BnbWFpbC5jb20+
OgoKSGkgU2VyZ2lvLAoKPiBIaSBSZW7DqSwKPgo+IE9uIEZyaSwgSnVsIDUsIDIwMTkgYXQgMTA6
MzUgUE0gUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+IHdyb3RlOgo+Pgo+
PiBJbiBjb21taXQgODAyYTJmN2IyZmUzICgic3RhZ2luZzogbXQ3NjIxLXBjaTogZmFjdG9yIG91
dAo+PiAnbXQ3NjIxX3BjaWVfZW5hYmxlX3BvcnQnIGZ1bmN0aW9uIiksIHNsb3QgPSBwb3J0LT5z
bG90OyBsaW5lIHdhcyByZW1vdmVkLgo+PiBBbHNvIG90aGVyIGRldl9lcnIoKSBwcmludCBwYXJh
bWV0ZXIgd2FzIGNoYW5nZWQgZnJvbSBzbG90IHRvIHBvcnQtPnNsb3QuCj4+IFNvIHRoZSBzYW1l
IHNob3VsZCBiZSBkb25lIGhlcmUuCj4+Cj4+IFRoaXMgYWxzbyBmaXhlcyBjb21waWxlciBlcnJv
cjoKPj4gZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNpLW10NzYyMS5jOiBJbiBmdW5jdGlv
biAnbXQ3NjIxX3BjaV9wcm9iZSc6Cj4+IC4vaW5jbHVkZS9saW51eC9kZXZpY2UuaDoxNDkwOjI6
IHdhcm5pbmc6ICdzbG90JyBtYXkgYmUgdXNlZCAgCj4+IHVuaW5pdGlhbGl6ZWQgaW4gdGhpcyBm
dW5jdGlvbiBbLVdtYXliZS11bmluaXRpYWxpemVkXQo+PiAgIF9kZXZfaW5mbyhkZXYsIGRldl9m
bXQoZm10KSwgIyNfX1ZBX0FSR1NfXykKPj4gICBefn5+fn5+fn4KPj4gZHJpdmVycy9zdGFnaW5n
L210NzYyMS1wY2kvcGNpLW10NzYyMS5jOjUwNDo2OiBub3RlOiAnc2xvdCcgd2FzICAKPj4gZGVj
bGFyZWQgaGVyZQo+PiAgIHUzMiBzbG90Owo+PiAgICAgICBefn5+Cj4+Cj4+IEZpeGVzOiA4MDJh
MmY3YjJmZTMgKCJzdGFnaW5nOiBtdDc2MjEtcGNpOiBmYWN0b3Igb3V0ICAKPj4gJ210NzYyMV9w
Y2llX2VuYWJsZV9wb3J0JyBmdW5jdGlvbiIpCj4+IFNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBE
b3JzdCA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvc3RhZ2luZy9t
dDc2MjEtcGNpL3BjaS1tdDc2MjEuYyB8IDIgKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L210NzYyMS1wY2kvcGNpLW10NzYyMS5jICAKPj4gYi9kcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLXBj
aS9wY2ktbXQ3NjIxLmMKPj4gaW5kZXggMDNkOTE5YTk0NTUyLi44MTYwMGMwM2NhZTEgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYwo+PiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLXBjaS9wY2ktbXQ3NjIxLmMKPj4gQEAgLTUxMSw3ICs1
MTEsNyBAQCBzdGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9lbmFibGVfcG9ydHMoc3RydWN0ICAKPj4g
bXQ3NjIxX3BjaWUgKnBjaWUpCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwb3J0LT5zbG90KTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250
aW51ZTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgfQo+PiAtICAgICAgICAgICAgICAgICAg
ICAgICBkZXZfaW5mbyhkZXYsICJQQ0lFJWQgZW5hYmxlZFxuIiwgc2xvdCk7Cj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGRldl9pbmZvKGRldiwgIlBDSUUlZCBlbmFibGVkXG4iLCBwb3J0LT5z
bG90KTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgbnVtX3Nsb3RzX2VuYWJsZWQrKzsKPj4g
ICAgICAgICAgICAgICAgIH0KPj4gICAgICAgICB9Cj4+IC0tCj4+IDIuMjAuMQo+Pgo+Cj4gSSBk
b24ndCBrbm93IHdoYXQgdHJlZSBhbmQgYnJhbmNoIGFyZSB5b3UgdXNpbmcgZm9yIHRoaXMgYnV0
IHRoaXMgaXMKPiBraW5kIG9mIG9sZCBjb2RlLi4uIFlvdSBzaG91bGQKPiB1c2Ugc3RhZ2luZyBn
aXQgdHJlZSwgJ3N0YWdpbmctbmV4dCcgYnJhbmNoIGZvciBzdGFnaW5nIHBhdGNoZXMgdG8KPiBh
dm9pZCBwcm9ibGVtcyBsaWtlIHRoaXMuCgpJIGFtIHVzaW5nIG5ldC1uZXh0IHRyZWUgZm9yIG15
IG10NzYyMSBldGhlcm5ldCBkZXZlbG9wbWVudC4KU28gSSBzZWUgdGhpcyB3YXJuaW5nIGEgbG90
LgoKSSBkaWRuJ3Qga25vdyBhYm91dCB0aGUgc3RhZ2luZy1uZXh0IGJyYW5jaC4KSSB0aGluayBJ
IG9ubHkgY2hlY2tlZCB0aGUgbWFzdGVyIGJyYW5jaC4KSSBzZWUgbm93IHRoYXQgdGhlIHBjaSBk
cml2ZXIgaGFzIGNoYW5nZWQgYSBsb3QuCgpTb3JyeSBmb3IgdGhlIG5vaXNlLgoKR3JlYXRzLAoK
UmVuw6kKCj4KPiBCZXN0IHJlZ2FyZHMsCj4gICAgIFNlcmdpbyBQYXJhY3VlbGxvcwoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
