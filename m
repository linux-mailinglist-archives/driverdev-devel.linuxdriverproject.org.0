Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CB1424EFD
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 10:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0438D841D9;
	Thu,  7 Oct 2021 08:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rv2FI7G_j9wP; Thu,  7 Oct 2021 08:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E80D0840F3;
	Thu,  7 Oct 2021 08:16:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 912301BF477
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id 8D8054091A
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id GuezulY4Z3rN for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 08:16:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 045ED408FE
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 08:16:38 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633594599; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=QtdtID0lZUv7mMN6G3/7I0C2S5hVbgargd1smzYRWEw=;
 b=shnvtRrVDPm6AeJ0ibZxaLvdEw+U5ZiFSlKxWFqA2BvemZE3wSnm7wtbNRocV6m3aZ2Xpya1
 t21ankMfRKJMlYKRlegj55Q1cHmxpETqknGuzg6UptZPoZV4ot2tIruHLd/5TO/oa4ULkafw
 YoXke+ys75nC3YrOc0Rz361kQLI=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 615eace58ea00a941f119bac (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 08:16:37
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7B4E0C43460; Thu,  7 Oct 2021 08:16:37 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2B20BC4338F;
 Thu,  7 Oct 2021 08:16:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 2B20BC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-11-Jerome.Pouiller@silabs.com>
 <87sfxlj6s1.fsf@codeaurora.org> <2174509.SLDT7moDbM@pc-42>
 <20211001160832.ozxc7bhlwlmjeqbo@pali>
Date: Thu, 07 Oct 2021 11:16:29 +0300
In-Reply-To: <20211001160832.ozxc7bhlwlmjeqbo@pali> ("Pali
 \=\?utf-8\?Q\?Roh\?\= \=\?utf-8\?Q\?\=C3\=A1r\=22's\?\= message of
 "Fri, 1 Oct 2021 18:08:32 +0200")
Message-ID: <87pmshckrm.fsf@codeaurora.org>
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
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBGcmlkYXkgMDEgT2N0
b2JlciAyMDIxIDE3OjA5OjQxIErDqXLDtG1lIFBvdWlsbGVyIHdyb3RlOgo+PiBPbiBGcmlkYXkg
MSBPY3RvYmVyIDIwMjEgMTM6NTg6MzggQ0VTVCBLYWxsZSBWYWxvIHdyb3RlOgo+PiA+IEplcm9t
ZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyaXRlczoKPj4gPiAKPj4g
PiA+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4K
Pj4gPiA+Cj4+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBv
dWlsbGVyQHNpbGFicy5jb20+Cj4+ID4gCj4+ID4gWy4uLl0KPj4gPiAKPj4gPiA+ICtzdGF0aWMg
aW50IGdldF9maXJtd2FyZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGtleXNldF9jaGlwLAo+
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqKmZ3LCBp
bnQgKmZpbGVfb2Zmc2V0KQo+PiA+ID4gK3sKPj4gPiA+ICsgICAgIGludCBrZXlzZXRfZmlsZTsK
Pj4gPiA+ICsgICAgIGNoYXIgZmlsZW5hbWVbMjU2XTsKPj4gPiA+ICsgICAgIGNvbnN0IGNoYXIg
KmRhdGE7Cj4+ID4gPiArICAgICBpbnQgcmV0Owo+PiA+ID4gKwo+PiA+ID4gKyAgICAgc25wcmlu
dGYoZmlsZW5hbWUsIHNpemVvZihmaWxlbmFtZSksICIlc18lMDJYLnNlYyIsCj4+ID4gPiArICAg
ICAgICAgICAgICB3ZGV2LT5wZGF0YS5maWxlX2Z3LCBrZXlzZXRfY2hpcCk7Cj4+ID4gPiArICAg
ICByZXQgPSBmaXJtd2FyZV9yZXF1ZXN0X25vd2FybihmdywgZmlsZW5hbWUsIHdkZXYtPmRldik7
Cj4+ID4gPiArICAgICBpZiAocmV0KSB7Cj4+ID4gPiArICAgICAgICAgICAgIGRldl9pbmZvKHdk
ZXYtPmRldiwgImNhbid0IGxvYWQgJXMsIGZhbGxpbmcgYmFjayB0byAlcy5zZWNcbiIsCj4+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgIGZpbGVuYW1lLCB3ZGV2LT5wZGF0YS5maWxlX2Z3KTsK
Pj4gPiA+ICsgICAgICAgICAgICAgc25wcmludGYoZmlsZW5hbWUsIHNpemVvZihmaWxlbmFtZSks
ICIlcy5zZWMiLAo+PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICB3ZGV2LT5wZGF0YS5maWxl
X2Z3KTsKPj4gPiA+ICsgICAgICAgICAgICAgcmV0ID0gcmVxdWVzdF9maXJtd2FyZShmdywgZmls
ZW5hbWUsIHdkZXYtPmRldik7Cj4+ID4gPiArICAgICAgICAgICAgIGlmIChyZXQpIHsKPj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKHdkZXYtPmRldiwgImNhbid0IGxvYWQgJXNc
biIsIGZpbGVuYW1lKTsKPj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAqZncgPSBOVUxMOwo+
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4+ID4gPiArICAgICAgICAg
ICAgIH0KPj4gPiA+ICsgICAgIH0KPj4gPiAKPj4gPiBIb3cgaXMgdGhpcyBmaXJtd2FyZSBmaWxl
IGxvYWRpbmcgc3VwcG9zZWQgdG8gd29yaz8gSWYgSSdtIHJlYWRpbmcgdGhlCj4+ID4gY29kZSBy
aWdodCwgdGhlIGRyaXZlciB0cmllcyB0byBsb2FkIGZpbGUgIndmbV93ZjIwMF8/Py5zZWMiIGJ1
dCBpbgo+PiA+IGxpbnV4LWZpcm13YXJlIHRoZSBmaWxlIGlzIHNpbGFicy93Zm1fd2YyMDBfQzAu
c2VjOgo+PiA+IAo+PiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlLmdpdC90cmVlL3NpbGFicwo+PiA+IAo+PiA+
IFRoYXQgY2FuJ3Qgd29yayBhdXRvbWF0aWNhbGx5LCB1bmxlc3MgSSdtIG1pc3Npbmcgc29tZXRo
aW5nIG9mIGNvdXJzZS4KPj4gCj4+IFRoZSBmaXJtd2FyZSBhcmUgc2lnbmVkLiAiQzAiIGlzIHRo
ZSBrZXkgdXNlZCB0byBzaWduIHRoaXMgZmlybXdhcmUuIFRoaXMKPj4ga2V5IG11c3QgbWF0Y2gg
d2l0aCB0aGUga2V5IGJ1cm5lZCBpbnRvIHRoZSBjaGlwLiBGb3J0dW5hdGVseSwgdGhlIGRyaXZl
cgo+PiBpcyBhYmxlIHRvIHJlYWQgdGhlIGtleSBhY2NlcHRlZCBieSB0aGUgY2hpcCBhbmQgYXV0
b21hdGljYWxseSBjaG9vc2UgdGhlCj4+IHJpZ2h0IGZpcm13YXJlLgo+PiAKPj4gV2UgY291bGQg
aW1hZ2luZSB0byBhZGQgYSBhdHRyaWJ1dGUgaW4gdGhlIERUIHRvIGNob29zZSB0aGUgZmlybXdh
cmUgdG8KPj4gbG9hZC4gSG93ZXZlciwgaXQgd291bGQgYmUgYSBwaXR5IHRvIGhhdmUgdG8gc3Bl
Y2lmeSBpdCBtYW51YWxseSB3aGVyZWFzCj4+IHRoZSBkcml2ZXIgaXMgYWJsZSB0byBkZXRlY3Qg
aXQgYXV0b21hdGljYWxseS4KPj4gCj4+IEN1cnJlbnRseSwgdGhlIG9ubHkgcG9zc2libGUga2V5
IGlzIEMwLiBIb3dldmVyLCBpdCBleGlzdHMgc29tZSBpbnRlcm5hbAo+PiBwYXJ0cyB3aXRoIG90
aGVyIGtleXMuIEluIGFkZGl0aW9uLCBpdCBpcyB0aGVvcmV0aWNhbGx5IHBvc3NpYmxlIHRvIGFz
awo+PiB0byBTaWxhYnMgdG8gYnVybiBwYXJ0cyB3aXRoIGEgc3BlY2lmaWMga2V5IGluIG9yZGVy
IHRvIGltcHJvdmUgc2VjdXJpdHkKPj4gb2YgYSBwcm9kdWN0LiAKPj4gCj4+IE9idmlvdXNseSwg
Zm9yIG5vdywgdGhpcyBmZWF0dXJlIG1haW5seSBleGlzdHMgZm9yIHRoZSBTaWxhYnMgZmlybXdh
cmUKPj4gZGV2ZWxvcGVycyB3aG8gaGF2ZSB0byB3b3JrIHdpdGggb3RoZXIga2V5cy4KPj4gIAo+
PiA+IEFsc28gSSB3b3VsZCBwcmVmZXIgdG8gdXNlIGRpcmVjdG9yeSBuYW1lIGFzIHRoZSBkcml2
ZXIgbmFtZSB3ZngsIGJ1dCBJCj4+ID4gZ3Vlc3Mgc2lsYWJzIGlzIGFsc28gZG9hYmxlLgo+PiAK
Pj4gSSBoYXZlIG5vIG9waW5pb24uCj4+IAo+PiAKPj4gPiBBbHNvIEknbSBub3Qgc2VlaW5nIHRo
ZSBQRFMgZmlsZXMgaW4gbGludXgtZmlybXdhcmUuIFRoZSBpZGVhIGlzIHRoYXQKPj4gPiB3aGVu
IHVzZXIgaW5zdGFsbHMgYW4gdXBzdHJlYW0ga2VybmVsIGFuZCB0aGUgbGludXgtZmlybXdhcmUg
ZXZlcnl0aGluZwo+PiA+IHdpbGwgd29yayBhdXRvbWF0aWNhbGx5LCB3aXRob3V0IGFueSBtYW51
YWwgZmlsZSBpbnN0YWxsYXRpb25zLgo+PiAKPj4gV0YyMDAgaXMganVzdCBhIGNoaXAuIFNvbWVv
bmUgaGFzIHRvIGRlc2lnbiBhbiBhbnRlbm5hIGJlZm9yZSB0byBiZSBhYmxlCj4+IHRvIHVzZS4K
Pj4gCj4+IEhvd2V2ZXIsIHdlIGhhdmUgZXZhbHVhdGlvbiBib2FyZHMgdGhhdCBoYXZlIGFudGVu
bmFzIGFuZCBjb3JyZXNwb25kaW5nCj4+IFBEUyBmaWxlc1sxXS4gTWF5YmUgbGludXgtZmlybXdh
cmUgc2hvdWxkIGluY2x1ZGUgdGhlIFBEUyBmb3IgdGhlc2UgYm9hcmRzCj4KPiBTbyBjaGlwIHZl
bmRvciBwcm92aWRlcyBmaXJtd2FyZSBhbmQgY2FyZCB2ZW5kb3IgcHJvdmlkZXMgUERTIGZpbGVz
LiBJbgo+IG15IG9waW5pb24gYWxsIGZpbGVzIHNob3VsZCBnbyBpbnRvIGxpbnV4LWZpcm13YXJl
IHJlcG9zaXRvcnkuIElmIFNpbGFicwo+IGhhcyBQRFMgZmlsZXMgZm9yIGl0cyBkZXZlbCBib2Fy
ZHMgKHdoaWNoIGFyZSBiYXNpY2FsbHkgY2FyZHMpIHRoZW4gSQo+IHRoaW5rIHRoZXNlIGZpbGVz
IHNob3VsZCBnbyBhbHNvIGludG8gbGludXgtZmlybXdhcmUgcmVwb3NpdG9yeS4KCkkgYWdyZWUs
IGFsbCBmaWxlcyByZXF1aXJlZCBmb3Igbm9ybWFsIGZ1bmN0aW9uYWxpdHkgc2hvdWxkIGJlIGlu
CmxpbnV4LWZpcm13YXJlLiBUaGUgdXBzdHJlYW0gcGhpbG9zb3BoeSBpcyB0aGF0IGEgdXNlciBj
YW4ganVzdCBpbnN0YWxsCnRoZSBsYXRlc3Qga2VybmVsIGFuZCBsYXRlc3QgbGludXgtZmlybXdh
cmUsIGFuZCBldmVyeXRoaW5nIHNob3VsZCB3b3JrCm91dCBvZiBib3ggKHdpdGhvdXQgYW55IG1h
bnVhbCB3b3JrKS4KCj4gQW5kIGJhc2VkIG9uIHNvbWUgcGFyYW1ldGVyLCBkcml2ZXIgc2hvdWxk
IGxvYWQgY29ycmVjdCBQRFMgZmlsZS4gU2VlbXMKPiBsaWtlIERUIGNhbiBiZSBhIHBsYWNlIHdo
ZXJlIHRvIHB1dCBzb21ldGhpbmcgd2hpY2ggaW5kaWNhdGVzIHdoaWNoIFBEUwo+IGZpbGUgc2hv
dWxkIGJlIHVzZWQuCgpBZ2FpbiBJIGFncmVlLgoKPiBCdXQgc2hvdWxkIGJlIGluIERUIGRpcmVj
dGx5IG5hbWUgb2YgUERTIGZpbGU/IE9yIHNob3VsZCBiZSBpbiBEVCBqdXN0Cj4gYWRkaXRpb25h
bCBjb21wYXRpYmxlIHN0cmluZyB3aXRoIGNhcmQgdmVuZG9yIG5hbWUgYW5kIHRoZW4gaW4gZHJp
dmVyCj4gaXRzZWxmIHNob3VsZCBiZSBtYXBwaW5nIHRhYmxlIGZyb20gY29tcGF0aWJsZSBzdHJp
bmcgdG8gZmlsZW5hbWU/IEkgZG8KPiBub3Qga25vdyB3aGF0IGlzIGJldHRlci4KClRoaXMgaXMg
YWxzbyB3aGF0IEkgd2FzIHdvbmRlcmluZywgdG8gbWUgaXQgc291bmRzIHdyb25nIHRvIGhhdmUg
YQpmaWxlbmFtZSBpbiBEVC4gSSB3YXMgbW9yZSB0aGlua2luZyBhYm91dCBjYWxsaW5nIGl0ICJh
bnRlbm5hIG5hbWUiIChhbmQKbm90IHRoZSBhY3R1YWxseSBmaWxlbmFtZSksIGJ1dCB1c2luZyBj
b21wYXRpYmxlIHN0cmluZ3Mgc291bmRzIGdvb2QgdG8KbWUgYXMgd2VsbC4gQnV0IG9mIGNvdXJz
ZSBEVCBtYWludGFpbmVycyBrbm93IHRoaXMgYmV0dGVyLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3Jr
Lmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVz
cy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdw
YXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
