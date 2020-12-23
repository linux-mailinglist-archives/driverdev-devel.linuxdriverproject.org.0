Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7342E1885
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 06:29:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B83462DAFA;
	Wed, 23 Dec 2020 05:28:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46dUAvgXrXHp; Wed, 23 Dec 2020 05:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62D5223265;
	Wed, 23 Dec 2020 05:28:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC6E21BF41B
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 05:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9878385EE9
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 05:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxCoIuiRVWhh for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 05:28:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-15.mailgun.net (m43-15.mailgun.net [69.72.43.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7241E85EB8
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 05:28:51 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608701331; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=+PgCftFCNKFXUIzjrZaJrrb1dDkJP0N7TDJaNh3c03M=;
 b=LXKMeb7i9Tp1fsJ81AgibFAXTwxbMCUKdy6gf/hs8/33uMCOPvbmeETIXQLo2Vw+Nfv0lkQ3
 /a6F724KpOuhN3oCXZUrsPRjt3PD+Kod88pDq8lfLtRvEX4YlHfspNvu/Br2ri4jTAPT4l2i
 hxPXzBKy4CK/ZI7qCsKOUmW72bM=
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n09.prod.us-east-1.postgun.com with SMTP id
 5fe2d592e61d77c971cf5648 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 23 Dec 2020 05:28:50
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8BB2BC433ED; Wed, 23 Dec 2020 05:28:49 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 460EBC433C6;
 Wed, 23 Dec 2020 05:28:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 460EBC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v3 09/24] wfx: add hwio.c/hwio.h
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <87lfdp98rw.fsf@codeaurora.org> <X+IQRct0Zsm87H4+@kroah.com>
 <4279510.LvFx2qVVIh@pc-42>
Date: Wed, 23 Dec 2020 07:28:44 +0200
In-Reply-To: <4279510.LvFx2qVVIh@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Tue, 22 Dec 2020 22:02:09 +0100")
Message-ID: <87im8t5bw3.fsf@codeaurora.org>
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
IE9uIFR1ZXNkYXkgMjIgRGVjZW1iZXIgMjAyMCAxNjoyNzowMSBDRVQgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOgo+PiAKPj4gT24gVHVlLCBEZWMgMjIsIDIwMjAgYXQgMDU6MTA6MTFQTSArMDIw
MCwgS2FsbGUgVmFsbyB3cm90ZToKPj4gPiBKZXJvbWUgUG91aWxsZXIgPEplcm9tZS5Qb3VpbGxl
ckBzaWxhYnMuY29tPiB3cml0ZXM6Cj4+ID4KPj4gPiA+ICsvKgo+PiA+ID4gKyAqIEludGVybmFs
IGhlbHBlcnMuCj4+ID4gPiArICoKPj4gPiA+ICsgKiBBYm91dCBDT05GSUdfVk1BUF9TVEFDSzoK
Pj4gPiA+ICsgKiBXaGVuIENPTkZJR19WTUFQX1NUQUNLIGlzIGVuYWJsZWQsIGl0IGlzIG5vdCBw
b3NzaWJsZSB0byBydW4gRE1BIG9uIHN0YWNrCj4+ID4gPiArICogYWxsb2NhdGVkIGRhdGEuIEZ1
bmN0aW9ucyBiZWxvdyB0aGF0IHdvcmsgd2l0aCByZWdpc3RlcnMgKGFrYSBmdW5jdGlvbnMKPj4g
PiA+ICsgKiBlbmRpbmcgd2l0aCAiMzIiKSBhdXRvbWF0aWNhbGx5IHJlYWxsb2NhdGUgYnVmZmVy
cyB3aXRoIGttYWxsb2MuIEhvd2V2ZXIsCj4+ID4gPiArICogZnVuY3Rpb25zIHRoYXQgd29yayB3
aXRoIGFyYml0cmFyeSBsZW5ndGggYnVmZmVycyBsZXQncyBjYWxsZXIgdG8gaGFuZGxlCj4+ID4g
PiArICogbWVtb3J5IGxvY2F0aW9uLiBJbiBkb3VidCwgZW5hYmxlIENPTkZJR19ERUJVR19TRyB0
byBkZXRlY3QgYmFkbHkgbG9jYXRlZAo+PiA+ID4gKyAqIGJ1ZmZlci4KPj4gPiA+ICsgKi8KPj4g
Pgo+PiA+IFRoaXMgc291bmRzIHZlcnkgaGFja3kgdG8gbWUsIEkgaGF2ZSB1bmRlcnN0b29kIHRo
YXQgeW91IHNob3VsZCBuZXZlcgo+PiA+IHVzZSBzdGFjayB3aXRoIERNQS4KPj4gCj4+IFlvdSBz
aG91bGQgbmV2ZXIgZG8gdGhhdCBiZWNhdXNlIHNvbWUgcGxhdGZvcm1zIGRvIG5vdCBzdXBwb3J0
IGl0LCBzbyBubwo+PiBkcml2ZXIgc2hvdWxkIGV2ZXIgdHJ5IHRvIGRvIHRoYXQgYXMgdGhleSBk
byBub3Qga25vdyB3aGF0IHBsYXRmb3JtIHRoZXkKPj4gYXJlIHJ1bm5pbmcgb24uCj4KPiBZZXMs
IEkgaGF2ZSBsZWFybmVkIHRoaXMgcnVsZSB0aGUgaGFyZCB3YXkuCj4KPiBUaGVyZSBpcyBubyBi
ZXR0ZXIgd2F5IHRoYW4gYSBjb21tZW50IHRvIHdhcm4gdGhlIHVzZXIgdGhhdCB0aGUgYXJndW1l
bnQKPiB3aWxsIGJlIHVzZWQgd2l0aCBhIERNQT8gQSBTcGFyc2UgYW5ub3RhdGlvbiwgZm9yIGV4
YW1wbGU/CgpJIGhhdmUgbm90IHNlZW4gYW55dGhpbmcsIGJ1dCBzb21ldGhpbmcgbGlrZSBzcGFy
c2UgYW5ub3RhdGlvbiB3b3VsZCBiZQp1c2VmdWwuIFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3Ug
ZmluZCBhbnl0aGluZyBsaWtlIHRoYXQuCgpCdXQgSSB0aGluayB0aGF0IENPTkZJR19WTUFQX1NU
QUNLIGlzIGlycmVsZXZhbnQgYW5kIHRoZSBjb21tZW50IHNob3VsZApiZSBjbGFyaWZpZWQgdGhh
dCB1c2luZyBzdGFjayBtZW1vcnkgbXVzdCBOT1QgYmUgdXNlZCBmb3IgRE1BIG9wZXJhdGlvbnMK
aW4gYW55IGNpcmN1bXN0YW5jZXMuCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9w
cm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVs
Lm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
