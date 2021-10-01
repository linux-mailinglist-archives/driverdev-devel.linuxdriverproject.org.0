Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1FF41F1EC
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 18:13:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2A9E61504;
	Fri,  1 Oct 2021 16:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hCCIFppzRLqX; Fri,  1 Oct 2021 16:13:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3535614E9;
	Fri,  1 Oct 2021 16:13:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BD9E1BF40E
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 16:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57680407DD
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 16:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzKR-p9OMZb9 for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 16:13:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 922B5407D4
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 16:13:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0C46619E7;
 Fri,  1 Oct 2021 16:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633104799;
 bh=mMEfl2DznOLS6As2JE8WI2CMTaAzNlFeLwPjlOMFh+M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qtGKYpJVkWBpyfyIyf10q2LSp6HasZDVzScNFobfxXXMug+wL9eZareCzYk+rZb9q
 Bp31Pex6eOAkyzHPX38/nYND0zavBfBuQLf5X9pR5y+icTLrveqPNhRfrkZb8ZooIy
 /GTrNaYJiAxzqVgrk2dLPgxp1qkD1n+MiEWkz86PNnnm1Nod5545kqh8TzCw1pT547
 wyIwuckD3T+tChy8asdoEfjyBw0Eu6Q/JJEE+KZNz+n9SrB93B+iHQWSLLXQYcPJzj
 SL6prBx77BEXuIGdSRsDzZusFqGJFTqCSVyMR7/Pi4GIUPXm88fjSm0HJ1kcj8vGLD
 kcEeoJ2NLE7tQ==
Received: by pali.im (Postfix)
 id 4384A821; Fri,  1 Oct 2021 18:13:16 +0200 (CEST)
Date: Fri, 1 Oct 2021 18:13:16 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 13/24] wfx: add hif_tx*.c/hif_tx*.h
Message-ID: <20211001161316.w3cwsigacznjbowl@pali>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-14-Jerome.Pouiller@silabs.com>
 <87fstlkr1m.fsf@codeaurora.org> <2873071.CAOYYqaKbK@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2873071.CAOYYqaKbK@pc-42>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpZGF5IDAxIE9jdG9iZXIgMjAyMSAxNzoxNzo1MiBKw6lyw7RtZSBQb3VpbGxlciB3cm90
ZToKPiBPbiBGcmlkYXkgMSBPY3RvYmVyIDIwMjEgMTE6NTU6MzMgQ0VTVCBLYWxsZSBWYWxvIHdy
b3RlOgo+ID4gQ0FVVElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBvZiB0
aGUgb3JnYW5pemF0aW9uLiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1
bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNh
ZmUuCj4gPiAKPiA+IAo+ID4gSmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJz
LmNvbT4gd3JpdGVzOgo+ID4gCj4gPiA+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUu
cG91aWxsZXJAc2lsYWJzLmNvbT4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUg
UG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+ID4gCj4gPiBbLi4uXQo+ID4g
Cj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2ls
YWJzL3dmeC9oaWZfdHhfbWliLmgKPiA+ID4gQEAgLTAsMCArMSw0OSBAQAo+ID4gPiArLyogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwo+ID4gPiArLyoKPiA+ID4gKyAq
IEltcGxlbWVudGF0aW9uIG9mIHRoZSBob3N0LXRvLWNoaXAgTUlCcyBvZiB0aGUgaGFyZHdhcmUg
QVBJLgo+ID4gPiArICoKPiA+ID4gKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDIwLCBTaWxpY29u
IExhYm9yYXRvcmllcywgSW5jLgo+ID4gPiArICogQ29weXJpZ2h0IChjKSAyMDEwLCBTVC1Fcmlj
c3Nvbgo+ID4gPiArICogQ29weXJpZ2h0IChDKSAyMDEwLCBTVC1Fcmljc3NvbiBTQQo+ID4gPiAr
ICovCj4gPiA+ICsjaWZuZGVmIFdGWF9ISUZfVFhfTUlCX0gKPiA+ID4gKyNkZWZpbmUgV0ZYX0hJ
Rl9UWF9NSUJfSAo+ID4gPiArCj4gPiA+ICtzdHJ1Y3Qgd2Z4X3ZpZjsKPiA+ID4gK3N0cnVjdCBz
a19idWZmOwo+ID4gPiArCj4gPiA+ICtpbnQgaGlmX3NldF9vdXRwdXRfcG93ZXIoc3RydWN0IHdm
eF92aWYgKnd2aWYsIGludCB2YWwpOwo+ID4gPiAraW50IGhpZl9zZXRfYmVhY29uX3dha2V1cF9w
ZXJpb2Qoc3RydWN0IHdmeF92aWYgKnd2aWYsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1bnNpZ25lZCBpbnQgZHRpbV9pbnRlcnZhbCwKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBsaXN0ZW5faW50ZXJ2YWwpOwo+ID4gPiAraW50
IGhpZl9zZXRfcmNwaV9yc3NpX3RocmVzaG9sZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHJzc2lfdGhvbGQsIGludCByc3NpX2h5
c3QpOwo+ID4gPiAraW50IGhpZl9nZXRfY291bnRlcnNfdGFibGUoc3RydWN0IHdmeF9kZXYgKndk
ZXYsIGludCB2aWZfaWQsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaGlm
X21pYl9leHRlbmRlZF9jb3VudF90YWJsZSAqYXJnKTsKPiA+ID4gK2ludCBoaWZfc2V0X21hY2Fk
ZHIoc3RydWN0IHdmeF92aWYgKnd2aWYsIHU4ICptYWMpOwo+ID4gPiAraW50IGhpZl9zZXRfcnhf
ZmlsdGVyKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAo+ID4gPiArICAgICAgICAgICAgICAgICAgIGJv
b2wgZmlsdGVyX2Jzc2lkLCBib29sIGZ3ZF9wcm9iZV9yZXEpOwo+ID4gPiAraW50IGhpZl9zZXRf
YmVhY29uX2ZpbHRlcl90YWJsZShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgaW50IHRibF9sZW4sCj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBoaWZfaWVfdGFi
bGVfZW50cnkgKnRibCk7Cj4gPiA+ICtpbnQgaGlmX2JlYWNvbl9maWx0ZXJfY29udHJvbChzdHJ1
Y3Qgd2Z4X3ZpZiAqd3ZpZiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBl
bmFibGUsIGludCBiZWFjb25fY291bnQpOwo+ID4gPiAraW50IGhpZl9zZXRfb3BlcmF0aW9uYWxf
bW9kZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgZW51bSBoaWZfb3BfcG93ZXJfbW9kZSBtb2RlKTsK
PiA+ID4gK2ludCBoaWZfc2V0X3RlbXBsYXRlX2ZyYW1lKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBz
dHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgdTggZnJh
bWVfdHlwZSwgaW50IGluaXRfcmF0ZSk7Cj4gPiA+ICtpbnQgaGlmX3NldF9tZnAoc3RydWN0IHdm
eF92aWYgKnd2aWYsIGJvb2wgY2FwYWJsZSwgYm9vbCByZXF1aXJlZCk7Cj4gPiA+ICtpbnQgaGlm
X3NldF9ibG9ja19hY2tfcG9saWN5KHN0cnVjdCB3ZnhfdmlmICp3dmlmLAo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICB1OCB0eF90aWRfcG9saWN5LCB1OCByeF90aWRfcG9saWN5KTsK
PiA+ID4gK2ludCBoaWZfc2V0X2Fzc29jaWF0aW9uX21vZGUoc3RydWN0IHdmeF92aWYgKnd2aWYs
IGludCBhbXBkdV9kZW5zaXR5LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICBib29s
IGdyZWVuZmllbGQsIGJvb2wgc2hvcnRfcHJlYW1ibGUpOwo+ID4gPiAraW50IGhpZl9zZXRfdHhf
cmF0ZV9yZXRyeV9wb2xpY3koc3RydWN0IHdmeF92aWYgKnd2aWYsCj4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpbnQgcG9saWN5X2luZGV4LCB1OCAqcmF0ZXMpOwo+ID4gPiAr
aW50IGhpZl9rZWVwX2FsaXZlX3BlcmlvZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgaW50IHBlcmlv
ZCk7Cj4gPiA+ICtpbnQgaGlmX3NldF9hcnBfaXB2NF9maWx0ZXIoc3RydWN0IHdmeF92aWYgKnd2
aWYsIGludCBpZHgsIF9fYmUzMiAqYWRkcik7Cj4gPiA+ICtpbnQgaGlmX3VzZV9tdWx0aV90eF9j
b25mKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBib29sIGVuYWJsZSk7Cj4gPiA+ICtpbnQgaGlmX3Nl
dF91YXBzZF9pbmZvKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCB1bnNpZ25lZCBsb25nIHZhbCk7Cj4g
PiA+ICtpbnQgaGlmX2VycF91c2VfcHJvdGVjdGlvbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9v
bCBlbmFibGUpOwo+ID4gPiAraW50IGhpZl9zbG90X3RpbWUoc3RydWN0IHdmeF92aWYgKnd2aWYs
IGludCB2YWwpOwo+ID4gPiAraW50IGhpZl93ZXBfZGVmYXVsdF9rZXlfaWQoc3RydWN0IHdmeF92
aWYgKnd2aWYsIGludCB2YWwpOwo+ID4gPiAraW50IGhpZl9ydHNfdGhyZXNob2xkKHN0cnVjdCB3
ZnhfdmlmICp3dmlmLCBpbnQgdmFsKTsKPiA+IAo+ID4gIndmeF8iIHByZWZpeCBtaXNzaW5nIGZy
b20gcXVpdGUgYSBmZXcgZnVuY3Rpb25zLgo+IAo+IEkgZGlkbid0IGtub3cgaXQgd2FzIG1hbmRh
dG9yeSB0byBwcmVmaXggYWxsIHRoZSBmdW5jdGlvbnMgd2l0aCB0aGUKPiBzYW1lIHByZWZpeC4g
V2l0aCB0aGUgcnVsZSBvZiA4MC1jb2x1bW5zLCBJIHRoaW5rIEkgd2lsbCBoYXZlIHRvIGNoYW5n
ZQo+IGEgYnVuY2ggb2YgY29kZSA6KCAuCgpJIHRoaW5rIHRoYXQgbmV3IGRyaXZlcnMgY2FuIHVz
ZSAxMDAgY2hhcmFjdGVycyBwZXIgbGluZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
