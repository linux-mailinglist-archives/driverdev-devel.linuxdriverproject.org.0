Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3C2286F6D
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 09:30:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E4C88691E;
	Thu,  8 Oct 2020 07:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dk0JJljqqnqJ; Thu,  8 Oct 2020 07:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9ABB86A56;
	Thu,  8 Oct 2020 07:30:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 805AC1BF2FA
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 07:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7C02A8744D
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 07:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pPcaPSTfOMBZ for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 07:30:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 40F70873A1
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 07:30:13 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1602142213; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=BSHe7bjq6nASZP/I6WI8Us5JI4n8DYQ9onuwRyS8E8Y=;
 b=gWHHpa1fVr1I8jR2dYDj/4v8N8TtqMFI69Qaq3nICtt2bMwzYSbAQzzoOCB4OX54+GxQWQS4
 zWBMwIRePQbBqeh7e0gMP58tD3w5AuMVZ6X6g1EAABiIkR6pt9waMTLoL/sKPyGIpxeh8tH1
 uzboTINaBVHucuMhu5tHRQ+62XU=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 5f7ec004d63768e57bc9b57b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 08 Oct 2020 07:30:12
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A01C2C43385; Thu,  8 Oct 2020 07:30:11 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0E4E3C433F1;
 Thu,  8 Oct 2020 07:30:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0E4E3C433F1
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/7] wfx: move out from the staging area
References: <20201007101943.749898-1-Jerome.Pouiller@silabs.com>
 <20201007105513.GA1078344@kroah.com>
Date: Thu, 08 Oct 2020 10:30:06 +0300
In-Reply-To: <20201007105513.GA1078344@kroah.com> (Greg Kroah-Hartman's
 message of "Wed, 7 Oct 2020 12:55:13 +0200")
Message-ID: <87ft6p2n0h.fsf@codeaurora.org>
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

R3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JpdGVzOgoK
PiBPbiBXZWQsIE9jdCAwNywgMjAyMCBhdCAxMjoxOTozNlBNICswMjAwLCBKZXJvbWUgUG91aWxs
ZXIgd3JvdGU6Cj4+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2ls
YWJzLmNvbT4KPj4gCj4+IEkgdGhpbmsgdGhlIHdmeCBkcml2ZXIgaXMgbm93IG1hdHVyZSBlbm91
Z2ggdG8gYmUgYWNjZXB0ZWQgaW4gdGhlCj4+IGRyaXZlcnMvbmV0L3dpcmVsZXNzIGRpcmVjdG9y
eS4KPj4gCj4+IFRoZXJlIGlzIHN0aWxsIG9uZSBpdGVtIG9uIHRoZSBUT0RPIGxpc3QuIEl0IGlz
IGFuIGlkZWEgdG8gaW1wcm92ZSB0aGUgcmF0ZQo+PiBjb250cm9sIGluIHNvbWUgcGFydGljdWxh
ciBjYXNlc1sxXS4gSG93ZXZlciwgdGhlIGN1cnJlbnQgcGVyZm9ybWFuY2VzIG9mIHRoZQo+PiBk
cml2ZXIgc2VlbSB0byBzYXRpc2Z5IGV2ZXJ5b25lLiBJbiBhZGQsIHRoZSBzdWdnZXN0ZWQgY2hh
bmdlIGlzIGxhcmdlIGVub3VnaC4KPj4gU28sIEkgd291bGQgcHJlZmVyIHRvIGltcGxlbWVudCBp
dCBvbmx5IGlmIGl0IHJlYWxseSBzb2x2ZXMgYW4gaXNzdWUuIEkgdGhpbmsgaXQKPj4gaXMgbm90
IGFuIG9ic3RhY2xlIHRvIG1vdmUgdGhlIGRyaXZlciBvdXQgb2YgdGhlIHN0YWdpbmcgYXJlYS4K
Pj4gCj4+IEluIG9yZGVyIHRvIGNvbXBseSB3aXRoIHRoZSBsYXN0IHJ1bGVzIGZvciB0aGUgRFQg
YmluZGluZ3MsIEkgaGF2ZSBjb252ZXJ0ZWQgdGhlCj4+IGRvY3VtZW50YXRpb24gdG8geWFtbC4g
SSBhbSBtb2RlcmF0ZWx5IGhhcHB5IHdpdGggdGhlIHJlc3VsdC4gRXNwZWNpYWxseSwgZm9yCj4+
IHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgYmluZGluZy4gQW55IGNvbW1lbnRzIGFyZSB3ZWxjb21l
Lgo+PiAKPj4gVGhlIHNlcmllcyBhbHNvIHVwZGF0ZSB0aGUgY29weXJpZ2h0cyBkYXRlcyBvZiB0
aGUgZmlsZXMuIEkgZG9uJ3Qga25vdyBleGFjdGx5Cj4+IGhvdyB0aGlzIGtpbmQgb2YgY2hhbmdl
cyBzaG91bGQgYmUgc2VudC4gSXQncyBhIGJpdCB3ZWlyZCB0byBjaGFuZ2UgYWxsIHRoZQo+PiBj
b3B5cmlnaHRzIGluIG9uZSBjb21taXQsIGJ1dCBJIGRvIG5vdCBzZWUgYW55IGJldHRlciB3YXku
Cj4+IAo+PiBJIGFsc28gaW5jbHVkZSBhIGZldyBmaXhlcyBJIGhhdmUgZm91bmQgdGhlc2UgbGFz
dCB3ZWVrcy4KPj4gCj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzMwOTk1NTku
Z3YzUTc1S25OMUBwYy00Mgo+Cj4gSSdsbCB0YWtlIHRoZSBmaXJzdCA2IHBhdGNoZXMgaGVyZSwg
dGhlIGxhc3Qgb25lIHlvdSBzaG91bGQgd29yayB3aXRoCj4gdGhlIHdpcmVsZXNzIG1haW50YWlu
ZXJzIHRvIGdldCByZXZpZXdlZC4KPgo+IE1heWJlIHRoYXQgbWlnaHQgd2FudCB0byB3YWl0IHVu
dGlsIGFmdGVyIDUuMTAtcmMxIGlzIG91dCwgd2l0aCBhbGwgb2YKPiB0aGVzZSBjaGFuZ2VzIGlu
IGl0LCBtYWtpbmcgaXQgYW4gZWFzaWVyIG1vdmUuCgpZZXMsIHRoZSBkcml2ZXIgbmVlZHMgdG8g
YmUgcmV2aWV3ZWQgaW4gbGludXgtd2lyZWxlc3MgbGlzdC4gSSByZWNvbW1lbmQKc3VibWl0dGlu
ZyB0aGUgd2hvbGUgZHJpdmVyIGluIGEgcGF0Y2hzZXQgd2l0aCBvbmUgZmlsZSBwZXIgcGF0Y2gs
IHdoaWNoCnNlZW1zIHRvIGJlIHRoZSBlYXNpZXN0IHdheSB0byByZXZpZXcgYSBmdWxsIGRyaXZl
ci4gVGhlIGZpbmFsIG1vdmUgd2lsbApiZSBpbiBqdXN0IG9uZSBjb21taXQgbW92aW5nIHRoZSBk
cml2ZXIsIGp1c3QgbGlrZSBwYXRjaCA3IGRvZXMgaGVyZS4gQXMKYW4gZXhhbXBsZSBzZWUgaG93
IHdpbGMxMDAwIHJldmlldyB3YXMgZG9uZS4KCkRldmljZSB0cmVlIGJpbmRpbmdzIG5lZWRzIHRv
IGJlIHJldmlld2VkIGJ5IHRoZSBEVCBtYWludGFpbmVyIHNvIENDCmRldmljZXRyZWUgb24gdGhh
dCBwYXRjaC4KCkJ1dCBkbyBub3RlIHRoYXQgdGhlcmUncyBjdXJyZW50bHkgb25lIG5ldyBkcml2
ZXIgaW4gcmV2aWV3IHF1ZXVlLCBzbyBpdAp3aWxsIG1vc3QgbGlrZWx5IHRha2Ugc29tZSB0aW1l
IGJlZm9yZSB3ZnggaXMgcmV2aWV3ZWQuCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2Vy
bmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
