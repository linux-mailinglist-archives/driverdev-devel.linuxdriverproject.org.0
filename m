Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FE2424F0E
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 10:19:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2385960F76;
	Thu,  7 Oct 2021 08:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rfmeoMMpLxZ7; Thu,  7 Oct 2021 08:19:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27A4E60769;
	Thu,  7 Oct 2021 08:19:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 737951BF477
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id 704C283299
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id acNtq7OKSZnj for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 08:19:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id 80D7383252
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 08:19:18 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633594758; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=LSxmq3rMA8NZvaYFl3dGhnm4Cba8lTjnSx3hcXv6438=;
 b=A7FGVaqpYtJNUlC65VO/YW8tbhNOLbcVI9YY737epC+mHrn0n/6hlkVukvxti3IJo71B6Fb8
 Ba3rFw7QNFpR1sjDGTNa7p7RmwYz5kwdpiRSExoOUdj/QcKaU7k+uTZe2S+yXZpvhQmO2mUP
 voDOKVB4mwF+9CO9nPPeyiHdXXo=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 615ead858ea00a941f1353bc (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 08:19:17
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 39362C43460; Thu,  7 Oct 2021 08:19:17 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 65074C4338F;
 Thu,  7 Oct 2021 08:19:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 65074C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <2174509.SLDT7moDbM@pc-42> <20211001160832.ozxc7bhlwlmjeqbo@pali>
 <19961646.Mslci0rqIs@pc-42>
Date: Thu, 07 Oct 2021 11:19:10 +0300
In-Reply-To: <19961646.Mslci0rqIs@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Fri, 01 Oct 2021 18:46:44 +0200")
Message-ID: <87lf35ckn5.fsf@codeaurora.org>
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
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
 linux-mmc@vger.kernel.org, Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIEZyaWRheSAxIE9jdG9iZXIgMjAyMSAxODowODozMiBDRVNUIFBhbGkgUm9ow6FyIHdyb3Rl
Ogo+PiBPbiBGcmlkYXkgMDEgT2N0b2JlciAyMDIxIDE3OjA5OjQxIErDqXLDtG1lIFBvdWlsbGVy
IHdyb3RlOgo+PiA+IE9uIEZyaWRheSAxIE9jdG9iZXIgMjAyMSAxMzo1ODozOCBDRVNUIEthbGxl
IFZhbG8gd3JvdGU6Cj4+ID4gPiBKZXJvbWUgUG91aWxsZXIgPEplcm9tZS5Qb3VpbGxlckBzaWxh
YnMuY29tPiB3cml0ZXM6Cj4+ID4gPgo+PiA+ID4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8
amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4+ID4gPiA+Cj4+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KPj4gPiA+
Cj4+ID4gPiBbLi4uXQo+PiA+ID4KPj4gPiA+ID4gK3N0YXRpYyBpbnQgZ2V0X2Zpcm13YXJlKHN0
cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIga2V5c2V0X2NoaXAsCj4+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKipmdywgaW50ICpmaWxlX29mZnNldCkK
Pj4gPiA+ID4gK3sKPj4gPiA+ID4gKyAgICAgaW50IGtleXNldF9maWxlOwo+PiA+ID4gPiArICAg
ICBjaGFyIGZpbGVuYW1lWzI1Nl07Cj4+ID4gPiA+ICsgICAgIGNvbnN0IGNoYXIgKmRhdGE7Cj4+
ID4gPiA+ICsgICAgIGludCByZXQ7Cj4+ID4gPiA+ICsKPj4gPiA+ID4gKyAgICAgc25wcmludGYo
ZmlsZW5hbWUsIHNpemVvZihmaWxlbmFtZSksICIlc18lMDJYLnNlYyIsCj4+ID4gPiA+ICsgICAg
ICAgICAgICAgIHdkZXYtPnBkYXRhLmZpbGVfZncsIGtleXNldF9jaGlwKTsKPj4gPiA+ID4gKyAg
ICAgcmV0ID0gZmlybXdhcmVfcmVxdWVzdF9ub3dhcm4oZncsIGZpbGVuYW1lLCB3ZGV2LT5kZXYp
Owo+PiA+ID4gPiArICAgICBpZiAocmV0KSB7Cj4+ID4gPiA+ICsgICAgICAgICAgICAgZGV2X2lu
Zm8od2Rldi0+ZGV2LCAiY2FuJ3QgbG9hZCAlcywgZmFsbGluZyBiYWNrIHRvICVzLnNlY1xuIiwK
Pj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICBmaWxlbmFtZSwgd2Rldi0+cGRhdGEuZmls
ZV9mdyk7Cj4+ID4gPiA+ICsgICAgICAgICAgICAgc25wcmludGYoZmlsZW5hbWUsIHNpemVvZihm
aWxlbmFtZSksICIlcy5zZWMiLAo+PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgIHdkZXYt
PnBkYXRhLmZpbGVfZncpOwo+PiA+ID4gPiArICAgICAgICAgICAgIHJldCA9IHJlcXVlc3RfZmly
bXdhcmUoZncsIGZpbGVuYW1lLCB3ZGV2LT5kZXYpOwo+PiA+ID4gPiArICAgICAgICAgICAgIGlm
IChyZXQpIHsKPj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIod2Rldi0+ZGV2
LCAiY2FuJ3QgbG9hZCAlc1xuIiwgZmlsZW5hbWUpOwo+PiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgKmZ3ID0gTlVMTDsKPj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7Cj4+ID4gPiA+ICsgICAgICAgICAgICAgfQo+PiA+ID4gPiArICAgICB9Cj4+ID4gPgo+PiA+
ID4gSG93IGlzIHRoaXMgZmlybXdhcmUgZmlsZSBsb2FkaW5nIHN1cHBvc2VkIHRvIHdvcms/IElm
IEknbSByZWFkaW5nIHRoZQo+PiA+ID4gY29kZSByaWdodCwgdGhlIGRyaXZlciB0cmllcyB0byBs
b2FkIGZpbGUgIndmbV93ZjIwMF8/Py5zZWMiIGJ1dCBpbgo+PiA+ID4gbGludXgtZmlybXdhcmUg
dGhlIGZpbGUgaXMgc2lsYWJzL3dmbV93ZjIwMF9DMC5zZWM6Cj4+ID4gPgo+PiA+ID4gaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZmlybXdhcmUvbGludXgt
ZmlybXdhcmUuZ2l0L3RyZWUvc2lsYWJzCj4+ID4gPgo+PiA+ID4gVGhhdCBjYW4ndCB3b3JrIGF1
dG9tYXRpY2FsbHksIHVubGVzcyBJJ20gbWlzc2luZyBzb21ldGhpbmcgb2YgY291cnNlLgo+PiA+
Cj4+ID4gVGhlIGZpcm13YXJlIGFyZSBzaWduZWQuICJDMCIgaXMgdGhlIGtleSB1c2VkIHRvIHNp
Z24gdGhpcyBmaXJtd2FyZS4gVGhpcwo+PiA+IGtleSBtdXN0IG1hdGNoIHdpdGggdGhlIGtleSBi
dXJuZWQgaW50byB0aGUgY2hpcC4gRm9ydHVuYXRlbHksIHRoZSBkcml2ZXIKPj4gPiBpcyBhYmxl
IHRvIHJlYWQgdGhlIGtleSBhY2NlcHRlZCBieSB0aGUgY2hpcCBhbmQgYXV0b21hdGljYWxseSBj
aG9vc2UgdGhlCj4+ID4gcmlnaHQgZmlybXdhcmUuCj4+ID4KPj4gPiBXZSBjb3VsZCBpbWFnaW5l
IHRvIGFkZCBhIGF0dHJpYnV0ZSBpbiB0aGUgRFQgdG8gY2hvb3NlIHRoZSBmaXJtd2FyZSB0bwo+
PiA+IGxvYWQuIEhvd2V2ZXIsIGl0IHdvdWxkIGJlIGEgcGl0eSB0byBoYXZlIHRvIHNwZWNpZnkg
aXQgbWFudWFsbHkgd2hlcmVhcwo+PiA+IHRoZSBkcml2ZXIgaXMgYWJsZSB0byBkZXRlY3QgaXQg
YXV0b21hdGljYWxseS4KPj4gPgo+PiA+IEN1cnJlbnRseSwgdGhlIG9ubHkgcG9zc2libGUga2V5
IGlzIEMwLiBIb3dldmVyLCBpdCBleGlzdHMgc29tZSBpbnRlcm5hbAo+PiA+IHBhcnRzIHdpdGgg
b3RoZXIga2V5cy4gSW4gYWRkaXRpb24sIGl0IGlzIHRoZW9yZXRpY2FsbHkgcG9zc2libGUgdG8g
YXNrCj4+ID4gdG8gU2lsYWJzIHRvIGJ1cm4gcGFydHMgd2l0aCBhIHNwZWNpZmljIGtleSBpbiBv
cmRlciB0byBpbXByb3ZlIHNlY3VyaXR5Cj4+ID4gb2YgYSBwcm9kdWN0Lgo+PiA+Cj4+ID4gT2J2
aW91c2x5LCBmb3Igbm93LCB0aGlzIGZlYXR1cmUgbWFpbmx5IGV4aXN0cyBmb3IgdGhlIFNpbGFi
cyBmaXJtd2FyZQo+PiA+IGRldmVsb3BlcnMgd2hvIGhhdmUgdG8gd29yayB3aXRoIG90aGVyIGtl
eXMuCj4+ID4KPj4gPiA+IEFsc28gSSB3b3VsZCBwcmVmZXIgdG8gdXNlIGRpcmVjdG9yeSBuYW1l
IGFzIHRoZSBkcml2ZXIgbmFtZSB3ZngsIGJ1dCBJCj4+ID4gPiBndWVzcyBzaWxhYnMgaXMgYWxz
byBkb2FibGUuCj4+ID4KPj4gPiBJIGhhdmUgbm8gb3Bpbmlvbi4KPj4gPgo+PiA+Cj4+ID4gPiBB
bHNvIEknbSBub3Qgc2VlaW5nIHRoZSBQRFMgZmlsZXMgaW4gbGludXgtZmlybXdhcmUuIFRoZSBp
ZGVhIGlzIHRoYXQKPj4gPiA+IHdoZW4gdXNlciBpbnN0YWxscyBhbiB1cHN0cmVhbSBrZXJuZWwg
YW5kIHRoZSBsaW51eC1maXJtd2FyZSBldmVyeXRoaW5nCj4+ID4gPiB3aWxsIHdvcmsgYXV0b21h
dGljYWxseSwgd2l0aG91dCBhbnkgbWFudWFsIGZpbGUgaW5zdGFsbGF0aW9ucy4KPj4gPgo+PiA+
IFdGMjAwIGlzIGp1c3QgYSBjaGlwLiBTb21lb25lIGhhcyB0byBkZXNpZ24gYW4gYW50ZW5uYSBi
ZWZvcmUgdG8gYmUgYWJsZQo+PiA+IHRvIHVzZS4KPj4gPgo+PiA+IEhvd2V2ZXIsIHdlIGhhdmUg
ZXZhbHVhdGlvbiBib2FyZHMgdGhhdCBoYXZlIGFudGVubmFzIGFuZCBjb3JyZXNwb25kaW5nCj4+
ID4gUERTIGZpbGVzWzFdLiBNYXliZSBsaW51eC1maXJtd2FyZSBzaG91bGQgaW5jbHVkZSB0aGUg
UERTIGZvciB0aGVzZSBib2FyZHMKPj4gCj4+IFNvIGNoaXAgdmVuZG9yIHByb3ZpZGVzIGZpcm13
YXJlIGFuZCBjYXJkIHZlbmRvciBwcm92aWRlcyBQRFMgZmlsZXMuCj4KPiBFeGFjdGx5Lgo+Cj4+
IEluCj4+IG15IG9waW5pb24gYWxsIGZpbGVzIHNob3VsZCBnbyBpbnRvIGxpbnV4LWZpcm13YXJl
IHJlcG9zaXRvcnkuIElmIFNpbGFicwo+PiBoYXMgUERTIGZpbGVzIGZvciBpdHMgZGV2ZWwgYm9h
cmRzICh3aGljaCBhcmUgYmFzaWNhbGx5IGNhcmRzKSB0aGVuIEkKPj4gdGhpbmsgdGhlc2UgZmls
ZXMgc2hvdWxkIGdvIGFsc28gaW50byBsaW51eC1maXJtd2FyZSByZXBvc2l0b3J5Lgo+PiAKPj4g
QW5kIGJhc2VkIG9uIHNvbWUgcGFyYW1ldGVyLCBkcml2ZXIgc2hvdWxkIGxvYWQgY29ycmVjdCBQ
RFMgZmlsZS4gU2VlbXMKPj4gbGlrZSBEVCBjYW4gYmUgYSBwbGFjZSB3aGVyZSB0byBwdXQgc29t
ZXRoaW5nIHdoaWNoIGluZGljYXRlcyB3aGljaCBQRFMKPj4gZmlsZSBzaG91bGQgYmUgdXNlZC4K
Pj4gCj4+IEJ1dCBzaG91bGQgYmUgaW4gRFQgZGlyZWN0bHkgbmFtZSBvZiBQRFMgZmlsZT8gT3Ig
c2hvdWxkIGJlIGluIERUIGp1c3QKPj4gYWRkaXRpb25hbCBjb21wYXRpYmxlIHN0cmluZyB3aXRo
IGNhcmQgdmVuZG9yIG5hbWUgYW5kIHRoZW4gaW4gZHJpdmVyCj4+IGl0c2VsZiBzaG91bGQgYmUg
bWFwcGluZyB0YWJsZSBmcm9tIGNvbXBhdGlibGUgc3RyaW5nIHRvIGZpbGVuYW1lPyBJIGRvCj4+
IG5vdCBrbm93IHdoYXQgaXMgYmV0dGVyLgo+Cj4gVGhlIERUIGFscmVhZHkgYWNjZXB0cyB0aGUg
YXR0cmlidXRlIHNpbGFicyxhbnRlbm5hLWNvbmZpZy1maWxlIChzZWUKPiBwYXRjaCAjMikuCj4K
PiBJIHRoaW5rIHRoYXQgbGludXgtZmlybXdhcmUgcmVwb3NpdG9yeSB3aWxsIHJlamVjdCB0aGUg
cGRzIGZpbGVzIGlmCj4gbm8gZHJpdmVyIGluIHRoZSBrZXJuZWwgZGlyZWN0bHkgcG9pbnQgdG8g
aXQuIEVsc2UgaG93IHRvIGRldGVjdAo+IG9ycGhhbnM/CgpUaGlzIChsaW51eC1maXJtd2FyZSBy
ZWplY3RpbmcgZmlsZXMpIGlzIG5ld3MgdG8gbWUsIGRvIHlvdSBoYXZlIGFueQpwb2ludGVycz8K
Cj4gU28sIEkgdGhpbmsgaXQgaXMgc2xpZ2h0bHkgYmV0dGVyIHRvIHVzZSBhIG1hcHBpbmcgdGFi
bGUuCgpOb3QgZm9sbG93aW5nIHlvdSBoZXJlLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtp
Lmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
