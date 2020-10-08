Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECC62871FE
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 11:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D62308746C;
	Thu,  8 Oct 2020 09:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xbeI-vid24qD; Thu,  8 Oct 2020 09:52:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59D058744D;
	Thu,  8 Oct 2020 09:52:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E3E31BF576
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 09:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6ACC086BAE
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 09:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PzEQ_CjQhOgi for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 09:52:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from z5.mailgun.us (z5.mailgun.us [104.130.96.5])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 575B3869A5
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 09:51:56 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1602150720; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=nlXSo1WC6dBplvW6l8S+mM5RRz5OBfe21tJnXYaiLbs=;
 b=s/aw/6fKm56qZhKF43N+DCr/HyY38o9tqzZyt5yS7hsUefsXJY0URTn6rDlI6htIz1jMjiFV
 ++VJcw6xN/AdK8JAx9diBCoCKgnB2BCNOAsoquNsmB/yErarX72ioJHbJvc+liAjag2LHvTQ
 JUnl+sBI299Tnn/pcrqu7Ixx3i4=
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 5f7ee1070764f13b00f91ce5 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 08 Oct 2020 09:51:03
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4059DC433CA; Thu,  8 Oct 2020 09:51:03 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9E5BAC433CB;
 Thu,  8 Oct 2020 09:51:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9E5BAC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/7] wfx: move out from the staging area
References: <20201007101943.749898-1-Jerome.Pouiller@silabs.com>
 <20201007105513.GA1078344@kroah.com> <87ft6p2n0h.fsf@codeaurora.org>
Date: Thu, 08 Oct 2020 12:50:58 +0300
In-Reply-To: <87ft6p2n0h.fsf@codeaurora.org> (Kalle Valo's message of "Thu, 08
 Oct 2020 10:30:06 +0300")
Message-ID: <877ds12ghp.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

S2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKCj4gR3JlZyBLcm9haC1I
YXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JpdGVzOgo+Cj4+IE9uIFdlZCwg
T2N0IDA3LCAyMDIwIGF0IDEyOjE5OjM2UE0gKzAyMDAsIEplcm9tZSBQb3VpbGxlciB3cm90ZToK
Pj4+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4K
Pj4+IAo+Pj4gSSB0aGluayB0aGUgd2Z4IGRyaXZlciBpcyBub3cgbWF0dXJlIGVub3VnaCB0byBi
ZSBhY2NlcHRlZCBpbiB0aGUKPj4+IGRyaXZlcnMvbmV0L3dpcmVsZXNzIGRpcmVjdG9yeS4KPj4+
IAo+Pj4gVGhlcmUgaXMgc3RpbGwgb25lIGl0ZW0gb24gdGhlIFRPRE8gbGlzdC4gSXQgaXMgYW4g
aWRlYSB0byBpbXByb3ZlIHRoZSByYXRlCj4+PiBjb250cm9sIGluIHNvbWUgcGFydGljdWxhciBj
YXNlc1sxXS4gSG93ZXZlciwgdGhlIGN1cnJlbnQgcGVyZm9ybWFuY2VzIG9mIHRoZQo+Pj4gZHJp
dmVyIHNlZW0gdG8gc2F0aXNmeSBldmVyeW9uZS4gSW4gYWRkLCB0aGUgc3VnZ2VzdGVkIGNoYW5n
ZSBpcyBsYXJnZSBlbm91Z2guCj4+PiBTbywgSSB3b3VsZCBwcmVmZXIgdG8gaW1wbGVtZW50IGl0
IG9ubHkgaWYgaXQgcmVhbGx5IHNvbHZlcyBhbiBpc3N1ZS4gSSB0aGluayBpdAo+Pj4gaXMgbm90
IGFuIG9ic3RhY2xlIHRvIG1vdmUgdGhlIGRyaXZlciBvdXQgb2YgdGhlIHN0YWdpbmcgYXJlYS4K
Pj4+IAo+Pj4gSW4gb3JkZXIgdG8gY29tcGx5IHdpdGggdGhlIGxhc3QgcnVsZXMgZm9yIHRoZSBE
VCBiaW5kaW5ncywgSSBoYXZlIGNvbnZlcnRlZCB0aGUKPj4+IGRvY3VtZW50YXRpb24gdG8geWFt
bC4gSSBhbSBtb2RlcmF0ZWx5IGhhcHB5IHdpdGggdGhlIHJlc3VsdC4gRXNwZWNpYWxseSwgZm9y
Cj4+PiB0aGUgZGVzY3JpcHRpb24gb2YgdGhlIGJpbmRpbmcuIEFueSBjb21tZW50cyBhcmUgd2Vs
Y29tZS4KPj4+IAo+Pj4gVGhlIHNlcmllcyBhbHNvIHVwZGF0ZSB0aGUgY29weXJpZ2h0cyBkYXRl
cyBvZiB0aGUgZmlsZXMuIEkgZG9uJ3Qga25vdyBleGFjdGx5Cj4+PiBob3cgdGhpcyBraW5kIG9m
IGNoYW5nZXMgc2hvdWxkIGJlIHNlbnQuIEl0J3MgYSBiaXQgd2VpcmQgdG8gY2hhbmdlIGFsbCB0
aGUKPj4+IGNvcHlyaWdodHMgaW4gb25lIGNvbW1pdCwgYnV0IEkgZG8gbm90IHNlZSBhbnkgYmV0
dGVyIHdheS4KPj4+IAo+Pj4gSSBhbHNvIGluY2x1ZGUgYSBmZXcgZml4ZXMgSSBoYXZlIGZvdW5k
IHRoZXNlIGxhc3Qgd2Vla3MuCj4+PiAKPj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzMwOTk1NTkuZ3YzUTc1S25OMUBwYy00Mgo+Pgo+PiBJJ2xsIHRha2UgdGhlIGZpcnN0IDYg
cGF0Y2hlcyBoZXJlLCB0aGUgbGFzdCBvbmUgeW91IHNob3VsZCB3b3JrIHdpdGgKPj4gdGhlIHdp
cmVsZXNzIG1haW50YWluZXJzIHRvIGdldCByZXZpZXdlZC4KPj4KPj4gTWF5YmUgdGhhdCBtaWdo
dCB3YW50IHRvIHdhaXQgdW50aWwgYWZ0ZXIgNS4xMC1yYzEgaXMgb3V0LCB3aXRoIGFsbCBvZgo+
PiB0aGVzZSBjaGFuZ2VzIGluIGl0LCBtYWtpbmcgaXQgYW4gZWFzaWVyIG1vdmUuCj4KPiBZZXMs
IHRoZSBkcml2ZXIgbmVlZHMgdG8gYmUgcmV2aWV3ZWQgaW4gbGludXgtd2lyZWxlc3MgbGlzdC4g
SSByZWNvbW1lbmQKPiBzdWJtaXR0aW5nIHRoZSB3aG9sZSBkcml2ZXIgaW4gYSBwYXRjaHNldCB3
aXRoIG9uZSBmaWxlIHBlciBwYXRjaCwgd2hpY2gKPiBzZWVtcyB0byBiZSB0aGUgZWFzaWVzdCB3
YXkgdG8gcmV2aWV3IGEgZnVsbCBkcml2ZXIuIFRoZSBmaW5hbCBtb3ZlIHdpbGwKPiBiZSBpbiBq
dXN0IG9uZSBjb21taXQgbW92aW5nIHRoZSBkcml2ZXIsIGp1c3QgbGlrZSBwYXRjaCA3IGRvZXMg
aGVyZS4gQXMKPiBhbiBleGFtcGxlIHNlZSBob3cgd2lsYzEwMDAgcmV2aWV3IHdhcyBkb25lLgo+
Cj4gRGV2aWNlIHRyZWUgYmluZGluZ3MgbmVlZHMgdG8gYmUgcmV2aWV3ZWQgYnkgdGhlIERUIG1h
aW50YWluZXIgc28gQ0MKPiBkZXZpY2V0cmVlIG9uIHRoYXQgcGF0Y2guCgpCVFcsIEkgd3JvdGUg
c29tZSBpbnN0cnVjdGlvbnMgZm9yIG5ldyB3aXJlbGVzcyBkcml2ZXJzOgoKaHR0cHM6Ly93aXJl
bGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRp
bmdwYXRjaGVzI25ld19kcml2ZXIKCi0tIApodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3By
b2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJuZWwu
b3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
