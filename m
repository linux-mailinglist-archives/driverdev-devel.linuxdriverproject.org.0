Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754EB424EBD
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 10:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8313403A2;
	Thu,  7 Oct 2021 08:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9rI4RrRygJ_J; Thu,  7 Oct 2021 08:09:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40C5E400F6;
	Thu,  7 Oct 2021 08:09:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54EEB1BF477
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id 441FB40548
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:09:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id XwkJLF6sN-aJ for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 08:09:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 557D84055A
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 08:09:14 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633594155; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=rymlx8B6bw8yxJ8xBhaQ8zo8wYKa5Xa5SyFLyKfvVOI=;
 b=V7rDUKI87SuRHy6JDPY2DS41mMcQ2YIOo6zHW9wcHMMkGJVf7l4kql3bRsJLkt4EvpqV3ya7
 8sgSoa++UW5mM/OXEr+uAmhh/9bmTUSXHUn5tTszqj/iLYKk4BYl32yyi2N5b0rxZbA/Pewr
 kgYrF9LiJYPNdr4RsbQRa6jeEgk=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 615eab1d003e680efbb131d9 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 08:09:01
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 04931C43617; Thu,  7 Oct 2021 08:09:00 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2FF48C4360D;
 Thu,  7 Oct 2021 08:08:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 2FF48C4360D
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-11-Jerome.Pouiller@silabs.com>
 <87sfxlj6s1.fsf@codeaurora.org> <2174509.SLDT7moDbM@pc-42>
Date: Thu, 07 Oct 2021 11:08:53 +0300
In-Reply-To: <2174509.SLDT7moDbM@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Fri, 01 Oct 2021 17:09:41 +0200")
Message-ID: <87tuhtcl4a.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIEZyaWRheSAxIE9jdG9iZXIgMjAyMSAxMzo1ODozOCBDRVNUIEthbGxlIFZhbG8gd3JvdGU6
Cj4+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyaXRlczoK
Pj4gCj4+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMu
Y29tPgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPgo+PiAKPj4gWy4uLl0KPj4gCj4+ID4gK3N0YXRpYyBpbnQgZ2V0
X2Zpcm13YXJlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIga2V5c2V0X2NoaXAsCj4+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqKmZ3LCBpbnQgKmZpbGVf
b2Zmc2V0KQo+PiA+ICt7Cj4+ID4gKyAgICAgaW50IGtleXNldF9maWxlOwo+PiA+ICsgICAgIGNo
YXIgZmlsZW5hbWVbMjU2XTsKPj4gPiArICAgICBjb25zdCBjaGFyICpkYXRhOwo+PiA+ICsgICAg
IGludCByZXQ7Cj4+ID4gKwo+PiA+ICsgICAgIHNucHJpbnRmKGZpbGVuYW1lLCBzaXplb2YoZmls
ZW5hbWUpLCAiJXNfJTAyWC5zZWMiLAo+PiA+ICsgICAgICAgICAgICAgIHdkZXYtPnBkYXRhLmZp
bGVfZncsIGtleXNldF9jaGlwKTsKPj4gPiArICAgICByZXQgPSBmaXJtd2FyZV9yZXF1ZXN0X25v
d2FybihmdywgZmlsZW5hbWUsIHdkZXYtPmRldik7Cj4+ID4gKyAgICAgaWYgKHJldCkgewo+PiA+
ICsgICAgICAgICAgICAgZGV2X2luZm8od2Rldi0+ZGV2LCAiY2FuJ3QgbG9hZCAlcywgZmFsbGlu
ZyBiYWNrIHRvICVzLnNlY1xuIiwKPj4gPiArICAgICAgICAgICAgICAgICAgICAgIGZpbGVuYW1l
LCB3ZGV2LT5wZGF0YS5maWxlX2Z3KTsKPj4gPiArICAgICAgICAgICAgIHNucHJpbnRmKGZpbGVu
YW1lLCBzaXplb2YoZmlsZW5hbWUpLCAiJXMuc2VjIiwKPj4gPiArICAgICAgICAgICAgICAgICAg
ICAgIHdkZXYtPnBkYXRhLmZpbGVfZncpOwo+PiA+ICsgICAgICAgICAgICAgcmV0ID0gcmVxdWVz
dF9maXJtd2FyZShmdywgZmlsZW5hbWUsIHdkZXYtPmRldik7Cj4+ID4gKyAgICAgICAgICAgICBp
ZiAocmV0KSB7Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIod2Rldi0+ZGV2LCAi
Y2FuJ3QgbG9hZCAlc1xuIiwgZmlsZW5hbWUpOwo+PiA+ICsgICAgICAgICAgICAgICAgICAgICAq
ZncgPSBOVUxMOwo+PiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+PiA+ICsg
ICAgICAgICAgICAgfQo+PiA+ICsgICAgIH0KPj4gCj4+IEhvdyBpcyB0aGlzIGZpcm13YXJlIGZp
bGUgbG9hZGluZyBzdXBwb3NlZCB0byB3b3JrPyBJZiBJJ20gcmVhZGluZyB0aGUKPj4gY29kZSBy
aWdodCwgdGhlIGRyaXZlciB0cmllcyB0byBsb2FkIGZpbGUgIndmbV93ZjIwMF8/Py5zZWMiIGJ1
dCBpbgo+PiBsaW51eC1maXJtd2FyZSB0aGUgZmlsZSBpcyBzaWxhYnMvd2ZtX3dmMjAwX0MwLnNl
YzoKPj4gCj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlLmdpdC90cmVlL3NpbGFicwo+PiAKPj4gVGhhdCBjYW4n
dCB3b3JrIGF1dG9tYXRpY2FsbHksIHVubGVzcyBJJ20gbWlzc2luZyBzb21ldGhpbmcgb2YgY291
cnNlLgo+Cj4gVGhlIGZpcm13YXJlIGFyZSBzaWduZWQuICJDMCIgaXMgdGhlIGtleSB1c2VkIHRv
IHNpZ24gdGhpcyBmaXJtd2FyZS4gVGhpcwo+IGtleSBtdXN0IG1hdGNoIHdpdGggdGhlIGtleSBi
dXJuZWQgaW50byB0aGUgY2hpcC4gRm9ydHVuYXRlbHksIHRoZSBkcml2ZXIKPiBpcyBhYmxlIHRv
IHJlYWQgdGhlIGtleSBhY2NlcHRlZCBieSB0aGUgY2hpcCBhbmQgYXV0b21hdGljYWxseSBjaG9v
c2UgdGhlCj4gcmlnaHQgZmlybXdhcmUuCj4KPiBXZSBjb3VsZCBpbWFnaW5lIHRvIGFkZCBhIGF0
dHJpYnV0ZSBpbiB0aGUgRFQgdG8gY2hvb3NlIHRoZSBmaXJtd2FyZSB0bwo+IGxvYWQuIEhvd2V2
ZXIsIGl0IHdvdWxkIGJlIGEgcGl0eSB0byBoYXZlIHRvIHNwZWNpZnkgaXQgbWFudWFsbHkgd2hl
cmVhcwo+IHRoZSBkcml2ZXIgaXMgYWJsZSB0byBkZXRlY3QgaXQgYXV0b21hdGljYWxseS4KPgo+
IEN1cnJlbnRseSwgdGhlIG9ubHkgcG9zc2libGUga2V5IGlzIEMwLiBIb3dldmVyLCBpdCBleGlz
dHMgc29tZSBpbnRlcm5hbAo+IHBhcnRzIHdpdGggb3RoZXIga2V5cy4gSW4gYWRkaXRpb24sIGl0
IGlzIHRoZW9yZXRpY2FsbHkgcG9zc2libGUgdG8gYXNrCj4gdG8gU2lsYWJzIHRvIGJ1cm4gcGFy
dHMgd2l0aCBhIHNwZWNpZmljIGtleSBpbiBvcmRlciB0byBpbXByb3ZlIHNlY3VyaXR5Cj4gb2Yg
YSBwcm9kdWN0LiAKPgo+IE9idmlvdXNseSwgZm9yIG5vdywgdGhpcyBmZWF0dXJlIG1haW5seSBl
eGlzdHMgZm9yIHRoZSBTaWxhYnMgZmlybXdhcmUKPiBkZXZlbG9wZXJzIHdobyBoYXZlIHRvIHdv
cmsgd2l0aCBvdGhlciBrZXlzLgoKTXkgcG9pbnQgYWJvdmUgd2FzIGFib3V0IHRoZSBkaXJlY3Rv
cnkgInNpbGFicyIuIElmIEkgcmVhZCB0aGUgY29kZQpjb3JyZWN0bHksIHdmeCBkcml2ZXIgdHJp
ZXMgdG8gbG9hZCAiZm9vLmJpbiIgYnV0IGluIHRoZSBsaW51eC1maXJtd2FyZQpmaWxlIGlzICJz
aWxhYnMvZm9vLmJpbiIuIFNvIHRoZSBzaG91bGQgYWxzbyBpbmNsdWRlIGRpcmVjdG9yeSBuYW1l
IGluCnRoZSByZXF1ZXN0IGFuZCB1c2UgInNpbGFicy9mb28uYmluIi4KCj4+IEFsc28gSSB3b3Vs
ZCBwcmVmZXIgdG8gdXNlIGRpcmVjdG9yeSBuYW1lIGFzIHRoZSBkcml2ZXIgbmFtZSB3ZngsIGJ1
dCBJCj4+IGd1ZXNzIHNpbGFicyBpcyBhbHNvIGRvYWJsZS4KPgo+IEkgaGF2ZSBubyBvcGluaW9u
Lgo+Cj4KPj4gQWxzbyBJJ20gbm90IHNlZWluZyB0aGUgUERTIGZpbGVzIGluIGxpbnV4LWZpcm13
YXJlLiBUaGUgaWRlYSBpcyB0aGF0Cj4+IHdoZW4gdXNlciBpbnN0YWxscyBhbiB1cHN0cmVhbSBr
ZXJuZWwgYW5kIHRoZSBsaW51eC1maXJtd2FyZSBldmVyeXRoaW5nCj4+IHdpbGwgd29yayBhdXRv
bWF0aWNhbGx5LCB3aXRob3V0IGFueSBtYW51YWwgZmlsZSBpbnN0YWxsYXRpb25zLgo+Cj4gV0Yy
MDAgaXMganVzdCBhIGNoaXAuIFNvbWVvbmUgaGFzIHRvIGRlc2lnbiBhbiBhbnRlbm5hIGJlZm9y
ZSB0byBiZSBhYmxlCj4gdG8gdXNlLgoKRG9lc24ndCB0aGF0IGFwcGx5IHRvIGFsbCB3aXJlbGVz
cyBjaGlwcz8gOikgU29tZSBzdG9yZSB0aGF0IGluZm9ybWF0aW9uCnRvIHRoZSBFRVBST00gaW5z
aWRlIHRoZSBjaGlwLCBvdGhlcnMgc29tZXdoZXJlIG91dHNpZGUgb2YgdGhlIGNoaXAuCgo+IEhv
d2V2ZXIsIHdlIGhhdmUgZXZhbHVhdGlvbiBib2FyZHMgdGhhdCBoYXZlIGFudGVubmFzIGFuZCBj
b3JyZXNwb25kaW5nCj4gUERTIGZpbGVzWzFdLiBNYXliZSBsaW51eC1maXJtd2FyZSBzaG91bGQg
aW5jbHVkZSB0aGUgUERTIGZvciB0aGVzZSBib2FyZHMKPiBhbmQgdGhlIERUIHNob3VsZCBjb250
YWlucyB0aGUgbmFtZSBvZiB0aGUgZGVzaWduLiBlZzoKPgo+ICAgICBjb21wYXRpYmxlID0gInNp
bGFicyxicmQ0MDAxYSIsICJzaWxhYnMsd2YyMDAiOwo+Cj4gU28gdGhlIGRyaXZlciB3aWxsIGtu
b3cgd2hpY2ggUERTIGl0IHNob3VsZCB1c2UuIAo+Cj4gSW4gZmFjdCwgSSBhbSBzdXJlIEkgaGFk
IHRoaXMgaWRlYSBpbiBtaW5kIHdoZW4gSSBoYXZlIHN0YXJ0ZWQgdG8gd3JpdGUKPiB0aGUgd2Z4
IGRyaXZlci4gQnV0IHdpdGggdGhlIHRpbWUgSSBoYXZlIGZvcmdvdHRlbiBpdC4gCj4KPiBJZiB5
b3UgYWdyZWUgd2l0aCB0aGF0IGlkZWEsIEkgY2FuIHdvcmsgb24gaXQgbmV4dCB3ZWVrLgoKVGhp
cyBzb3VuZHMgdmVyeSBzaW1pbGFyIHdoYXQgd2UgaGF2ZSBpbiBhdGgxMGssIG9ubHkgdGhhdCBp
biBhdGgxMGsgd2UKY2FsbCB0aGVtIGJvYXJkIGZpbGVzLiBUaGUgd2F5IGF0aDEwayB3b3JrcyBp
cyB0aGF0IHdlIGhhdmUgYm9hcmQtMi5iaW4Kd2hpY2ggaXMgYSBjb250YWluZXIgZmlsZSBjb250
YWluZyBtdWx0aXBsZSBib2FyZCBmaWxlcyBhbmQgdGhlbiBkdXJpbmcKZmlybXdhcmUgaW5pdGlh
bGlzYXRpb24gYXRoMTBrIGF1dG9tYXRpY2FsbHkgY2hvb3NlcyB0aGUgY29ycmVjdCBib2FyZApm
aWxlIGJhc2VkIG9uIHZhcmlvdXMgcGFyYW1ldGVycyBsaWtlIFBDSSBzdWJzeXN0ZW0gaWRzLCBh
biBpZCBzdG9yZWQgaW4KdGhlIGVlcHJvbSwgRGV2aWNlIFRyZWUgZXRjLiBBbmQgdGhlbiBhdGgx
MGsgcHVzaGVzIHRoZSBjaG9zZWQgYm9hcmQKZmlsZSB0byB0aGUgZmlybXdhcmUuCgotLSAKaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpo
dHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRp
b24vc3VibWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
