Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C04014A657
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 15:39:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19F1D85D26;
	Mon, 27 Jan 2020 14:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-3nn+hjYcGc; Mon, 27 Jan 2020 14:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E341F82F92;
	Mon, 27 Jan 2020 14:39:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84A891BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8183782D8E
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53-uGcYEc1+9 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 14:39:22 +0000 (UTC)
X-Greylist: delayed 00:29:24 by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C10B4824E3
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:39:22 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id c16so10217577ioh.6
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 06:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Yv5KqLnXONaOGib3wLrqYVmgcYdGx8e/GR+T9YQ6OPw=;
 b=ByRNG2PdKmvLoHFH+r6YBsiQVwQvGfPqOLCTKtZXeGnRDkXeqe4WbV6kXkbNl/gFVx
 xhqzm8Ejka3wS6SFHv9GTZ/Sa+tNB487+zOZd122FH1vQyjnlJjzXjrLzwe2SO/GJTOr
 n7QI75dEomWEe5MYamK39fh1b4VQHTQM8JQi0oESKZM1zcjeoUvwPrMQYkq+p3N3uccb
 D7uSPLgW02q0GY9gJJMRwjQn4IRmGV+hMYZeeJUDrbzGTZ2WbNQpJ1uNh0cL9h1WDYED
 PXrI69PC/iTPWzmAgeMZuFoR2wRXLtGn+ySWAidJOy62cU/vcO3XSCg6LpLktAz9cVHm
 IYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Yv5KqLnXONaOGib3wLrqYVmgcYdGx8e/GR+T9YQ6OPw=;
 b=XrK55C6G6MFK/o9C5YZJg7JeBeoA2OXjKYZpPCR8Qoagv9LyUzwaoaAwPDDgobhAKO
 lUn2GJTmQGyTP9z6aSkF7QshajLTYT77viho1rA1YlBv7vuDzuitOQUoyRFAy4ZHVCz6
 YTM2bNHmQkJd3yxRVHPxLpOxSyTWRzAsmsciRbdC9OeCPnS3R93o2MOTrM1te7EjN626
 09cuEjH74XZu+1xfwV1F4LC4o7GJmJ93whgOw24KX8/V9IT8QLPPO/3KaN1KWB8fpJZD
 NXPjWjlbmyfzSYCPuUhJ251L4+amA3lR6ZOpDp8vkyvWvH3mImag3kC0+YAzyIhdXEmk
 ISgQ==
X-Gm-Message-State: APjAAAXr0mBHpP7ugeVdy0aK2MdTEN+DqyEJG7tgsZZDe0ImUzYTn1+Z
 Q9fbSUmmt5oeXeIXPcrFQY4sXHouWf64nw==
X-Google-Smtp-Source: APXvYqwtVgEtLekwn8fG1L9sK07okuROrJ9qxmXeVCwPLq/j16zWaXdybm2To8GVQ2l04vYEu9xWwQ==
X-Received: by 2002:a02:cc59:: with SMTP id i25mr8166924jaq.78.1580134197214; 
 Mon, 27 Jan 2020 06:09:57 -0800 (PST)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id g12sm3532484iom.5.2020.01.27.06.09.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 06:09:56 -0800 (PST)
Subject: Re: [greybus-dev] [PATCH] staging: greybus: bootrom: fix
 uninitialized variables
To: SAURAV GIREPUNJE <saurav.girepunje@gmail.com>,
 Johan Hovold <johan@kernel.org>
References: <20200125084403.GA3386@google.com>
 <20200125100011.GK8375@localhost> <20200125121459.GA2792@google.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <275d6509-ebd2-f00e-176d-abf97ae834da@linaro.org>
Date: Mon, 27 Jan 2020 08:10:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200125121459.GA2792@google.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, vireshk@kernel.org, elder@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMS8yNS8yMCA2OjE0IEFNLCBTQVVSQVYgR0lSRVBVTkpFIHdyb3RlOgo+IE9uIDI1LzAxLzIw
IDExOjAwICswMTAwLCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4+IE9uIFNhdCwgSmFuIDI1LCAyMDIw
IGF0IDAyOjE0OjAzUE0gKzA1MzAsIFNhdXJhdiBHaXJlcHVuamUgd3JvdGU6Cj4+PiBmaXggdW5p
bml0aWFsaXplZCB2YXJpYWJsZXMgaXNzdWUgZm91bmQgdXNpbmcgc3RhdGljIGNvZGUgYW5hbHlz
aXMgdG9vbAo+Pgo+PiBXaGljaCB0b29sIGlzIHRoYXQ/Cj4+Cj4+PiAoZXJyb3IpIFVuaW5pdGlh
bGl6ZWQgdmFyaWFibGU6IG9mZnNldAo+Pj4gKGVycm9yKSBVbmluaXRpYWxpemVkIHZhcmlhYmxl
OiBzaXplCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2F1cmF2IEdpcmVwdW5qZSA8c2F1cmF2Lmdp
cmVwdW5qZUBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVz
L2Jvb3Ryb20uYyB8IDIgKy0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvZ3JleWJ1
cy9ib290cm9tLmMgYi9kcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9ib290cm9tLmMKPj4+IGluZGV4
IGE4ZWZiODYuLjllYWJlYjMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvZ3JleWJ1
cy9ib290cm9tLmMKPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2Jvb3Ryb20uYwo+
Pj4gQEAgLTI0NSw3ICsyNDUsNyBAQCBzdGF0aWMgaW50IGdiX2Jvb3Ryb21fZ2V0X2Zpcm13YXJl
KHN0cnVjdCBnYl9vcGVyYXRpb24gKm9wKQo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZ2JfYm9vdHJv
bV9nZXRfZmlybXdhcmVfcmVxdWVzdCAqZmlybXdhcmVfcmVxdWVzdDsKPj4+IMKgwqDCoMKgwqAg
c3RydWN0IGdiX2Jvb3Ryb21fZ2V0X2Zpcm13YXJlX3Jlc3BvbnNlICpmaXJtd2FyZV9yZXNwb25z
ZTsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRldmljZSAqZGV2ID0gJm9wLT5jb25uZWN0aW9uLT5i
dW5kbGUtPmRldjsKPj4+IC3CoMKgwqAgdW5zaWduZWQgaW50IG9mZnNldCwgc2l6ZTsKPj4+ICvC
oMKgwqAgdW5zaWduZWQgaW50IG9mZnNldCA9IDAsIHNpemUgPSAwOwo+Pj4gwqDCoMKgwqDCoCBl
bnVtIG5leHRfcmVxdWVzdF90eXBlIG5leHRfcmVxdWVzdDsKPj4+IMKgwqDCoMKgwqAgaW50IHJl
dCA9IDA7Cj4+Cj4+IEkgdGhpbmsgdGhpcyBoYXMgY29tZSB1cCBpbiB0aGUgcGFzdCwgYW5kIHdo
aWxlIHRoZSBjb2RlIGluIHF1ZXN0aW9uIGlzCj4+IG92ZXJseSBjb21wbGljYXRlZCBhbmQgY29u
ZnVzZXMgc3RhdGljIGNoZWNrZXJzIGFzIHdlbGwgYXMgaHVtYW5zLCBpdAo+PiBsb29rcyBjb3Jy
ZWN0IHRvIG1lLgo+Pgo+PiBQbGVhc2UgbWFrZSBzdXJlIHRvIHZlcmlmeSB0aGUgb3V0cHV0IG9m
IGFueSB0b29scyBiZWZvcmUgcG9zdGluZwo+PiBwYXRjaGVzIGJhc2VkIG9uIHRoZW0uCj4+Cj4+
IEpvaGFuCj4gSSB1c2VkIGNwcGNoZWNrIHRvb2wgLgoKSW1wbGllZCBpbiBKb2hhbidzIHF1ZXN0
aW9uIGlzIGEgc3VnZ2VzdGlvbi4KCldoZW4geW91IHByb3Bvc2UgYSBwYXRjaCB0aGF0IGFkZHJl
c3NlcyBzb21ldGhpbmcgZmxhZ2dlZCBieSBhCnRvb2wgb2Ygc29tZSBraW5kLCBpdCBpcyBnb29k
IHByYWN0aWNlIHRvIGlkZW50aWZ5IHRoZSB0b29sIGluCnRoZSBwYXRjaCBkZXNjcmlwdGlvbiwg
YW5kIGV2ZW4gYmV0dGVyLCBnaXZlIGFuIGV4YW1wbGUgb2YgaG93CnRoZSB0b29sIHdhcyBpbnZv
a2VkIHdoZW4gcmVwb3J0ZWQgdGhlIHByb2JsZW0geW91J3JlIGZpeGluZy4KU29tZXRpbWVzIHBl
b3BsZSBldmVuIGluY2x1ZGUgdGhlIG91dHB1dCBvZiB0aGUgdG9vbCwgdGhvdWdoCkkgdGhpbmsg
dGhhdCBjYW4gc29tZXRpbWVzIGJlIGEgYml0IG11Y2guCgpBbmQgYXMgeW91IGhhdmUgbm93IGhl
YXJkIHNldmVyYWwgdGltZXMsIGRvIG5vdCBibGluZGx5IHRydXN0CnRoZSBvdXRwdXQgb2YgdGhl
c2UgdG9vbHMuICBUaGV5J3JlIGludGVuZGVkIHRvIGNhbGwgYXR0ZW50aW9uCnRvIHRoaW5ncyBm
b3IgeW91IHRvIGV4YW1pbmU7IHRoZXkgYXJlIG5vIG1hdGNoIGZvciBhIGh1bWFuLAphbmQgdGhp
bmdzIHRoZXkgdGVsbCB5b3UgYWJvdXQgYXJlIG5vdCBndWFyYW50ZWVkIHRvIGJlIHJlYWwKcHJv
YmxlbXMuCgoJCQkJCS1BbGV4Cgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fIAo+IGdyZXlidXMtZGV2IG1haWxpbmcgbGlzdAo+IGdyZXlidXMtZGV2QGxp
c3RzLmxpbmFyby5vcmcKPiBodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9ncmV5YnVzLWRldgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
