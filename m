Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992A92A2ED7
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 16:58:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D4D187360;
	Mon,  2 Nov 2020 15:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o32bpRaQKi77; Mon,  2 Nov 2020 15:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7956F872F8;
	Mon,  2 Nov 2020 15:58:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77CBE1BF32B
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 15:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 632592041D
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 15:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dA-C3oquXYRt for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 15:58:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by silver.osuosl.org (Postfix) with ESMTPS id AA6CA203DE
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 15:58:20 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1604332702; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=kP87ryMp5ujlGNQxxe2/b+S1KvTJacb5RVmVXpD9rUg=;
 b=tU0v7VMdCldb8rXNqgSeAo4gCg8tk0CO89P5TXkH2T86jqZI2s0pgRxIoO8ZgkSt7ivnPtcs
 sFnZV0YcyluSj23cNOK8ZL7Ns8PS7D4AXv99UN2dljezMPeeoRWZTvz5+Ud7fjOfWLcNwaFN
 46hZEMa5sC0p6qkUfI3YRYKffOU=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 5fa02c99b79ce7b2cdf97962 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 02 Nov 2020 15:58:17
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9F494C43385; Mon,  2 Nov 2020 15:58:16 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7C085C433C9;
 Mon,  2 Nov 2020 15:58:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7C085C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 01/23] dt-bindings: introduce silabs,wfx.yaml
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
 <20201012104648.985256-2-Jerome.Pouiller@silabs.com>
 <20201013164935.GA3646933@bogus> <3929101.dIHeVNgAIR@pc-42>
Date: Mon, 02 Nov 2020 17:58:11 +0200
In-Reply-To: <3929101.dIHeVNgAIR@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Wed, 14 Oct 2020 15:49:12 +0200")
Message-ID: <87imanpx7w.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIFR1ZXNkYXkgMTMgT2N0b2JlciAyMDIwIDE4OjQ5OjM1IENFU1QgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4+IE9uIE1vbiwgT2N0IDEyLCAyMDIwIGF0IDEyOjQ2OjI2UE0gKzAyMDAsIEplcm9tZSBQ
b3VpbGxlciB3cm90ZToKPj4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWls
bGVyQHNpbGFicy5jb20+Cj4gWy4uLl0KPj4gPiArICBOb3RlIHRoYXQgaW4gYWRkIG9mIHRoZSBw
cm9wZXJ0aWVzIGJlbG93LCB0aGUgV0Z4IGRyaXZlciBhbHNvIHN1cHBvcnRzCj4+ID4gKyAgYG1h
Yy1hZGRyZXNzYCBhbmQgYGxvY2FsLW1hYy1hZGRyZXNzYCBhcyBkZXNjcmliZWQgaW4KPj4gPiAr
ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0LnR4dAo+PiAK
Pj4gTm90ZSB3aGF0IGV0aGVybmV0LnR4dCBjb250YWlucy4uLiBUaGlzIHNob3VsZCBoYXZlIGEg
JHJlZiB0bwo+PiBldGhlcm5ldC1jb250cm9sbGVyLnlhbWwgdG8gZXhwcmVzcyB0aGUgYWJvdmUu
Cj4+IAo+PiBZb3UgY2FuIGFkZCAnbWFjLWFkZHJlc3M6IHRydWUnIGlmIHlvdSB3YW50IHRvIGJl
IGV4cGxpY2l0IGFib3V0IHdoYXQKPj4gcHJvcGVydGllcyBhcmUgdXNlZC4KPgo+IEhlcmUsIG9u
bHkgbWFjLWFkZHJlc3MgYW5kIGxvY2FsLW1hYy1hZGRyZXNzIGFyZSBzdXBwb3J0ZWQuIFNvLCB3
b3VsZCB0aGUKPiBjb2RlIGJlbG93IGRvIHRoZSBqb2I/Cj4KPiAgIGxvY2FsLW1hYy1hZGRyZXNz
Ogo+ICAgICAkcmVmOiBldGhlcm5ldC1jb250cm9sbGVyLnlhbWwjL3Byb3BlcnRpZXMvbG9jYWwt
bWFjLWFkZHJlc3MKPgo+ICAgbWFjLWFkZHJlc3M6Cj4gICAgICRyZWY6IGV0aGVybmV0LWNvbnRy
b2xsZXIueWFtbCMvcHJvcGVydGllcy9tYWMtYWRkcmVzcwo+Cj4KPiBbLi4uXQo+PiA+ICsgIHNw
aS1tYXgtZnJlcXVlbmN5Ogo+PiA+ICsgICAgZGVzY3JpcHRpb246IChTUEkgb25seSkgTWF4aW11
bSBTUEkgY2xvY2tpbmcgc3BlZWQgb2YgZGV2aWNlIGluIEh6Lgo+PiAKPj4gTm8gbmVlZCB0byBy
ZWRlZmluZSBhIGNvbW1vbiBwcm9wZXJ0eS4KPgo+IFdoZW4gYSBwcm9wZXJ0eSBpcyBzcGVjaWZp
YyB0byBhIGJ1cywgSSB3b3VsZCBoYXZlIGxpa2UgdG8gZXhwbGljaXRseQo+IHNheSBpdC4gVGhh
dCdzIHdoeSBJIHJlZGVmaW5lZCB0aGUgZGVzY3JpcHRpb24uCj4KPgo+IFsuLi5dCj4+ID4gKyAg
Y29uZmlnLWZpbGU6Cj4+ID4gKyAgICBkZXNjcmlwdGlvbjogVXNlIGFuIGFsdGVybmF0aXZlIGZp
bGUgYXMgUERTLiBEZWZhdWx0IGlzIGB3ZjIwMC5wZHNgLiBPbmx5Cj4+ID4gKyAgICAgIG5lY2Vz
c2FyeSBmb3IgZGV2ZWxvcG1lbnQvZGVidWcgcHVycG9zZS4KPj4gCj4+ICdmaXJtd2FyZS1uYW1l
JyBpcyB0eXBpY2FsbHkgd2hhdCB3ZSdkIHVzZSBoZXJlLiBUaG91Z2ggaWYganVzdCBmb3IKPj4g
ZGVidWcvZGV2LCBwZXJoYXBzIGRvIGEgZGVidWdmcyBpbnRlcmZhY2UgZm9yIHRoaXMgaW5zdGVh
ZC4gQXMgRFQgc2hvdWxkCj4+IGNvbWUgZnJvbSB0aGUgZmlybXdhcmUvYm9vdGxvYWRlciwgcmVx
dWlyaW5nIGNoYW5naW5nIHRoZSBEVCBmb3IKPj4gZGV2L2RlYnVnIGlzIG5vdCB0aGUgZWFzaWVz
dCB3b3JrZmxvdyBjb21wYXJlZCB0byBkb2luZyBzb21ldGhpbmcgZnJvbQo+PiB1c2Vyc3BhY2Uu
Cj4KPiBUaGlzIGZpbGUgaXMgbm90IGEgZmlybXdhcmUuIEl0IG1haW5seSBjb250YWlucyBkYXRh
IHJlbGF0ZWQgdG8gdGhlCj4gYW50ZW5uYS4gQXQgdGhlIGJlZ2lubmluZywgdGhpcyBwcm9wZXJ0
eSBoYXMgYmVlbiBhZGRlZCBmb3IKPiBkZXZlbG9wbWVudC4gV2l0aCB0aGUgdGltZSwgSSB0aGlu
ayBpdCBjYW4gYmUgdXNlZCB0byAgaGF2ZSBvbmUgZGlzawo+IGltYWdlIGZvciBzZXZlcmFsIGRl
dmljZXMgdGhhdCBkaWZmZXIgb25seSBpbiBhbnRlbm5hLgo+Cj4gSSBhbSBnb2luZyB0byByZW1v
dmUgdGhlIHBhcnQgYWJvdXQgZGV2ZWxvcG1lbnQvZGVidWcgcHVycG9zZS4KCmNvbmZpZy1maWxl
IGRvZXNuJ3Qgc291bmQgcmlnaHQgZWl0aGVyLiBTbyB3aGF0IGtpbmQgb2YgZGF0YSBpcyB0aGlz
LApjYWxpYnJhdGlvbiBkYXRhIG9yIHdoYXQ/CgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2ku
a2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
