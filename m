Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D006275067
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 07:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD529872FE;
	Wed, 23 Sep 2020 05:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iKy3AZ041BSB; Wed, 23 Sep 2020 05:44:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30872872E1;
	Wed, 23 Sep 2020 05:44:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19D2E1BF400
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 05:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 111908608B
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 05:44:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eZN+KzJr3BKk for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 05:44:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D06B28401E
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 05:44:21 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13C9C21D91;
 Wed, 23 Sep 2020 05:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600839861;
 bh=PNVSGZ/IrHXOOxQ05RfPzXNQcUDkA7tZrXhQqZ54p+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hrMrcdGWIv/lLOd/1R9KnmbvSryjwks5+bZOkxbcvfQUhWPVId4unyS6AkYskHMPa
 OLm2HGJX7vEN+N+/XDWPMBdA7MeZ+PJ2n9qFxAXxFIygSIO5cGHMD+OW9W2Fb7mVhb
 qQaoU5HKuj0ZOVUAaaVCtnpU4UAJ8LpUbG8bNQvo=
Date: Wed, 23 Sep 2020 07:44:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/2] staging: vchiq: fix __user annotations
Message-ID: <20200923054440.GA2619878@kroah.com>
References: <20200922202208.1861595-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922202208.1861595-1-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 linux-kernel@vger.kernel.org, Nachammai Karuppiah <nachukannan@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBTZXAgMjIsIDIwMjAgYXQgMTA6MjE6NDNQTSArMDIwMCwgQXJuZCBCZXJnbWFubiB3
cm90ZToKPiBNeSBlYXJsaWVyIHBhdGNoZXMgY2F1c2VkIHNvbWUgbmV3IHNwYXJzZSB3YXJuaW5n
cywgYnV0IGl0IHR1cm5zIG91dAo+IHRoYXQgYSBudW1iZXIgb2YgdGhvc2UgYXJlIGFjdHVhbCBi
dWdzLCBvciBhdCBsZWFzdCBzdXNwaWNvdXMgY29kZS4KPiAKPiBBZGRpbmcgX191c2VyIGFubm90
YXRpb25zIHRvIHRoZSBkYXRhIHN0cnVjdHVyZXMgdGhhdCBhcmUgZGVmaW5lZCBpbgo+IHVhcGkg
aGVhZGVycyBoZWxwcyBhdm9pZCB0aGUgbmV3IHdhcm5pbmdzLCBidXQgdGhhdCBjYXVzZXMgYSBk
aWZmZXJlbnQKPiBzZXQgb2Ygd2FybmluZ3MgdG8gc2hvdyB1cCwgYXMgc29tZSBvZiB0aGVzZSBz
dHJ1Y3R1cmVzIGFyZSB1c2VkIGJvdGgKPiBpbnNpZGUgb2YgdGhlIGtlcm5lbCBhbmQgYXQgdGhl
IHVzZXIgaW50ZXJmYWNlIGJ1dCBzdG9yaW5nIHBvaW50ZXJzIHRvCj4gZGlmZmVyZW50IHRoaW5n
cyB0aGVyZS4KPiAKPiBEdXBsaWNhdGluZyB0aGUgdmNoaXFfc2VydmljZV9wYXJhbXMgYW5kIHZj
aGlxX2NvbXBsZXRpb25fZGF0YSBzdHJ1Y3R1cmVzCj4gaW4gdHVybiB0YWtlcyBjYXJlIG9mIG1v
c3Qgb2YgdGhvc2UsIGFuZCB0aGVuIGl0IHR1cm5zIG91dCB0aGF0IHRoZXJlCj4gaXMgYSAnZGF0
YScgcG9pbnRlciB0aGF0IGNhbiBiZSBhbnkgb2YgYSBfX3VzZXIgYWRkcmVzcywgYSBkbWRfYWRk
cl90Cj4gYW5kIGEga2VybmVsIHBvaW50ZXIgaW4gdm1hbGxvYyBzcGFjZSBhdCB0aW1lcy4KPiAK
PiBJJ20gdHJ5aW5nIHRvIGFubm90YXRlIHRoZXNlIGFzIGJlc3QgSSBjYW4gd2l0aG91dCBjaGFu
Z2luZyBiZWhhdmlvciwKPiBidXQgdGhlcmUgc3RpbGwgc2VlbXMgdG8gYmUgYSBzZXJpb3VzIGJ1
ZyB3aGVuIHVzZXIgc3BhY2UgcGFzc2VzCj4gYSB2YWxpZCB2bWFsbG9jIHNwYWNlIGFkZHJlc3Mg
aW5zdGVhZCBvZiBhIHVzZXIgcG9pbnRlci4gQWRkaW5nCj4gY29tbWVudHMgaW4gdGhlIGNvZGUg
dGhlcmUsIGFuZCBsZWF2aW5nIHRoZSB3YXJuaW5ncyBpbiBwbGFjZSB0aGF0Cj4gc2VlbSB0byBj
b3JyZXNwb25kIHRvIGFjdHVhbCBidWdzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21h
bm4gPGFybmRAYXJuZGIuZGU+Cj4gLS0tCj4gIC4uLi9pbmNsdWRlL2xpbnV4L3Jhc3BiZXJyeXBp
L3ZjaGlxLmggICAgICAgICB8IDExICsrLQo+ICAuLi4vaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hp
cV8yODM1X2FybS5jICAgICAgfCAgMiArLQo+ICAuLi4vaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hp
cV9hcm0uYyAgICAgICAgICAgfCA5NSArKysrKysrKysrKystLS0tLS0tCj4gIC4uLi9pbnRlcmZh
Y2UvdmNoaXFfYXJtL3ZjaGlxX2NvcmUuYyAgICAgICAgICB8IDE5ICsrLS0KPiAgLi4uL2ludGVy
ZmFjZS92Y2hpcV9hcm0vdmNoaXFfY29yZS5oICAgICAgICAgIHwgMTAgKy0KPiAgLi4uL2ludGVy
ZmFjZS92Y2hpcV9hcm0vdmNoaXFfaW9jdGwuaCAgICAgICAgIHwgMjkgKysrKy0tCj4gIDYgZmls
ZXMgY2hhbmdlZCwgMTA2IGluc2VydGlvbnMoKyksIDYwIGRlbGV0aW9ucygtKQoKVGhpcyBwYXRj
aCBzZXJpZXMgYnJlYWtzIHRoZSBidWlsZCBmb3IgbWU6Cgpkcml2ZXJzL3N0YWdpbmcvdmMwNF9z
ZXJ2aWNlcy9iY20yODM1LWF1ZGlvL2JjbTI4MzUtdmNoaXEuYzogSW4gZnVuY3Rpb24g4oCYdmNf
dmNoaV9hdWRpb19pbml04oCZOgpkcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9iY20yODM1
LWF1ZGlvL2JjbTI4MzUtdmNoaXEuYzoxMjU6OTogZXJyb3I6IHZhcmlhYmxlIOKAmHBhcmFtCuKA
mSBoYXMgaW5pdGlhbGl6ZXIgYnV0IGluY29tcGxldGUgdHlwZQogIDEyNSB8ICBzdHJ1Y3QgdmNo
aXFfc2VydmljZV9wYXJhbXMgcGFyYW1zID0gewogICAgICB8ICAgICAgICAgXn5+fn5+fn5+fn5+
fn5+fn5+fn4KZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1hdWRpby9iY20y
ODM1LXZjaGlxLmM6MTI2OjQ6IGVycm9yOiDigJhzdHJ1Y3QgdmNoaXFfc2VydmljZV9wYXJhbXPi
gJkgaGFzIG5vIG1lbWJlciBuYW1lZCDigJh2ZXJzaW9u4oCZCiAgMTI2IHwgICAudmVyc2lvbiAg
PSBWQ19BVURJT1NFUlZfVkVSLAogICAgICB8ICAgIF5+fn5+fn4KSW4gZmlsZSBpbmNsdWRlZCBm
cm9tIGRyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2JjbTI4MzUtYXVkaW8vYmNtMjgzNS12
Y2hpcS5jOjg6CmRyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2JjbTI4MzUtYXVkaW8vdmNf
dmNoaV9hdWRpb3NlcnZfZGVmcy5oOjg6MjY6IHdhcm5pbmc6IGV4Y2VzcyBlbGVtZW50cyBpbiBz
dHJ1Y3QgaW5pdGlhbGl6ZXIKICAgIDggfCAjZGVmaW5lIFZDX0FVRElPU0VSVl9WRVIgMgogICAg
ICB8ICAgICAgICAgICAgICAgICAgICAgICAgICBeCmRyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZp
Y2VzL2JjbTI4MzUtYXVkaW8vYmNtMjgzNS12Y2hpcS5jOjEyNjoxNTogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIOKAmFZDX0FVRElPU0VSVl9WRVLigJkKICAxMjYgfCAgIC52ZXJzaW9uICA9
IFZDX0FVRElPU0VSVl9WRVIsCiAgICAgIHwgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+
CgoKYW5kIHNvIG9uLi4uCgpDYXJlIHRvIHRyeSBhIHYyPwoKdGhhbmtzLAoKZ3JlZyBrLWgKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
