Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7684444BE2E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Nov 2021 10:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA570403BA;
	Wed, 10 Nov 2021 09:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mzSMWx88LwbU; Wed, 10 Nov 2021 09:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22DB240223;
	Wed, 10 Nov 2021 09:59:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74D3A1BF345
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 09:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id 5674F40391
 for <devel@linuxdriverproject.org>; Wed, 10 Nov 2021 09:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id h91_zRyK2Sqm for <devel@linuxdriverproject.org>;
 Wed, 10 Nov 2021 09:58:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 0B28A40236
 for <devel@driverdev.osuosl.org>; Wed, 10 Nov 2021 09:58:54 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1636538336; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=fcAghAoVZ0JxeVWaGkjHk7dhQU80Wv79lwRh7/w5leA=;
 b=Pps+SI9Usj4DJo9TLGSBMBV70h9IVkfkHhuT8I30e966dX0IpuZMB2w9mcg4tuWootjC5fT1
 s+s8TZY4eP30DihefZP2YD6/epr+U+2tKG8bEQ8/2O5lFLq95waGm1U1ur8kn2fMlj0ZBe3V
 Z7bsVaBmSx7Wbwog55zO+R8kQPU=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 618b97da332b6b6db469cd76 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 10 Nov 2021 09:58:50
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 068DEC4360C; Wed, 10 Nov 2021 09:58:49 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 85DE0C4338F;
 Wed, 10 Nov 2021 09:58:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 85DE0C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 05/24] wfx: add main.c/main.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <87zgrl86cx.fsf@codeaurora.org> <87v92985ys.fsf@codeaurora.org>
 <6117440.dvjIZRh6BQ@pc-42>
Date: Wed, 10 Nov 2021 11:58:41 +0200
In-Reply-To: <6117440.dvjIZRh6BQ@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Thu, 07 Oct 2021 13:22:14 +0200")
Message-ID: <87lf1wnxgu.fsf@codeaurora.org>
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
IE9uIFRodXJzZGF5IDcgT2N0b2JlciAyMDIxIDEyOjQ5OjQ3IENFU1QgS2FsbGUgVmFsbyB3cm90
ZToKPj4gQ0FVVElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBvZiB0aGUg
b3JnYW5pemF0aW9uLiBEbwo+PiBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1
bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyCj4+IGFuZCBrbm93IHRoZSBjb250ZW50IGlz
IHNhZmUuCj4+IAo+PiAKPj4gS2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyaXRl
czoKPj4gCj4+ID4gSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PiB3cml0ZXM6Cj4+ID4KPj4gPj4+ID4+ID4+IEknbSBub3QgcmVhbGx5IGZvbmQgb2YgaGF2aW5n
IHRoaXMga2luZCBvZiBBU0NJSSBiYXNlZCBwYXJzZXIgaW4gdGhlCj4+ID4+PiA+PiA+PiBrZXJu
ZWwuIERvIHlvdSBoYXZlIGFuIGV4YW1wbGUgY29tcHJlc3NlZCBmaWxlIHNvbWV3aGVyZT8KPj4g
Pj4+ID4+ID4KPj4gPj4+ID4+ID4gQW4gZXhhbXBsZSBvZiB1bmNvbXByZXNzZWQgY29uZmlndXJh
dGlvbiBmaWxlIGNhbiBiZSBmb3VuZCBoZXJlWzFdLiBPbmNlCj4+ID4+PiA+PiA+IGNvbXByZXNz
ZWQgd2l0aCBbMl0sIHlvdSBnZXQ6Cj4+ID4+PiA+PiA+Cj4+ID4+PiA+PiA+ICAgICB7YTp7YTo0
LGI6MX0sYjp7YTp7YTo0LGI6MCxjOjAsZDowLGU6QX0sYjp7YTo0LGI6MCxjOjAsZDowLGU6Qn0s
Yzp7YTo0LGI6MCxjOjAsZDowLGU6Q30sZDp7YTo0LGI6MCxjOjAsZDowLGU6RH0sZTp7YTo0LGI6
MCxjOjAsZDowLGU6RX0sZjp7YTo0LGI6MCxjOjAsZDowLGU6Rn0sZzp7YTo0LGI6MCxjOjAsZDow
LGU6R30saDp7YTo0LGI6MCxjOjAsZDowLGU6SH0saTp7YTo0LGI6MCxjOjAsZDowLGU6SX0sajp7
YTo0LGI6MCxjOjAsZDowLGU6Sn0sazp7YTo0LGI6MCxjOjAsZDowLGU6S30sbDp7YTo0LGI6MCxj
OjAsZDoxLGU6TH0sbTp7YTo0LGI6MCxjOjAsZDoxLGU6TX19LGM6e2E6e2E6NH0sYjp7YTo2fSxj
OnthOjYsYzowfSxkOnthOjZ9LGU6e2E6Nn0sZjp7YTo2fX0sZTp7YjowLGM6MX0saDp7ZTowLGE6
NTAsYjowLGQ6MCxjOlt7YToxLGI6WzAsMCwwLDAsMCwwXX0se2E6MixiOlswLDAsMCwwLDAsMF19
LHthOlszLDldLGI6WzAsMCwwLDAsMCwwXX0se2E6QSxiOlswLDAsMCwwLDAsMF19LHthOkIsYjpb
MCwwLDAsMCwwLDBdfSx7YTpbQyxEXSxiOlswLDAsMCwwLDAsMF19LHthOkUsYjpbMCwwLDAsMCww
LDBdfV19LGo6e2E6MCxiOjB9fQo+PiA+Pj4gPj4KPj4gPj4+ID4+IFNvIHdoYXQncyB0aGUgZ3Jh
bmQgaWRlYSB3aXRoIHRoaXMgYnJhY2VzIGZvcm1hdD8gSSdtIG5vdCBnZXR0aW5nIGl0Lgo+PiA+
Pj4gPgo+PiA+Pj4gPiAgIC0gSXQgYWxsb3dzIHRvIGRlc2NyaWJlIGEgdHJlZSBzdHJ1Y3R1cmUK
Pj4gPj4+ID4gICAtIEl0IGlzIGFzY2lpIChlYXN5IHRvIGR1bXAsIGVhc3kgdG8gY29weS1wYXN0
ZSkKPj4gPj4+ID4gICAtIEl0IGlzIHNtYWxsIChhcyBJIGV4cGxhaW4gYmVsb3csIHNpemUgbWF0
dGVycykKPj4gPj4+ID4gICAtIFNpbmNlIGl0IGlzIHNpbWlsYXIgdG8gSlNPTiwgdGhlIHN0cnVj
dHVyZSBpcyBvYnZpb3VzIHRvIG1hbnkgcGVvcGxlCj4+ID4+PiA+Cj4+ID4+PiA+IEFueXdheSwg
SSBhbSBub3QgdGhlIGF1dGhvciBvZiB0aGF0IGFuZCBJIGhhdmUgdG8gZGVhbCB3aXRoIGl0Lgo+
PiA+Pj4KPj4gPj4+IEknbSBhIHN1cHBvcnRlZCBmb3IgSlNPTiBsaWtlIGZvcm1hdHMsIGZsZXhp
YmlsaXR5IGFuZCBhbGwgdGhhdC4gQnV0Cj4+ID4+PiB0aGV5IGJlbG9uZyB0byB1c2VyIHNwYWNl
LCBub3Qga2VybmVsLgo+PiA+Pj4KPj4gPj4+ID4+IFVzdWFsbHkgdGhlIGRyaXZlcnMganVzdCBj
b25zaWRlciB0aGlzIGtpbmQgb2YgZmlybXdhcmUgY29uZmlndXJhdGlvbgo+PiA+Pj4gPj4gZGF0
YSBhcyBhIGJpbmFyeSBibG9iIGFuZCBkdW1wIGl0IHRvIHRoZSBmaXJtd2FyZSwgd2l0aG91dCBr
bm93aW5nIHdoYXQKPj4gPj4+ID4+IHRoZSBkYXRhIGNvbnRhaW5zLiBDYW4ndCB5b3UgZG8gdGhl
IHNhbWU/Cj4+ID4+PiA+Cj4+ID4+PiA+IFtJIGRpZG4ndCBoYWQgcmVjZWl2ZWQgdGhpcyBtYWls
IDooIF0KPj4gPj4+ID4KPj4gPj4+ID4gVGhlIGlkZWEgd2FzIGFsc28gdG8gc2VuZCBpdCBhcyBh
IGJpbmFyeSBibG9iLiBIb3dldmVyLCB0aGUgZmlybXdhcmUgdXNlCj4+ID4+PiA+IGEgbGltaXRl
ZCBidWZmZXIgKDE1MDAgYnl0ZXMpIHRvIHBhcnNlIGl0LiBJbiBtb3N0IG9mIGNhc2UgdGhlIFBE
UyBleGNlZWRzCj4+ID4+PiA+IHRoaXMgc2l6ZS4gU28sIHdlIGhhdmUgdG8gc3BsaXQgdGhlIFBE
UyBiZWZvcmUgdG8gc2VuZCBpdC4KPj4gPj4+ID4KPj4gPj4+ID4gVW5mb3J0dW5hdGVseSwgd2Ug
Y2FuJ3Qgc3BsaXQgaXQgYW55d2hlcmUuIFRoZSBQRFMgaXMgYSB0cmVlIHN0cnVjdHVyZSBhbmQK
Pj4gPj4+ID4gdGhlIGZpcm13YXJlIGV4cGVjdHMgdG8gcmVjZWl2ZSBhIHdlbGwgZm9ybWF0dGVk
IHRyZWUuCj4+ID4+PiA+Cj4+ID4+PiA+IFNvLCB0aGUgZWFzaWVzdCB3YXkgdG8gc2VuZCBpdCB0
byB0aGUgZmlybXdhcmUgaXMgdG8gc3BsaXQgdGhlIHRyZWUKPj4gPj4+ID4gYmV0d2VlbiBlYWNo
IHJvb3Qgbm9kZXMgYW5kIHNlbmQgZWFjaCBzdWJ0cmVlIHNlcGFyYXRlbHkgKHNlZSBhbHNvIHRo
ZQo+PiA+Pj4gPiBjb21tZW50IGFib3ZlIHdmeF9zZW5kX3BkcygpKS4KPj4gPj4+ID4KPj4gPj4+
ID4gQW55d2F5LCBzb21lb25lIGhhcyB0byBjb29rIHRoaXMgY29uZmlndXJhdGlvbiBiZWZvcmUg
dG8gc2VuZCBpdCB0byB0aGUKPj4gPj4+ID4gZmlybXdhcmUuIFRoaXMgY291bGQgYmUgZG9uZSBi
eSBhIHNjcmlwdCBvdXRzaWRlIG9mIHRoZSBrZXJuZWwuIFRoZW4gd2UKPj4gPj4+ID4gY291bGQg
Y2hhbmdlIHRoZSBpbnB1dCBmb3JtYXQgdG8gc2ltcGxpZnkgYSBiaXQgdGhlIHByb2Nlc3Npbmcg
aW4gdGhlCj4+ID4+PiA+IGtlcm5lbC4KPj4gPj4+Cj4+ID4+PiBJIHRoaW5rIGEgYmluYXJ5IGZp
bGUgd2l0aCBUTFYgZm9ybWF0IHdvdWxkIGJlIG11Y2ggYmV0dGVyLCBidXQgSSdtIHN1cmUKPj4g
Pj4+IHRoZXJlIGFsc28gb3RoZXIgZ29vZCBjaG9pc2VzLgo+PiA+Pj4KPj4gPj4+ID4gSG93ZXZl
ciwgdGhlIGRyaXZlciBoYXMgYWxyZWFkeSBzb21lIHVzZXJzIGFuZCBJIHdvcnJ5IHRoYXQgY2hh
bmdpbmcKPj4gPj4+ID4gdGhlIGlucHV0IGZvcm1hdCB3b3VsZCBsZWFkIHRvIGEgbWVzcy4KPj4g
Pj4+Cj4+ID4+PiBZb3UgY2FuIGltcGxlbWVudCBhIHNjcmlwdCB3aGljaCBjb252ZXJ0cyB0aGUg
b2xkIGZvcm1hdCB0byB0aGUgbmV3Cj4+ID4+PiBmb3JtYXQuIEFuZCB5b3UgY2FuIHVzZSBkaWZm
ZXJlbnQgbmFtaW5nIHNjaGVtZSBpbiB0aGUgbmV3IGZvcm1hdCBzbwo+PiA+Pj4gdGhhdCB3ZSBk
b24ndCBhY2NpZGVudGFsbHkgbG9hZCB0aGUgb2xkIGZvcm1hdC4gQW5kIGV2ZW4gYmV0dGVyIGlm
IHlvdQo+PiA+Pj4gYWRkIGEgc29tZSBraW5kIG9mIHNpZ25hdHVyZSBpbiB0aGUgbmV3IGZvcm1h
dCBhbmQgZ2l2ZSBhIHByb3BlciBlcnJvcgo+PiA+Pj4gZnJvbSB0aGUgZHJpdmVyIGlmIGl0IGRv
ZXNuJ3QgbWF0Y2guCj4+ID4+Cj4+ID4+IE9rLiBJIGFtIGdvaW5nIHRvIGNoYW5nZSB0aGUgaW5w
dXQgZm9ybWF0LiBJIHRoaW5rIHRoZSBuZXcgZnVuY3Rpb24gaXMKPj4gPj4gZ29pbmcgdG8gbG9v
ayBsaWtlOgo+PiA+Pgo+PiA+PiBpbnQgd2Z4X3NlbmRfcGRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2
LCB1OCAqYnVmLCBzaXplX3QgYnVmX2xlbikKPj4gPj4gewo+PiA+PiAgICAgIGludCByZXQ7Cj4+
ID4+ICAgICAgaW50IHN0YXJ0ID0gMDsKPj4gPj4KPj4gPj4gICAgICBpZiAoYnVmW3N0YXJ0XSAh
PSAneycpIHsKPj4gPj4gICAgICAgICAgICAgIGRldl9lcnIod2Rldi0+ZGV2LCAidmFsaWQgUERT
IHN0YXJ0IHdpdGggJ3snLiBEaWQgeW91IGZvcmdldCB0byBjb21wcmVzcyBpdD9cbiIpOwo+PiA+
PiAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4+ID4+ICAgICAgfQo+PiA+PiAgICAgIHdo
aWxlIChzdGFydCA8IGJ1Zl9sZW4pIHsKPj4gPj4gICAgICAgICAgICAgIGxlbiA9IHN0cm5sZW4o
YnVmICsgc3RhcnQsIGJ1Zl9sZW4gLSBzdGFydCk7Cj4+ID4+ICAgICAgICAgICAgICBpZiAobGVu
ID4gV0ZYX1BEU19NQVhfU0laRSkgewo+PiA+PiAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJy
KHdkZXYtPmRldiwgIlBEUyBjaHVuayBpcyB0b28gYmlnIChsZWdhY3kgZm9ybWF0PylcbiIpOwo+
PiA+PiAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4gPj4gICAgICAgICAg
ICAgIH0KPj4gPj4gICAgICAgICAgICAgIGRldl9kYmcod2Rldi0+ZGV2LCAic2VuZCBQRFMgJyVz
J1xuIiwgYnVmICsgc3RhcnQpOwo+PiA+PiAgICAgICAgICAgICAgcmV0ID0gd2Z4X2hpZl9jb25m
aWd1cmF0aW9uKHdkZXYsIGJ1ZiArIHN0YXJ0LCBsZW4pOwo+PiA+PiAgICAgICAgICAgICAgLyog
RklYTUU6IEFkZCBlcnJvciBoYW5kbGluZyBoZXJlICovCj4+ID4+ICAgICAgICAgICAgICBzdGFy
dCArPSBsZW47Cj4+ID4+ICAgICAgfQo+PiA+PiAgICAgIHJldHVybiAwOwo+PiA+Cj4+ID4gRGlk
IHlvdSByZWFkIGF0IGFsbCB3aGF0IEkgd3JvdGUgYWJvdmU/IFBsZWFzZSBkaXRjaCB0aGUgQVND
SUkgZm9ybWF0Cj4+ID4gY29tcGxldGVseS4KPj4gCj4+IFNvcnJ5LCBJIHJlYWQgdGhpcyB0b28g
aGFzdGlseS4gSSBqdXN0IHNhdyAiYnVmW3N0YXJ0XSAhPSAneyciIGFuZAo+PiBhc3N1bWVkIHRo
aXMgaXMgdGhlIHNhbWUgQVNDSUkgZm9ybWF0LCBidXQgbm90IHN1cmUgYW55bW9yZS4gQ2FuIHlv
dQo+PiBleHBsYWluIHdoYXQgY2hhbmdlcyB5b3UgbWFkZSBub3c/Cj4KPiBUaGUgc2NyaXB0IEkg
YW0gZ29pbmcgdG8gd3JpdGUgd2lsbCBjb21wdXRlIHdoZXJlIHRoZSBQRFMgaGF2ZSB0byBiZSBz
cGxpdAo+ICh0aGlzIHdvcmsgaXMgY3VycmVudGx5IGRvbmUgYnkgdGhlIGRyaXZlcikuIFRoZSBz
Y3JpcHQgd2lsbCBhZGQgYQo+IHNlcGFyYXRpbmcgY2hhcmFjdGVyIChsZXQncyBzYXkgJ1wwJykg
YmV0d2VlbiBlYWNoIGNodW5rLgo+Cj4gVGhlIGRyaXZlciB3aWxsIGp1c3QgaGF2ZSB0byBmaW5k
IHRoZSBzZXBhcmF0aW5nIGNoYXJhY3Rlciwgc2VuZCB0aGUKPiBjaHVuayBhbmQgcmVwZWF0LgoK
SSB3b3VsZCBmb3JnZXQgQVNDSUkgYWx0b2dldGhlciBhbmQgaW1wbGVtZW50IGEgcHJvcGVyIGJp
bmFyeSBmb3JtYXQKbGlrZSBUTFYuIEZvciBleGFtcGxlLCBhdGgxMGsgdXNlcyBUTFYgd2l0aCBi
b2FyZC0yLmJpbiBmaWxlcyAoZ3JlcCBmb3IKZW51bSBhdGgxMGtfYmRfaWVfdHlwZSkuCgpBbHNv
IEkgcmVjb21tZW5kIGNoYW5naW5nIHRoZSBmaWxlICJzaWduYXR1cmUiICgneycpIHRvIHNvbWV0
aGluZyBlbHNlCnNvIHRoYXQgdGhlIGRyaXZlciBkZXRlY3RzIGluY29ycmVjdCBmb3JtYXRzLiBB
bmQgbWF5YmUgZXZlbiB1c2Ugc3VmZml4Ci5wZHMyIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQgdG8g
bWFrZSBpdCBtb3JlIG9idmlvdXMgYW5kIGF2b2lkCmNvbmZ1c2lvbj8KCi0tIApodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8v
d2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJt
aXR0aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
