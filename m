Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB80842514E
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 12:41:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15428403BE;
	Thu,  7 Oct 2021 10:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pf-NgUc6NfzS; Thu,  7 Oct 2021 10:41:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A232540355;
	Thu,  7 Oct 2021 10:41:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF0A61BF2B1
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id DD9F4841F8
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:41:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id 3TKiOfpuqWiB for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 10:41:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id BA76183BAD
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 10:41:26 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633603286; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=FZv7up9pezh0ULf63JB/fz3Zol9bcHG9+0bdesm9Xmw=;
 b=Ll/qCLced4aiVSAhLjUMmZxAgD2ffnu+jde9YnOsjy2jrymRipdxfE6/e4fjM/ZWnJdx5cuV
 1XWpToqlaOWOkgaIYEEsW435guSvuzrTPmRR1lFhIgoQeKn2uuLvAnzckoIfOlcuSM82jYOq
 N1muN+8AXag7BjjK8fQXHEeueuA=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 615eced503355859c85c5716 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 10:41:25
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 60A70C43460; Thu,  7 Oct 2021 10:41:25 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0DED9C4338F;
 Thu,  7 Oct 2021 10:41:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 0DED9C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 05/24] wfx: add main.c/main.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <3570035.Z1gqkuQO5x@pc-42> <875yu9cjvk.fsf@codeaurora.org>
 <2672405.M38RcEoSet@pc-42>
Date: Thu, 07 Oct 2021 13:41:18 +0300
In-Reply-To: <2672405.M38RcEoSet@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Thu, 07 Oct 2021 12:00:18 +0200")
Message-ID: <87zgrl86cx.fsf@codeaurora.org>
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
PiA+PiA+PiBJJ20gbm90IHJlYWxseSBmb25kIG9mIGhhdmluZyB0aGlzIGtpbmQgb2YgQVNDSUkg
YmFzZWQgcGFyc2VyIGluIHRoZQo+PiA+PiA+PiBrZXJuZWwuIERvIHlvdSBoYXZlIGFuIGV4YW1w
bGUgY29tcHJlc3NlZCBmaWxlIHNvbWV3aGVyZT8KPj4gPj4gPgo+PiA+PiA+IEFuIGV4YW1wbGUg
b2YgdW5jb21wcmVzc2VkIGNvbmZpZ3VyYXRpb24gZmlsZSBjYW4gYmUgZm91bmQgaGVyZVsxXS4g
T25jZQo+PiA+PiA+IGNvbXByZXNzZWQgd2l0aCBbMl0sIHlvdSBnZXQ6Cj4+ID4+ID4KPj4gPj4g
PiAgICAge2E6e2E6NCxiOjF9LGI6e2E6e2E6NCxiOjAsYzowLGQ6MCxlOkF9LGI6e2E6NCxiOjAs
YzowLGQ6MCxlOkJ9LGM6e2E6NCxiOjAsYzowLGQ6MCxlOkN9LGQ6e2E6NCxiOjAsYzowLGQ6MCxl
OkR9LGU6e2E6NCxiOjAsYzowLGQ6MCxlOkV9LGY6e2E6NCxiOjAsYzowLGQ6MCxlOkZ9LGc6e2E6
NCxiOjAsYzowLGQ6MCxlOkd9LGg6e2E6NCxiOjAsYzowLGQ6MCxlOkh9LGk6e2E6NCxiOjAsYzow
LGQ6MCxlOkl9LGo6e2E6NCxiOjAsYzowLGQ6MCxlOkp9LGs6e2E6NCxiOjAsYzowLGQ6MCxlOkt9
LGw6e2E6NCxiOjAsYzowLGQ6MSxlOkx9LG06e2E6NCxiOjAsYzowLGQ6MSxlOk19fSxjOnthOnth
OjR9LGI6e2E6Nn0sYzp7YTo2LGM6MH0sZDp7YTo2fSxlOnthOjZ9LGY6e2E6Nn19LGU6e2I6MCxj
OjF9LGg6e2U6MCxhOjUwLGI6MCxkOjAsYzpbe2E6MSxiOlswLDAsMCwwLDAsMF19LHthOjIsYjpb
MCwwLDAsMCwwLDBdfSx7YTpbMyw5XSxiOlswLDAsMCwwLDAsMF19LHthOkEsYjpbMCwwLDAsMCww
LDBdfSx7YTpCLGI6WzAsMCwwLDAsMCwwXX0se2E6W0MsRF0sYjpbMCwwLDAsMCwwLDBdfSx7YTpF
LGI6WzAsMCwwLDAsMCwwXX1dfSxqOnthOjAsYjowfX0KPj4gPj4KPj4gPj4gU28gd2hhdCdzIHRo
ZSBncmFuZCBpZGVhIHdpdGggdGhpcyBicmFjZXMgZm9ybWF0PyBJJ20gbm90IGdldHRpbmcgaXQu
Cj4+ID4KPj4gPiAgIC0gSXQgYWxsb3dzIHRvIGRlc2NyaWJlIGEgdHJlZSBzdHJ1Y3R1cmUKPj4g
PiAgIC0gSXQgaXMgYXNjaWkgKGVhc3kgdG8gZHVtcCwgZWFzeSB0byBjb3B5LXBhc3RlKQo+PiA+
ICAgLSBJdCBpcyBzbWFsbCAoYXMgSSBleHBsYWluIGJlbG93LCBzaXplIG1hdHRlcnMpCj4+ID4g
ICAtIFNpbmNlIGl0IGlzIHNpbWlsYXIgdG8gSlNPTiwgdGhlIHN0cnVjdHVyZSBpcyBvYnZpb3Vz
IHRvIG1hbnkgcGVvcGxlCj4+ID4KPj4gPiBBbnl3YXksIEkgYW0gbm90IHRoZSBhdXRob3Igb2Yg
dGhhdCBhbmQgSSBoYXZlIHRvIGRlYWwgd2l0aCBpdC4KPj4gCj4+IEknbSBhIHN1cHBvcnRlZCBm
b3IgSlNPTiBsaWtlIGZvcm1hdHMsIGZsZXhpYmlsaXR5IGFuZCBhbGwgdGhhdC4gQnV0Cj4+IHRo
ZXkgYmVsb25nIHRvIHVzZXIgc3BhY2UsIG5vdCBrZXJuZWwuCj4+IAo+PiA+PiBVc3VhbGx5IHRo
ZSBkcml2ZXJzIGp1c3QgY29uc2lkZXIgdGhpcyBraW5kIG9mIGZpcm13YXJlIGNvbmZpZ3VyYXRp
b24KPj4gPj4gZGF0YSBhcyBhIGJpbmFyeSBibG9iIGFuZCBkdW1wIGl0IHRvIHRoZSBmaXJtd2Fy
ZSwgd2l0aG91dCBrbm93aW5nIHdoYXQKPj4gPj4gdGhlIGRhdGEgY29udGFpbnMuIENhbid0IHlv
dSBkbyB0aGUgc2FtZT8KPj4gPgo+PiA+IFtJIGRpZG4ndCBoYWQgcmVjZWl2ZWQgdGhpcyBtYWls
IDooIF0KPj4gPgo+PiA+IFRoZSBpZGVhIHdhcyBhbHNvIHRvIHNlbmQgaXQgYXMgYSBiaW5hcnkg
YmxvYi4gSG93ZXZlciwgdGhlIGZpcm13YXJlIHVzZQo+PiA+IGEgbGltaXRlZCBidWZmZXIgKDE1
MDAgYnl0ZXMpIHRvIHBhcnNlIGl0LiBJbiBtb3N0IG9mIGNhc2UgdGhlIFBEUyBleGNlZWRzCj4+
ID4gdGhpcyBzaXplLiBTbywgd2UgaGF2ZSB0byBzcGxpdCB0aGUgUERTIGJlZm9yZSB0byBzZW5k
IGl0Lgo+PiA+Cj4+ID4gVW5mb3J0dW5hdGVseSwgd2UgY2FuJ3Qgc3BsaXQgaXQgYW55d2hlcmUu
IFRoZSBQRFMgaXMgYSB0cmVlIHN0cnVjdHVyZSBhbmQKPj4gPiB0aGUgZmlybXdhcmUgZXhwZWN0
cyB0byByZWNlaXZlIGEgd2VsbCBmb3JtYXR0ZWQgdHJlZS4KPj4gPgo+PiA+IFNvLCB0aGUgZWFz
aWVzdCB3YXkgdG8gc2VuZCBpdCB0byB0aGUgZmlybXdhcmUgaXMgdG8gc3BsaXQgdGhlIHRyZWUK
Pj4gPiBiZXR3ZWVuIGVhY2ggcm9vdCBub2RlcyBhbmQgc2VuZCBlYWNoIHN1YnRyZWUgc2VwYXJh
dGVseSAoc2VlIGFsc28gdGhlCj4+ID4gY29tbWVudCBhYm92ZSB3Znhfc2VuZF9wZHMoKSkuCj4+
ID4KPj4gPiBBbnl3YXksIHNvbWVvbmUgaGFzIHRvIGNvb2sgdGhpcyBjb25maWd1cmF0aW9uIGJl
Zm9yZSB0byBzZW5kIGl0IHRvIHRoZQo+PiA+IGZpcm13YXJlLiBUaGlzIGNvdWxkIGJlIGRvbmUg
YnkgYSBzY3JpcHQgb3V0c2lkZSBvZiB0aGUga2VybmVsLiBUaGVuIHdlCj4+ID4gY291bGQgY2hh
bmdlIHRoZSBpbnB1dCBmb3JtYXQgdG8gc2ltcGxpZnkgYSBiaXQgdGhlIHByb2Nlc3NpbmcgaW4g
dGhlCj4+ID4ga2VybmVsLgo+PiAKPj4gSSB0aGluayBhIGJpbmFyeSBmaWxlIHdpdGggVExWIGZv
cm1hdCB3b3VsZCBiZSBtdWNoIGJldHRlciwgYnV0IEknbSBzdXJlCj4+IHRoZXJlIGFsc28gb3Ro
ZXIgZ29vZCBjaG9pc2VzLgo+PiAKPj4gPiBIb3dldmVyLCB0aGUgZHJpdmVyIGhhcyBhbHJlYWR5
IHNvbWUgdXNlcnMgYW5kIEkgd29ycnkgdGhhdCBjaGFuZ2luZwo+PiA+IHRoZSBpbnB1dCBmb3Jt
YXQgd291bGQgbGVhZCB0byBhIG1lc3MuCj4+IAo+PiBZb3UgY2FuIGltcGxlbWVudCBhIHNjcmlw
dCB3aGljaCBjb252ZXJ0cyB0aGUgb2xkIGZvcm1hdCB0byB0aGUgbmV3Cj4+IGZvcm1hdC4gQW5k
IHlvdSBjYW4gdXNlIGRpZmZlcmVudCBuYW1pbmcgc2NoZW1lIGluIHRoZSBuZXcgZm9ybWF0IHNv
Cj4+IHRoYXQgd2UgZG9uJ3QgYWNjaWRlbnRhbGx5IGxvYWQgdGhlIG9sZCBmb3JtYXQuIEFuZCBl
dmVuIGJldHRlciBpZiB5b3UKPj4gYWRkIGEgc29tZSBraW5kIG9mIHNpZ25hdHVyZSBpbiB0aGUg
bmV3IGZvcm1hdCBhbmQgZ2l2ZSBhIHByb3BlciBlcnJvcgo+PiBmcm9tIHRoZSBkcml2ZXIgaWYg
aXQgZG9lc24ndCBtYXRjaC4KPgo+IE9rLiBJIGFtIGdvaW5nIHRvIGNoYW5nZSB0aGUgaW5wdXQg
Zm9ybWF0LiBJIHRoaW5rIHRoZSBuZXcgZnVuY3Rpb24gaXMKPiBnb2luZyB0byBsb29rIGxpa2U6
Cj4KPiBpbnQgd2Z4X3NlbmRfcGRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1OCAqYnVmLCBzaXpl
X3QgYnVmX2xlbikKPiB7Cj4gCWludCByZXQ7Cj4gCWludCBzdGFydCA9IDA7Cj4KPiAJaWYgKGJ1
ZltzdGFydF0gIT0gJ3snKSB7Cj4gCQlkZXZfZXJyKHdkZXYtPmRldiwgInZhbGlkIFBEUyBzdGFy
dCB3aXRoICd7Jy4gRGlkIHlvdSBmb3JnZXQgdG8gY29tcHJlc3MgaXQ/XG4iKTsKPiAJCXJldHVy
biAtRUlOVkFMOwo+IAl9Cj4gCXdoaWxlIChzdGFydCA8IGJ1Zl9sZW4pIHsKPiAJCWxlbiA9IHN0
cm5sZW4oYnVmICsgc3RhcnQsIGJ1Zl9sZW4gLSBzdGFydCk7Cj4gCQlpZiAobGVuID4gV0ZYX1BE
U19NQVhfU0laRSkgewo+IAkJCWRldl9lcnIod2Rldi0+ZGV2LCAiUERTIGNodW5rIGlzIHRvbyBi
aWcgKGxlZ2FjeSBmb3JtYXQ/KVxuIik7Cj4gCQkJcmV0dXJuIC1FSU5WQUw7Cj4gCQl9Cj4gCQlk
ZXZfZGJnKHdkZXYtPmRldiwgInNlbmQgUERTICclcydcbiIsIGJ1ZiArIHN0YXJ0KTsKPiAJCXJl
dCA9IHdmeF9oaWZfY29uZmlndXJhdGlvbih3ZGV2LCBidWYgKyBzdGFydCwgbGVuKTsKPiAJCS8q
IEZJWE1FOiBBZGQgZXJyb3IgaGFuZGxpbmcgaGVyZSAqLwo+IAkJc3RhcnQgKz0gbGVuOwo+IAl9
Cj4gCXJldHVybiAwOwoKRGlkIHlvdSByZWFkIGF0IGFsbCB3aGF0IEkgd3JvdGUgYWJvdmU/IFBs
ZWFzZSBkaXRjaCB0aGUgQVNDSUkgZm9ybWF0CmNvbXBsZXRlbHkuCgotLSAKaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dp
cmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0
dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
