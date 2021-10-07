Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB2142517D
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 12:50:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E12D560F81;
	Thu,  7 Oct 2021 10:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jb40_K9P1dIS; Thu,  7 Oct 2021 10:50:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE51160B1C;
	Thu,  7 Oct 2021 10:50:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 307441BF2B1
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id 28C25403A1
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id 4c5uS-mZApvz for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 10:50:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id 6342140355
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 10:50:09 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633603809; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=mRlN5Ip/ZB+VIMd86+Ux36qweq4CFDscRaEK9N9zKkQ=;
 b=vAUgGBNXr6vBkYL6EYLswOCInrjNdsRo9NMkmpgAi/r82Dweg86w7sUjyZUSzqsBwIYqwsEm
 2iqrbUanEUJeOunVWdzoNHLQdenFw2lrmCoMfwnHWv5CO8WAnVRnOOBeZBfE2Tgv//CFf5bM
 lEa6SLDQqYsaQyZjo8guj1pOUsY=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 615ed0d1ff0285fb0afbc131 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 10:49:53
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9CDBFC4360C; Thu,  7 Oct 2021 10:49:53 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 24F38C4338F;
 Thu,  7 Oct 2021 10:49:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 24F38C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 05/24] wfx: add main.c/main.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <3570035.Z1gqkuQO5x@pc-42> <875yu9cjvk.fsf@codeaurora.org>
 <2672405.M38RcEoSet@pc-42> <87zgrl86cx.fsf@codeaurora.org>
Date: Thu, 07 Oct 2021 13:49:47 +0300
In-Reply-To: <87zgrl86cx.fsf@codeaurora.org> (Kalle Valo's message of "Thu, 07
 Oct 2021 13:41:18 +0300")
Message-ID: <87v92985ys.fsf@codeaurora.org>
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

S2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKCj4gSsOpcsO0bWUgUG91
aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cj4KPj4+ID4+ID4+IEkn
bSBub3QgcmVhbGx5IGZvbmQgb2YgaGF2aW5nIHRoaXMga2luZCBvZiBBU0NJSSBiYXNlZCBwYXJz
ZXIgaW4gdGhlCj4+PiA+PiA+PiBrZXJuZWwuIERvIHlvdSBoYXZlIGFuIGV4YW1wbGUgY29tcHJl
c3NlZCBmaWxlIHNvbWV3aGVyZT8KPj4+ID4+ID4KPj4+ID4+ID4gQW4gZXhhbXBsZSBvZiB1bmNv
bXByZXNzZWQgY29uZmlndXJhdGlvbiBmaWxlIGNhbiBiZSBmb3VuZCBoZXJlWzFdLiBPbmNlCj4+
PiA+PiA+IGNvbXByZXNzZWQgd2l0aCBbMl0sIHlvdSBnZXQ6Cj4+PiA+PiA+Cj4+PiA+PiA+ICAg
ICB7YTp7YTo0LGI6MX0sYjp7YTp7YTo0LGI6MCxjOjAsZDowLGU6QX0sYjp7YTo0LGI6MCxjOjAs
ZDowLGU6Qn0sYzp7YTo0LGI6MCxjOjAsZDowLGU6Q30sZDp7YTo0LGI6MCxjOjAsZDowLGU6RH0s
ZTp7YTo0LGI6MCxjOjAsZDowLGU6RX0sZjp7YTo0LGI6MCxjOjAsZDowLGU6Rn0sZzp7YTo0LGI6
MCxjOjAsZDowLGU6R30saDp7YTo0LGI6MCxjOjAsZDowLGU6SH0saTp7YTo0LGI6MCxjOjAsZDow
LGU6SX0sajp7YTo0LGI6MCxjOjAsZDowLGU6Sn0sazp7YTo0LGI6MCxjOjAsZDowLGU6S30sbDp7
YTo0LGI6MCxjOjAsZDoxLGU6TH0sbTp7YTo0LGI6MCxjOjAsZDoxLGU6TX19LGM6e2E6e2E6NH0s
Yjp7YTo2fSxjOnthOjYsYzowfSxkOnthOjZ9LGU6e2E6Nn0sZjp7YTo2fX0sZTp7YjowLGM6MX0s
aDp7ZTowLGE6NTAsYjowLGQ6MCxjOlt7YToxLGI6WzAsMCwwLDAsMCwwXX0se2E6MixiOlswLDAs
MCwwLDAsMF19LHthOlszLDldLGI6WzAsMCwwLDAsMCwwXX0se2E6QSxiOlswLDAsMCwwLDAsMF19
LHthOkIsYjpbMCwwLDAsMCwwLDBdfSx7YTpbQyxEXSxiOlswLDAsMCwwLDAsMF19LHthOkUsYjpb
MCwwLDAsMCwwLDBdfV19LGo6e2E6MCxiOjB9fQo+Pj4gPj4KPj4+ID4+IFNvIHdoYXQncyB0aGUg
Z3JhbmQgaWRlYSB3aXRoIHRoaXMgYnJhY2VzIGZvcm1hdD8gSSdtIG5vdCBnZXR0aW5nIGl0Lgo+
Pj4gPgo+Pj4gPiAgIC0gSXQgYWxsb3dzIHRvIGRlc2NyaWJlIGEgdHJlZSBzdHJ1Y3R1cmUKPj4+
ID4gICAtIEl0IGlzIGFzY2lpIChlYXN5IHRvIGR1bXAsIGVhc3kgdG8gY29weS1wYXN0ZSkKPj4+
ID4gICAtIEl0IGlzIHNtYWxsIChhcyBJIGV4cGxhaW4gYmVsb3csIHNpemUgbWF0dGVycykKPj4+
ID4gICAtIFNpbmNlIGl0IGlzIHNpbWlsYXIgdG8gSlNPTiwgdGhlIHN0cnVjdHVyZSBpcyBvYnZp
b3VzIHRvIG1hbnkgcGVvcGxlCj4+PiA+Cj4+PiA+IEFueXdheSwgSSBhbSBub3QgdGhlIGF1dGhv
ciBvZiB0aGF0IGFuZCBJIGhhdmUgdG8gZGVhbCB3aXRoIGl0Lgo+Pj4gCj4+PiBJJ20gYSBzdXBw
b3J0ZWQgZm9yIEpTT04gbGlrZSBmb3JtYXRzLCBmbGV4aWJpbGl0eSBhbmQgYWxsIHRoYXQuIEJ1
dAo+Pj4gdGhleSBiZWxvbmcgdG8gdXNlciBzcGFjZSwgbm90IGtlcm5lbC4KPj4+IAo+Pj4gPj4g
VXN1YWxseSB0aGUgZHJpdmVycyBqdXN0IGNvbnNpZGVyIHRoaXMga2luZCBvZiBmaXJtd2FyZSBj
b25maWd1cmF0aW9uCj4+PiA+PiBkYXRhIGFzIGEgYmluYXJ5IGJsb2IgYW5kIGR1bXAgaXQgdG8g
dGhlIGZpcm13YXJlLCB3aXRob3V0IGtub3dpbmcgd2hhdAo+Pj4gPj4gdGhlIGRhdGEgY29udGFp
bnMuIENhbid0IHlvdSBkbyB0aGUgc2FtZT8KPj4+ID4KPj4+ID4gW0kgZGlkbid0IGhhZCByZWNl
aXZlZCB0aGlzIG1haWwgOiggXQo+Pj4gPgo+Pj4gPiBUaGUgaWRlYSB3YXMgYWxzbyB0byBzZW5k
IGl0IGFzIGEgYmluYXJ5IGJsb2IuIEhvd2V2ZXIsIHRoZSBmaXJtd2FyZSB1c2UKPj4+ID4gYSBs
aW1pdGVkIGJ1ZmZlciAoMTUwMCBieXRlcykgdG8gcGFyc2UgaXQuIEluIG1vc3Qgb2YgY2FzZSB0
aGUgUERTIGV4Y2VlZHMKPj4+ID4gdGhpcyBzaXplLiBTbywgd2UgaGF2ZSB0byBzcGxpdCB0aGUg
UERTIGJlZm9yZSB0byBzZW5kIGl0Lgo+Pj4gPgo+Pj4gPiBVbmZvcnR1bmF0ZWx5LCB3ZSBjYW4n
dCBzcGxpdCBpdCBhbnl3aGVyZS4gVGhlIFBEUyBpcyBhIHRyZWUgc3RydWN0dXJlIGFuZAo+Pj4g
PiB0aGUgZmlybXdhcmUgZXhwZWN0cyB0byByZWNlaXZlIGEgd2VsbCBmb3JtYXR0ZWQgdHJlZS4K
Pj4+ID4KPj4+ID4gU28sIHRoZSBlYXNpZXN0IHdheSB0byBzZW5kIGl0IHRvIHRoZSBmaXJtd2Fy
ZSBpcyB0byBzcGxpdCB0aGUgdHJlZQo+Pj4gPiBiZXR3ZWVuIGVhY2ggcm9vdCBub2RlcyBhbmQg
c2VuZCBlYWNoIHN1YnRyZWUgc2VwYXJhdGVseSAoc2VlIGFsc28gdGhlCj4+PiA+IGNvbW1lbnQg
YWJvdmUgd2Z4X3NlbmRfcGRzKCkpLgo+Pj4gPgo+Pj4gPiBBbnl3YXksIHNvbWVvbmUgaGFzIHRv
IGNvb2sgdGhpcyBjb25maWd1cmF0aW9uIGJlZm9yZSB0byBzZW5kIGl0IHRvIHRoZQo+Pj4gPiBm
aXJtd2FyZS4gVGhpcyBjb3VsZCBiZSBkb25lIGJ5IGEgc2NyaXB0IG91dHNpZGUgb2YgdGhlIGtl
cm5lbC4gVGhlbiB3ZQo+Pj4gPiBjb3VsZCBjaGFuZ2UgdGhlIGlucHV0IGZvcm1hdCB0byBzaW1w
bGlmeSBhIGJpdCB0aGUgcHJvY2Vzc2luZyBpbiB0aGUKPj4+ID4ga2VybmVsLgo+Pj4gCj4+PiBJ
IHRoaW5rIGEgYmluYXJ5IGZpbGUgd2l0aCBUTFYgZm9ybWF0IHdvdWxkIGJlIG11Y2ggYmV0dGVy
LCBidXQgSSdtIHN1cmUKPj4+IHRoZXJlIGFsc28gb3RoZXIgZ29vZCBjaG9pc2VzLgo+Pj4gCj4+
PiA+IEhvd2V2ZXIsIHRoZSBkcml2ZXIgaGFzIGFscmVhZHkgc29tZSB1c2VycyBhbmQgSSB3b3Jy
eSB0aGF0IGNoYW5naW5nCj4+PiA+IHRoZSBpbnB1dCBmb3JtYXQgd291bGQgbGVhZCB0byBhIG1l
c3MuCj4+PiAKPj4+IFlvdSBjYW4gaW1wbGVtZW50IGEgc2NyaXB0IHdoaWNoIGNvbnZlcnRzIHRo
ZSBvbGQgZm9ybWF0IHRvIHRoZSBuZXcKPj4+IGZvcm1hdC4gQW5kIHlvdSBjYW4gdXNlIGRpZmZl
cmVudCBuYW1pbmcgc2NoZW1lIGluIHRoZSBuZXcgZm9ybWF0IHNvCj4+PiB0aGF0IHdlIGRvbid0
IGFjY2lkZW50YWxseSBsb2FkIHRoZSBvbGQgZm9ybWF0LiBBbmQgZXZlbiBiZXR0ZXIgaWYgeW91
Cj4+PiBhZGQgYSBzb21lIGtpbmQgb2Ygc2lnbmF0dXJlIGluIHRoZSBuZXcgZm9ybWF0IGFuZCBn
aXZlIGEgcHJvcGVyIGVycm9yCj4+PiBmcm9tIHRoZSBkcml2ZXIgaWYgaXQgZG9lc24ndCBtYXRj
aC4KPj4KPj4gT2suIEkgYW0gZ29pbmcgdG8gY2hhbmdlIHRoZSBpbnB1dCBmb3JtYXQuIEkgdGhp
bmsgdGhlIG5ldyBmdW5jdGlvbiBpcwo+PiBnb2luZyB0byBsb29rIGxpa2U6Cj4+Cj4+IGludCB3
Znhfc2VuZF9wZHMoc3RydWN0IHdmeF9kZXYgKndkZXYsIHU4ICpidWYsIHNpemVfdCBidWZfbGVu
KQo+PiB7Cj4+IAlpbnQgcmV0Owo+PiAJaW50IHN0YXJ0ID0gMDsKPj4KPj4gCWlmIChidWZbc3Rh
cnRdICE9ICd7Jykgewo+PiAJCWRldl9lcnIod2Rldi0+ZGV2LCAidmFsaWQgUERTIHN0YXJ0IHdp
dGggJ3snLiBEaWQgeW91IGZvcmdldCB0byBjb21wcmVzcyBpdD9cbiIpOwo+PiAJCXJldHVybiAt
RUlOVkFMOwo+PiAJfQo+PiAJd2hpbGUgKHN0YXJ0IDwgYnVmX2xlbikgewo+PiAJCWxlbiA9IHN0
cm5sZW4oYnVmICsgc3RhcnQsIGJ1Zl9sZW4gLSBzdGFydCk7Cj4+IAkJaWYgKGxlbiA+IFdGWF9Q
RFNfTUFYX1NJWkUpIHsKPj4gCQkJZGV2X2Vycih3ZGV2LT5kZXYsICJQRFMgY2h1bmsgaXMgdG9v
IGJpZyAobGVnYWN5IGZvcm1hdD8pXG4iKTsKPj4gCQkJcmV0dXJuIC1FSU5WQUw7Cj4+IAkJfQo+
PiAJCWRldl9kYmcod2Rldi0+ZGV2LCAic2VuZCBQRFMgJyVzJ1xuIiwgYnVmICsgc3RhcnQpOwo+
PiAJCXJldCA9IHdmeF9oaWZfY29uZmlndXJhdGlvbih3ZGV2LCBidWYgKyBzdGFydCwgbGVuKTsK
Pj4gCQkvKiBGSVhNRTogQWRkIGVycm9yIGhhbmRsaW5nIGhlcmUgKi8KPj4gCQlzdGFydCArPSBs
ZW47Cj4+IAl9Cj4+IAlyZXR1cm4gMDsKPgo+IERpZCB5b3UgcmVhZCBhdCBhbGwgd2hhdCBJIHdy
b3RlIGFib3ZlPyBQbGVhc2UgZGl0Y2ggdGhlIEFTQ0lJIGZvcm1hdAo+IGNvbXBsZXRlbHkuCgpT
b3JyeSwgSSByZWFkIHRoaXMgdG9vIGhhc3RpbHkuIEkganVzdCBzYXcgImJ1ZltzdGFydF0gIT0g
J3snIiBhbmQKYXNzdW1lZCB0aGlzIGlzIHRoZSBzYW1lIEFTQ0lJIGZvcm1hdCwgYnV0IG5vdCBz
dXJlIGFueW1vcmUuIENhbiB5b3UKZXhwbGFpbiB3aGF0IGNoYW5nZXMgeW91IG1hZGUgbm93PwoK
LS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9s
aXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1
bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
