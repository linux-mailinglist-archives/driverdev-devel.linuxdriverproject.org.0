Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31266B6E5E
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 22:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F97A86113;
	Wed, 18 Sep 2019 20:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RhlCYbx9pb9Y; Wed, 18 Sep 2019 20:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA9F3860FB;
	Wed, 18 Sep 2019 20:47:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5716D1BF311
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:47:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 53CCD21F5A
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f+bqCzr6DxL3 for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 20:47:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E461203B2
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yKO+JcrX4WlARPc+kWE02y475ov/blGOIN+ePLKY9jk=; b=gJkNowr2SzR7BFTbrahPJ2la/F
 U1rGQ5TAnIe0V2wQvVHVJSudzxcXRhJugshBq0XINqmfULmUNnKwRQ4zxmtL+yEXmYzwGvSk+M8rN
 hW91rXpleIbzAzZLgJCzWEwG6awzsOP6IA6vnkh6l1C9h9samuELA1m8N+atSr6m6BI4fWLQyMk0h
 nYo1DwH6odStxfocEsZPWqm6gH22F1qi41VPwzpA0Pw7MPJfhlOfZxoDO6PUpyqNMhVlhj3BCBLcS
 O0Lk/GPzewNCEagBg0+HVE1LD7QA9+1HH3D9IGrL9DcaDfUKZOmRD1E1uZ36BpAN3hc0VEV0lgcqf
 sYvKSWlQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iAgr5-0005yZ-1J; Wed, 18 Sep 2019 20:47:15 +0000
Date: Wed, 18 Sep 2019 13:47:15 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.4-rc1
Message-ID: <20190918204715.GA15538@infradead.org>
References: <20190918114754.GA1899504@kroah.com>
 <20190918182412.GA9924@infradead.org>
 <20190918185010.GA1933470@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918185010.GA1933470@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDg6NTA6MTBQTSArMDIwMCwgR3JlZyBLSCB3cm90ZToK
PiA+IGV4ZmF0IGlzIGp1c3QgYSByYW5kb20gb2xkIGNvZGUgZHJvcCBmcm9tIFNhbXN1bmcgaGFz
dGlseSBwaWNrZWQgdXAsCj4gPiBhbmQgYWxzbyBkdXBsaWNhdGluZyB0aGUgZmF0MTYvMzIgZnVu
Y3Rpb25hbGl0eSwgYW5kIHdpdGhvdXQKPiA+IGNvbnN1bHRhdGlvbiBvZiB0aGUgZGV2ZWxvcGVz
IG9mIHRoYXQgd2hvIGFyZSB0cnlpbmcgdG8gd29yayB0aHJvdWdoCj4gPiB0aGVpciBwcm9jZXNz
IG9mIGNvbnRyaWJ1dGluZyB0aGUgdXB0b2RhdGUgYW5kIG9mZmljaWFsIHZlcnNpb24gb2YgaXQu
Cj4gCj4gVGhvc2UgZGV2ZWxvcGVycyBhcmUgc3RpbGwgeWV0IHRvIGJlIGZvdW5kLCB3ZSBvbmx5
IGdvdCBhICJkcm9wIiBvZiB0aGUKPiBzYW1zdW5nIGNvZGUgX2FmdGVyXyB0aGlzIGNvZGUgd2Fz
IG1lcmdlZCwgZnJvbSBub24tc2Ftc3VuZyBwZW9wbGUuICBObwo+IHNhbXN1bmcgZGV2ZWxvcGVy
cyBoYXZlIHNhaWQgdGhleSB3b3VsZCBhY3R1YWxseSBoZWxwIHdpdGggYW55IG9mIHRoaXMKPiB3
b3JrLCBhbmQgd2hlbiBhc2tlZCB3aGF0IGRpZmZlcmVkIGZyb20gdGhlIGluLXRyZWUgc3R1ZmYs
IEkgZ290IGEgbGlzdCwKPiBidXQgbm8gc3BlY2lmaWNzLiAgSSdsbCBiZSB3b3JraW5nIHRocm91
Z2ggdGhhdCBsaXN0IG92ZXIgdGhlIG5leHQgbW9udGgKPiB0byByZXNvbHZlIHRob3NlIGlzc3Vl
cy4KClBhcmsgb2ZmZXJlZCB0byBoZWxwIHdpdGggYSBuZXcgdmVyc2lvbiwgYW5kIHRoZSBTYW1z
dW5nIGd1eXMgYXJlIGdvaW5nCnRocm91Z2ggdGhlaXIgaW50ZXJuYWwgcmV2aWV3IHByb2Nlc3Mg
dG8gd29yayB1cHN0cmVhbSBpdC4gIFJlbWVtYmVyCml0IGlzIHRoZWlyIGNvZGViYXNlIGluIGVh
Y2ggb2YgdGhlIHZhcmlhbnRzIGhlcmUuICBXaGlsZSBpdCBpcyBmaW5lCmlmIHdlIHRha2Ugc29t
ZSBjb2RlIHRoYXQgaGFzIGJlZW4gYWJhbmRvbmVkIGJ5IHRoZSBvcmlnaW5hbCBkZXZlbG9wZXJz
CmFuZCBzdGlsbCBtZXJnZSBpdCB3aXRoIGhlbHBpbmcgaGFuZHMgSSB0aGluayBpdCBpcyB2ZXJ5
IHJ1ZGUgdG8gbm90CmF0IGxlYXN0IHdhaXQgZm9yIHRoZW0gdG8gZ2V0IHRoZWlyIGFjdCBvZiB3
b3JraW5nIHdpdGggdGhlaXIgY29ycG9yYXRlCm92ZXJsb3JkcyB0b2dldGhlciBmaXJzdC4gIEl0
IGlzbid0IGxpa2Ugd2UndmUgYmVlbiB3YWl0aW5nIGZvcmV2ZXIKZm9yIGFuIGV4ZmF0IGRyaXZl
ciAtIHRoZSBwYXRlbnQgZ3JhbnQgaGFzIGJlZW4gZXh0cmVtZWx5IHJlY2VudCwgYW5kCnRoaXMg
d2hvbGUgdGhpbmcganVzdCBzZWVtcyBsaWtlIGEgcHVibGljaXR5IHN0dW50IHRvIGJlIGhvbmVz
dC4gIEdpdmUKdGhlbSBhIGNvdXBsZSB3ZWVrcyB0byBzb3J0IHRoZWlyIHN0dWZmIG91dCBhbmQg
dGhlbiB3ZSBjYW4gZGVjaWRlCmhvdyB0byBwcm9jZWVkLiAgSSBmb3Igb25lIHdvdWxkIGRlZmlu
dGl2ZWx5IHByZWZlciB0byBoYXZlIGNvZGUKbWFpbnRhaW5lZCBieSB0aGUgb3JpZ2luYWwgbWFp
bnRhaW5lcnMgaWYgcG9zc2libGUuICBBbmQgbm90IGhhdmUKdGhlbSBoaW5kZXJlZCBieSB0aGUg
c3RhZ2luZyBwcm9jZXNzIHRvIHdvcmsgb24gdGhlaXIgb3duIGNvZGUuCgo+IFRvIGdldCBiYWNr
IHRvIHRoZSBtZXRhLXByb2JsZW0gaGVyZSwgd2UgbmVlZCBhIGNvbW1vbiAidmZzL2ZpbGVzeXN0
ZW0iCj4gdHJlZSBzb21ld2hlcmUgd2l0aCByZXZpZXdlcnMuICBJJ20gZ2xhZCB0byBzZXQgdXAg
dGhlIHRyZWUgYW5kIGhhbmRsZQo+IHBhdGNoZXMsIGJ1dCBJIGFtIG5vdCBhIHZmcyBleHBlcnQg
YnkgYW55IG1lYW5zIChJIG9ubHkgdW5kZXJzdGFuZCB0aGUKPiB2aXJ0dWFsIGhhbGYsIG5vdCB0
aGUgYmFja2luZyBoYWxmKSwgc28gSSBjYW4ndCBiZSB0aGUgb25seSBvbmUgdG8gZG8KPiByZXZp
ZXdzLiAgRG8geW91IGtub3cgb2YgYW55b25lIHRoYXQgd2UgY2FuIGRyYWcgaW4gYXMgcmV2aWV3
ZXJzIHRvIGhlbHAKPiBtYWtlIGl0IGVhc2llciBmb3IgbmV3IGZpbGVzeXN0ZW1zIHRvIGdldCBy
ZXZpZXdzIGFzIHdlbGwgYXMgZXhpc3RpbmcKPiBvbmVzIHRvIGhhdmUgdGhlaXIgcGF0Y2hlcyBj
b2xsZWN0ZWQgYW5kIGZvcndhcmRlZCBvbiB0byBMaW51cyBhdCB0aGUKPiBwcm9wZXIgdGltZXM/
CgpGb2xsb3dpbmcgaG93IHN0YWdpbmcgd29ya3MgYW5kIGl0cyBhcmNhbmUgcnVsZXMgSSBkb24n
dCB3YW50IGl0IHRvIGJlCmFueXdoZXJlIG5lYXIgZnMgY29kZS4gIEFuZCBzZXJpb3VzbHksIGl0
IGlzIG5vdCBsaWtlIHdlIG5lZWQgb25lCm1hZ2ljIHRyZWUgdG8gZGVhbCB3aXRoIGFsbCBmaWxl
IHN5c3RlbXMuICBUaGUgd2hvbGUgcG9pbnQgb2YgZ2l0IGlzCnRoYXQgcGVvcGxlIGNhbiBzZXR1
cCBhIHRyZWUgdG8gY29sbGFib3JhdGUgd2hlcmV2ZXIgdGhleSB3YW50IGlmIHlvdQpqdXN0IGZp
bmQgcGVvcGxlIHRvIHdvcmsgb24gaXQuICBBbmQgd2UndmUgaGFkIHRvbnMgb2Ygc3VjY2Vzc2Z1
bApkcml2ZXJzIGFuZCBmaWxlc3lzdGVtcyB0aGF0IHdvcmtlZCB0aGF0IHdheS4gIEFuZCBhdCBs
ZWFzdCB0aGUgb25lcwpJJ3ZlIGZvbGxvd2VkIHNlZW0gYSBsb3QgbW9yZSBwcm9kdWN0aXZlIHRo
YW4gdGhlIHN0YWdpbmcgc2hvdyB0aGF0CmlzIGJh0ZVlZCBhcm91bmQgY29kaW5nIHN0eWxlIGNs
ZWFudXAgbWljcm9wYXRjaGVzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
