Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDA3422AD7
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 16:19:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7107160B7B;
	Tue,  5 Oct 2021 14:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJtqyMbgvrzx; Tue,  5 Oct 2021 14:19:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88F0E608F2;
	Tue,  5 Oct 2021 14:19:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2411BF33C
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 14:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id ED9BA4078F
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 14:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id P1HgnVJNuudf for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 14:19:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id 6AD0D40781
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 14:19:21 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633443561; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=wbRlR3S9un/VrDX7Y3W0hcFvNCAKaY9PkJGHjSDPKeo=;
 b=wqMeKfFyZ0k9x/iCrlJqJ3sLaamFf/DynqpuJn5d2VfaMBpE4yGlICEAPgQ2xHHYY5k30Rmu
 Ab37cRRk7KngVxKrEuW34oPmsbumKH1wWmdBFBRrNCX0CRHCYCdE6qoge9pixzT1pqRr4yqS
 CdJS91ceNijJLsvLOfYMgsDgTzY=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 615c5e054ccdf4fe5744cc33 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 05 Oct 2021 14:15:33
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 91478C447B5; Tue,  5 Oct 2021 14:15:32 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0FB13C43164;
 Tue,  5 Oct 2021 14:15:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 0FB13C43164
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v8 00/24] wfx: get out from the staging area
References: <20211005135400.788058-1-Jerome.Pouiller@silabs.com>
Date: Tue, 05 Oct 2021 17:15:22 +0300
In-Reply-To: <20211005135400.788058-1-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Tue, 5 Oct 2021 15:53:36 +0200")
Message-ID: <875yubfthh.fsf@codeaurora.org>
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

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBI
ZWxsbywKPgo+IEkgdGhpbmsgdGhlIHdmeCBkcml2ZXIgaXMgbm93IG1hdHVyZSBlbm91Z2ggdG8g
YmUgYWNjZXB0ZWQgaW4gdGhlCj4gZHJpdmVycy9uZXQvd2lyZWxlc3MgZGlyZWN0b3J5Lgo+Cj4g
VGhlIGZpcm13YXJlIGlzIG5vdyBhIHBhcnQgb2YgdGhlIGxpbnV4LWZpcm13YXJlIHJlcG9zaXRv
cnkgc2luY2UgcmVsYXNlCj4gMjAyMTAzMTVbMV0uIEl0IGhhZCB0YWtlbiBhIGJpdCBvZiB0aW1l
IGJlY2F1c2UgSSBoYXZlIHdvcmtlZCB3aXRoIHRoZSBsZWdhbAo+IGRlcGFydG1lbnQgdG8gc2lt
cGxpZnkgdGhlIHJlZGlzdHJpYnV0aW9uIHRlcm1zIG9mIHRoZSBmaXJtd2FyZS4KPgo+IFsxXTog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZmlybXdhcmUvMjgzMzM1NC5nWHZWZmFDNEk3
QHBjLTQyLwo+Cj4KPiBBcyByZXF1ZXN0ZWQgYnkgS2FsbGVbMl0sIEkgc2VuZCBvbmUgZmlsZSBw
ZXIgcGF0Y2guIEF0IHRoZSBlbmQsIGFsbCB0aGUKPiBwYXRjaGVzIChvciBhdCBsZWFzdCB0aGUg
cGF0Y2hlcyAzIHRvIDI0KSB3aWxsIGJlIHNxdWFzaGVkICh0aGVyZWZvcmUsIEkKPiBkaWRuJ3Qg
Ym90aGVyIHRvIHdyaXRlIHJlYWwgY29tbWl0IG1lc3NhZ2VzKS4KPgo+IFsyXTogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGttbC84N2Z0NnAybjBoLmZzZkBjb2RlYXVyb3JhLm9yZy8KPgo+IEhl
cmUgaXMgYSBkaWFncmFtIG9mIHRoZSBnbG9iYWwgYXJjaGl0ZWN0dXJlIHRoYXQgbWF5IGhlbHAg
dG8gdW5kZXJzdGFuZAo+IHRoZSBjb2RlOgo+Cj4gICAgICwtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0uCj4gICAgIHwgICAgICAgICAgICAgICAgbWFjODAyMTEgICAgICAgICAg
ICB8Cj4gICAgIGAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0nCj4gICAgICwt
LS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0uCj4gICAgIHwgICAgc3RhICAgICB8
ICAgICAgICAgICB8ICAgICAgICAgICB8Cj4gICAgIHwgICAgc2NhbiAgICB8ICAgICAgICAgICB8
ICAgICAgICAgICB8Cj4gICAgIHwgICAgbWFpbiAgICB8ICAgICAgICAgICB8ICAgICAgICAgICB8
Cj4gICAgICstLS0tLS0tLS0tLS0rICBkYXRhX3R4ICB8ICAgICAgICAgICB8Cj4gICAgIHwgICAg
a2V5ICAgICB8ICAgICAgICAgICB8ICBkYXRhX3J4ICB8Cj4gICAgIHwgaGlmX3R4X21pYiB8ICAg
cXVldWUgICB8ICAgICAgICAgICB8Cj4gICAgIHwgICBoaWZfdHggICB8ICAgICAgICAgICB8ICAg
ICAgICAgICB8Cj4gICAgIHwgICBoaWZfcnggICB8ICAgICAgICAgICB8ICAgICAgICAgICB8Cj4g
ICAgIHwgIGhpZl9hcGlfKiB8ICAgICAgICAgICB8ICAgICAgICAgICB8Cj4gICAgICstLS0tLS0t
LS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0tLS0uCj4gICAgIHwgICAgICAgICAg
ICAgICAgICBiaCAgICAgICAgICAgICAgICB8ICBmd2lvICB8Cj4gICAgICstLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0rCj4gICAgIHwgICAgICAgICAgICAgICAg
ICAgICBod2lvICAgICAgICAgICAgICAgICAgICB8Cj4gICAgICstLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4gICAgIHwgICAgICAgICAgICAgICAgICAgYnVz
X3NkaW8gICAgICAgICAgICAgICAgICB8Cj4gICAgIHwgICAgICAgICAgICAgICAgICAgYnVzX3Nw
aSAgICAgICAgICAgICAgICAgICB8Cj4gICAgIGAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0nCj4gICAgICwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0uCj4gICAgIHwgICAgICAgICAgICAgICAgICBzcGkgLyBzZGlvICAgICAg
ICAgICAgICAgICB8Cj4gICAgIGAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0nCj4KPiBSb3VnaGx5LCBJIGhhdmUgc2VudCB0aGUgZmlsZXMgZnJvbSB0aGUgYm90
dG9tIHRvIHRoZSB0b3AuCj4KPgo+IHY4Ogo+ICAgLSBDaGFuZ2UgdGhlIHdheSB0aGUgRFQgaXMg
aGFuZGxlZC4gVGhlIHVzZXIgY2FuIG5vdyBzcGVjaWZ5IHRoZSBuYW1lIG9mCj4gICAgIHRoZSBi
b2FyZCAoPSBjaGlwICsgYW50ZW5uYSkgaGUgdXNlLiBJdCBlYXNpZXIgZm9yIGJvYXJkIGRlc2ln
bmVycyB0bwo+ICAgICBhZGQgbmV3IGVudHJpZXMuIEkgcGxhbiB0byBzZW5kIGEgUFIgdG8gbGlu
dXgtZmlybXdhcmUgdG8gaW5jbHVkZSBQRFMKPiAgICAgZmlsZXMgb2YgdGhlIGRldmVsb3BwZW1l
bnQgYm9hcmRzIGJlbG9uZyB0aGUgZmlybXdhcmUgKEkgYWxzbyBwbGFuIHRvCj4gICAgIHJlbG9j
YXRlIHRoZXNlIGZpbGUgaW50byB3ZngvIGluc3RlYWQgb2Ygc2lsYWJzLykuIChLYWxsZSwgUGFs
aSkKPiAgIC0gUHJlZml4IHZpc2libGUgZnVuY3Rpb25zIGFuZCBzdHJ1Y3RzIHdpdGggIndmeF8i
LiBJIG1vc3RseSBrZXB0IHRoZQo+ICAgICBjb2RlIHVuZGVyIDgwIGNvbHVtbnMuIChLYWxsZSwg
UGFsaSwgR3JlZykKPiAgIC0gUmVtb3ZlIHN1cHBvcnQgZm9yIGZvcmNlX3BzX3RpbWVvdXQgZm9y
IG5vdy4gKEthbGxlKQo+ICAgLSBGaXggbGljZW5zZXMgb2YgTWFrZWZpbGUsIEtjb25maWcgYW5k
IGhpZl9hcGkqLmguIChLYWxsZSkKPiAgIC0gRG8gbm90IG1peCBhbmQgbWF0Y2ggZW5kaWFuZXNz
IGluIHN0cnVjdCBoaWZfaW5kX3N0YXJ0dXAuIChLYWxsZSkKPiAgIC0gUmVtb3ZlIG1hZ2ljIHZh
bHVlcy4gKEthbGxlKQo+ICAgLSBVc2UgSVNfQUxJR05FRCgpLiAoQlRXLCBQVFJfSVNfQUxJR05F
RCgpIGRvZXMgbm90IGV4aXN0PykgKEthbGxlKQo+ICAgLSBJIGhhdmUgYWxzbyBub3RpY2VkIHRo
YXQgc29tZSBoZWFkZXJzIGZpbGVzIGRpZCBub3QgZGVjbGFyZSBhbGwgdGhlCj4gICAgIHN0cnVj
dCB0aGV5IHVzZWQuCj4KPiAgIFRoZXNlIGlzc3VlcyByZW1haW4gKEkgaG9wZSB0aGV5IGFyZSBu
b3QgYmxvY2tlcnMpOgo+ICAgLSBJIGhhdmUgY3VycmVudGx5IG5vIGlkZWFzIGhvdyB0byBpbXBy
b3ZlL3NpbXBsaWZ5IHRoZSBwYXJzaW5nIFBEUyBmaWxlLgo+ICAgICAoS2FsbGUpCgpGb3IgdGhl
IFBEUyBmaWxlIHByb2JsZW0gaXQgd291bGQgaGVscCBpZiB5b3UgY291bGQgYWN0dWFsbHkgZGVz
Y3JpYmUKd2hhdCB0aGUgZmlybXdhcmUgcmVxdWlyZXMvbmVlZHMgYW5kIHRoZW4gd2UgY2FuIHN0
YXJ0IGZyb20gdGhhdC4gSSBoYWQKc29tZSBxdWVzdGlvbnMgYWJvdXQgdGhpcyBpbiB2NyBidXQg
YXBwYXJlbnRseSB5b3UgbWlzc2VkIHRob3NlLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtp
Lmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
