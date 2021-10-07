Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DE5424F36
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 10:23:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAC6C403C7;
	Thu,  7 Oct 2021 08:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRaoNyiCK5zq; Thu,  7 Oct 2021 08:23:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15DB44002D;
	Thu,  7 Oct 2021 08:23:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 798971BF477
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id 68ADD4097C
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id XGm4Nn7RUA3t for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 08:23:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 1D58340952
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 08:23:15 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633594998; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=WaZcbZfDqeaUTo7u2ooF6EKbTrALivgM4HMtK+FbJdQ=;
 b=Qem5LShLopXm380gGkkSXHbjY1ji6kv8KWvok0biGmYmQ3wbJxPgevlhYPhIYNP/ZyT0PKqY
 zemvd7uCpqpsB3bhVCk1ooHvVQ+Sj6TTSiPOF6yXwFOJY3wEOx4hpIxDgB1p+b1RiyTrTTps
 3DNjVTWyBT1qhD7KyDUimWOZ5NE=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 615eae629ebaf35aaa4cc4a2 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 08:22:58
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 107D9C4360C; Thu,  7 Oct 2021 08:22:58 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D86F6C4338F;
 Thu,  7 Oct 2021 08:22:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org D86F6C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v8 00/24] wfx: get out from the staging area
References: <20211005135400.788058-1-Jerome.Pouiller@silabs.com>
 <871r4zft98.fsf@codeaurora.org> <4889546.ZpuqzhuOv5@pc-42>
Date: Thu, 07 Oct 2021 11:22:50 +0300
In-Reply-To: <4889546.ZpuqzhuOv5@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Tue, 05 Oct 2021 17:51:57 +0200")
Message-ID: <87h7dtckh1.fsf@codeaurora.org>
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
IE9uIFR1ZXNkYXkgNSBPY3RvYmVyIDIwMjEgMTY6MjA6MTkgQ0VTVCBLYWxsZSBWYWxvIHdyb3Rl
Ogo+PiBKZXJvbWUgUG91aWxsZXIgPEplcm9tZS5Qb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6
Cj4+IAo+PiA+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJz
LmNvbT4KPiBbLi4uXQo+PiA+Cj4+ID4gdjg6Cj4+ID4gICAtIENoYW5nZSB0aGUgd2F5IHRoZSBE
VCBpcyBoYW5kbGVkLiBUaGUgdXNlciBjYW4gbm93IHNwZWNpZnkgdGhlIG5hbWUgb2YKPj4gPiAg
ICAgdGhlIGJvYXJkICg9IGNoaXAgKyBhbnRlbm5hKSBoZSB1c2UuIEl0IGVhc2llciBmb3IgYm9h
cmQgZGVzaWduZXJzIHRvCj4+ID4gICAgIGFkZCBuZXcgZW50cmllcy4gSSBwbGFuIHRvIHNlbmQg
YSBQUiB0byBsaW51eC1maXJtd2FyZSB0byBpbmNsdWRlIFBEUwo+PiA+ICAgICBmaWxlcyBvZiB0
aGUgZGV2ZWxvcHBlbWVudCBib2FyZHMgYmVsb25nIHRoZSBmaXJtd2FyZSAoSSBhbHNvIHBsYW4g
dG8KPj4gPiAgICAgcmVsb2NhdGUgdGhlc2UgZmlsZSBpbnRvIHdmeC8gaW5zdGVhZCBvZiBzaWxh
YnMvKS4gKEthbGxlLCBQYWxpKQo+PiA+ICAgLSBQcmVmaXggdmlzaWJsZSBmdW5jdGlvbnMgYW5k
IHN0cnVjdHMgd2l0aCAid2Z4XyIuIEkgbW9zdGx5IGtlcHQgdGhlCj4+ID4gICAgIGNvZGUgdW5k
ZXIgODAgY29sdW1ucy4gKEthbGxlLCBQYWxpLCBHcmVnKQo+PiA+ICAgLSBSZW1vdmUgc3VwcG9y
dCBmb3IgZm9yY2VfcHNfdGltZW91dCBmb3Igbm93LiAoS2FsbGUpCj4+ID4gICAtIEZpeCBsaWNl
bnNlcyBvZiBNYWtlZmlsZSwgS2NvbmZpZyBhbmQgaGlmX2FwaSouaC4gKEthbGxlKQo+PiA+ICAg
LSBEbyBub3QgbWl4IGFuZCBtYXRjaCBlbmRpYW5lc3MgaW4gc3RydWN0IGhpZl9pbmRfc3RhcnR1
cC4gKEthbGxlKQo+PiA+ICAgLSBSZW1vdmUgbWFnaWMgdmFsdWVzLiAoS2FsbGUpCj4+ID4gICAt
IFVzZSBJU19BTElHTkVEKCkuIChCVFcsIFBUUl9JU19BTElHTkVEKCkgZG9lcyBub3QgZXhpc3Q/
KSAoS2FsbGUpCj4+ID4gICAtIEkgaGF2ZSBhbHNvIG5vdGljZWQgdGhhdCBzb21lIGhlYWRlcnMg
ZmlsZXMgZGlkIG5vdCBkZWNsYXJlIGFsbCB0aGUKPj4gPiAgICAgc3RydWN0IHRoZXkgdXNlZC4K
Pj4gPgo+PiA+ICAgVGhlc2UgaXNzdWVzIHJlbWFpbiAoSSBob3BlIHRoZXkgYXJlIG5vdCBibG9j
a2Vycyk6Cj4+ID4gICAtIEkgaGF2ZSBjdXJyZW50bHkgbm8gaWRlYXMgaG93IHRvIGltcHJvdmUv
c2ltcGxpZnkgdGhlIHBhcnNpbmcgUERTIGZpbGUuCj4+ID4gICAgIChLYWxsZSkKPj4gPiAgIC0g
V2Ugd291bGQgbGlrZSB0byByZWxhdGUgdGhlIFNESU8gcXVpcmtzIGludG8gbW1jL2NvcmUvcXVp
cmtzLmgsIGJ1dCB0aGUKPj4gPiAgICAgQVBJIHRvIGRvIHRoYXQgZG9lcyBub3QgeWV0IGV4aXN0
LiAoVWxmLCBQYWxpKQo+PiAKPj4gU28gaXMgdGhpcyBhIGRpcmVjdCB2ZXJzaW9uIGZyb20gc3Rh
Z2luZy1uZXh0PyBJZiB5ZXMsIHdoYXQgY29tbWl0IGlkIGRpZAo+PiB5b3UgdXNlPyBPciBkbyB5
b3UgaGF2ZSB5b3VyIG93biBzZXQgb2YgcGF0Y2hlcyBvbiB0b3Agb2Ygc3RhZ2luZy1uZXh0Pwo+
Cj4gSSBhbSBiYXNlZCBvbiA1ZTU3YzY2OGRjMDkgZnJvbSBzdGFnaW5nLW5leHQuIChJIGhhdmUg
bm90IHJlYmFzZWQgaXQgYmV0d2Vlbgo+IHY3IGFuZCB2OCkKCkNvbW1pdCA1ZTU3YzY2OGRjMDkg
aXMgZnJvbSBTZXAgMTR0aCwgc28gSSB0YWtlIGl0IHRoYXQgeW91IGhhdmUgeW91ciBvbgpwYXRj
aGVzIG9uIHRvcCBvZiBzdGFnaW5nLW5leHQuCgpCdXQgcGxlYXNlIGRvbid0IHNlbmQgYSBuZXcg
dmVyc2lvbiBvZiB0aGUgcGF0Y2hzZXQgdG9vIG9mdGVuLCBhdCBsZWFzdAp0cnkgdG8ga2VlcCB0
d28gd2Vla3MgYmV0d2VlbiB2ZXJzaW9ucyBidXQgcHJlZmVyYWJseSBldmVuIG1vcmUuIEl0J3MK
cXVpdGUgZGlmZmljdWx0IHdoZW4geW91IHNlbmQgYSBuZXcgdmVyc2lvbiBhbmQgdGhlcmUgYXJl
IHN0aWxsIG9uZ29pbmcKZGlzY3Vzc2lvbnMgaW4gdGhlIHByZXZpb3VzIHZlcnNpb24uCgotLSAK
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3Qv
CgpodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50
YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
