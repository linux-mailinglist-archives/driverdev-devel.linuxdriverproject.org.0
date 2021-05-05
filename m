Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B87537438D
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 19:36:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D7FB60753;
	Wed,  5 May 2021 17:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohAm4r0GFhvg; Wed,  5 May 2021 17:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55FD860750;
	Wed,  5 May 2021 17:36:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F6F31BF414
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 17:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C0E14022A
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 17:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=ndufresne-ca.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vXtRgCkoTUeL for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 17:36:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49457401AE
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 17:36:10 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id k127so2321468qkc.6
 for <devel@driverdev.osuosl.org>; Wed, 05 May 2021 10:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=bML/KIw4vkIF6m6AF0QDRSbzcPArKEWcSuhrrYaBtBo=;
 b=R34Ur0CNg21NAR2OMM8TqSpqyikAwMGN+4u43bnC29jGlBGkb+vt6oezgDWw5sLP4/
 fv2vyFxX7LaKKOPufJ8LsB5TjRFp5PLyEgDF3g4PZvHO/SH1CGijp4Erndyn8Powm9Rb
 akPPpupvefTwLByDo6YOrBVj3yiOhLVyY7+L3p3GcKGfr1z9mgZXSHmqVi0aZmIYND7v
 zAAt2DdrNWwVR8OdYKBit9LaGNftIib1OClHEnylLjXjS7TN1euJpt+fqmQFxl6wo901
 sTfq2Bvdm0EalAzwRAVGxBklTmRCPV6h62XAk6gKcLZJRKrIi7qv8R/E0rQcMm8jtBcm
 0Rrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=bML/KIw4vkIF6m6AF0QDRSbzcPArKEWcSuhrrYaBtBo=;
 b=bFIzQGeVuPtjuiC4AbL/nU5fDBeCSJLsXKREBHJBGwI9KdAbUv8g9dnmjNPILAuGwF
 R0+Ufd4DyqcCyCMEwqaIhewgbDrZ9iouaAjHXhCCASDHhdiQTEeZ05EHP+CHMOHMgSM2
 nn+4bAnT8hC/JD8aoUQfQP+ty9VhdLOmoQL/8UUNanNbbLzvvKApZeHp+qb7INOe+i43
 pyxA2N4GGDNI1Wi+BNWuMa/ugEEwuqiH8EE6yMOavJ5cw9b2KSQVKhWjGGzJ+4O0e+ru
 PTfI8f9NDP6iYPrTceyq9Zq/NMFkNY3VC+ZkyMTCjcZUCYZKQT0dVsHQ5Hai9X0Sxytd
 WIRA==
X-Gm-Message-State: AOAM532f6alDgxZciobAZ6eacc6778VgixHTrh9EJ2o1myCTFVtMSRwE
 ZIoMWe+jGR+rRDFFkZ8dMFPuvg==
X-Google-Smtp-Source: ABdhPJyIptnjQKHB27Jsmv9m4bDilzW/rWjk1KdkwhlFuX2rQqKITvXb6nrs2FiUWrUkHiUl4wfrlw==
X-Received: by 2002:a05:620a:14a8:: with SMTP id
 x8mr4216682qkj.86.1620236169018; 
 Wed, 05 May 2021 10:36:09 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id 44sm5665119qtb.45.2021.05.05.10.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 10:36:08 -0700 (PDT)
Message-ID: <7fc04abf3959720a9f344bc3a67b4792552811c1.camel@ndufresne.ca>
Subject: Re: [RFC RESEND 2/3] media: uapi: Add VP9 stateless decoder controls
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>, linux-media@vger.kernel.org
Date: Wed, 05 May 2021 13:36:06 -0400
In-Reply-To: <12493c55-e6cf-0491-d310-7561c7f77258@xs4all.nl>
References: <20210421100035.13571-1-andrzej.p@collabora.com>
 <20210421100035.13571-3-andrzej.p@collabora.com>
 <12493c55-e6cf-0491-d310-7561c7f77258@xs4all.nl>
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34) 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Adrian Ratiu <adrian.ratiu@collabora.com>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgSGFucywKCmp1c3QgYSBwYXJ0aWFsIHJlcGx5LCBJJ2xsIGxldCBBbmRyemVqIGV4dGVuZC4K
CkxlIGpldWRpIDI5IGF2cmlsIDIwMjEgw6AgMTI6MjAgKzAyMDAsIEhhbnMgVmVya3VpbCBhIMOp
Y3JpdMKgOgo+ID4gK8KgwqDCoMKgwqAgLSBgYGZyYW1lX3dpZHRoX21pbnVzXzFgYAo+ID4gK8Kg
wqDCoMKgwqAgLSBBZGQgMSB0byBnZXQgdGhlIGZyYW1lIHdpZHRoIGV4cHJlc3NlZCBpbiBwaXhl
bHMuCj4gPiArwqDCoMKgICogLSBfX3UxNgo+ID4gK8KgwqDCoMKgwqAgLSBgYGZyYW1lX2hlaWdo
dF9taW51c18xYGAKPiA+ICvCoMKgwqDCoMKgIC0gQWRkIDEgdG8gZ2V0IHRoZSBmcmFtZSBoZWln
aHQgZXhwcmVzc2VkIGluIHBpeGVscy4KPiAKPiBUaGVzZSB0d28gZmllbGRzIGFyZSB3ZWlyZC4g
SXNuJ3QgdGhpcyBkZWZpbmVkIGJ5IHNldHRpbmcgdGhlIG91dHB1dCBmb3JtYXQ/Cj4gQW5kIHdo
eSB0aGUgJ21pbnVzXzEnPwo+IAo+ID4gK8KgwqDCoCAqIC0gX191MTYKPiA+ICvCoMKgwqDCoMKg
IC0gYGByZW5kZXJfd2lkdGhfbWludXNfMWBgCj4gPiArwqDCoMKgwqDCoCAtIEFkZCAxIHRvIGdl
dCB0aGUgZXhwZWN0ZWQgcmVuZGVyIHdpZHRoIGV4cHJlc3NlZCBpbiBwaXhlbHMuIFRoaXMgaXMK
PiA+ICvCoMKgwqDCoMKgwqDCoCBub3QgdXNlZCBkdXJpbmcgdGhlIGRlY29kaW5nIHByb2Nlc3Mg
YnV0IG1pZ2h0IGJlIHVzZWQgYnkgSFcKPiA+IHNjYWxlcnMgdG8KPiA+ICvCoMKgwqDCoMKgwqDC
oCBwcmVwYXJlIGEgZnJhbWUgdGhhdCdzIHJlYWR5IGZvciBzY2Fub3V0Lgo+ID4gK8KgwqDCoCAq
IC0gX191MTYKPiA+ICvCoMKgwqDCoMKgIC0gcmVuZGVyX2hlaWdodF9taW51c18xCj4gPiArwqDC
oMKgwqDCoCAtIEFkZCAxIHRvIGdldCB0aGUgZXhwZWN0ZWQgcmVuZGVyIGhlaWdodCBleHByZXNz
ZWQgaW4gcGl4ZWxzLiBUaGlzCj4gPiBpcwo+ID4gK8KgwqDCoMKgwqDCoMKgIG5vdCB1c2VkIGR1
cmluZyB0aGUgZGVjb2RpbmcgcHJvY2VzcyBidXQgbWlnaHQgYmUgdXNlZCBieSBIVwo+ID4gc2Nh
bGVycyB0bwo+ID4gK8KgwqDCoMKgwqDCoMKgIHByZXBhcmUgYSBmcmFtZSB0aGF0J3MgcmVhZHkg
Zm9yIHNjYW5vdXQuCj4gCj4gTm8gaWRlYSB3aGF0IHRoZXNlIGZpZWxkcyBhcmUgYWJvdXQuIEkg
c3VzcGVjdCB0aGlzIGNhbiBiZSBkZWZpbmVkIGJ5IHNldHRpbmcKPiB0aGUgY2FwdHVyZSBmb3Jt
YXQsIGJ1dCBJJ20gbm90IHN1cmUuCgpXZSBoYXZlIHRoZSBzYW1lIGZvciBvdGhlciBjb2RlY3Mu
IEVhY2ggY29kZWMgYml0c3RyZWFtIGluY2x1ZGUgdGhlIGNvZGVkIGFuZAp0aGUgZGlzcGxheSBz
aXplIGluIHNvbWUgZm9ybS4gRm9yIEgyNjQvSDI2NSB0aGF0IHdhcyBwYXNzZWQgYXMgYXMgbnVt
YmVyIG9mCm1hY3JvYmxvY2sgYW5kIGEgY3JvcCByZWN0YW5nbGUuIEZvciBWUDkgdmFsdWUgLSAx
IGlzIGFzIGRlZmluZWQgaW4gdGhlIHNwZWMuIEFzCjAgaXMgbm90IHZhbGlkLCB0aGUgYm9vbGVh
biBjb2RlciBjYW4gc2F2ZSBzb21lIGJpdHMgd2hlbiBzdG9yaW5nIHRoZSB2YWx1ZS4KVGhvdWdo
LCBmb3IgcGFyYW1ldGVycywgd2UgdXN1YWxseSBzdGFydCB3aXRoIHRoZSB3YXkgaXQncyBlbmNv
ZGVkIGZpcnN0LCBhbmQKY2hhbmdlIGl0IG9ubHkgaWYgd2UgdGhpbmsgaXQgbWFrZSBzZW5zZS4g
V2UnbGwgdGFrZSBub3RlIGFuZCBjb25zaWRlciB0aGlzCndoZW5ldmVyIHdlIGhhdmUgYSBzZWNv
bmQgZHJpdmVyIHRvIGxvb2sgYXQuCgpOb3csIHdoeSBkbyB3ZSBpbmNsdWRlIGJvdGggaGVyZS4g
V2VsbCBpbiBmYWN0LCB0aGUgSFcgbWF5IGhhdmUgc29tZSBleHRyYQpjb25zdHJhaW50cy4gV2hp
Y2ggbWVhbnMgdGhlcmUgd2lsbCBiZSB1cCB0byAzIGZyYW1lIHNpemVzIHRoYXQgbWF0dGVycy4g
V2UKY2FuJ3QgYWxzbyBkZXRlcm1pbmUgaWYgdGhlIGRpc3BsYXkvcmVuZGVyIG9yIGNvZGVkIHNp
emUgd2lsbCBiZSB1c2VkIGZvciBtaW5pbQpDQVBUVVJFIGZvcm1hdCwgYXMgdGhpcyB3aWxsIGlu
IGZhY3QgZGVwZW5kcyBpZiBhIHBvc3QgcHJvY2Vzc29yIHdpbGwgYmUgdXNlZCBvcgpub3QuIAoK
U28gdG8gcmVjYXAsIHdlIGxpbWl0IHRoZSBDQVBUVVJFIGZvcm1hdCBiYXNlIG9uIHRoaXMgaW5m
b3JtYXRpb24sIGFuZCBub3QgdGhlCm9wcG9zaXRlLiBUaGUgd2lkdGgvaGVpZ2h0IG9uIE9VVFBV
VCBGTVQgaGFzIGJlZW4gZGVmaW5lIGFzIG1lYW5pbmdsZXNzIGluIHRoZQpzcGVjICh0byBhbGln
biB3aXRoIHN0YXRlZnVsIEkgc3VwcG9zZSA/KS4gVGhpcyB3YXksIHRoZSBkcml2ZXIgZ290IGFs
bCB0aGUKaW5mb3JtYXRpb24gYWxpZ25lZCB3aXRoIGhvdyBpdCB3b3JrcyBpbnNpZGUgdGhlIGNv
ZGVjLCB3aXRob3V0IGhhdmluZyB0byBkbyBhCnRyYW5zbGF0aW9uIGRhbmNlLCBhbmQgdGhlbiBw
cm9wZXJseSBpbXBsZW1lbnQgQ0FQVFVSRSBUUllfRk1UIGJhc2Ugb24gdGhhdC4KClRvIG1ha2Ug
YW4gYW5hbG9neSB3aXRoIHN0YXRlZnVsIGNvZGVjLCB0aGlzIHJlcGxhY2VzIHRoZSBxdWV1aW5n
IG9mIGEgZnJhbWUKdGhhdCBjb250YWlucyBjb2RlYyBoZWFkZXJzLiBXZSBza2lwIHRoZSBTUkNf
Q0ggZXZlbnRzLCBzaW5jZSB0aGlzIGlzIG5vIGxvbmdlcgphc3luY2hyb25vdXMuCgpOaWNvbGFz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
