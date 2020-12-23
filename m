Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9642E184B
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 06:16:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DE8E87152;
	Wed, 23 Dec 2020 05:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p0HsPVl+eaym; Wed, 23 Dec 2020 05:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A27986FE7;
	Wed, 23 Dec 2020 05:16:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6587A1BF41B
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 05:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6151885EAA
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 05:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y8oSfWKpTmkO for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 05:16:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from so254-31.mailgun.net (so254-31.mailgun.net [198.61.254.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 02A6985E8C
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 05:16:25 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608700588; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=p7NLYtLBCwi9t9Vj9dPZlOCGeUoDz8AD5ZLf0+IFHLk=;
 b=JsVNRe2493TghO5zPRqMpH7PQdpfc+GIRdXPLArtrLPDRFhyr/IH0L5Upkrdp9DnD0oQQ19n
 /8ET3AEoy7VZjoE01xS+7VUB+A/n9adhv0o2ZnkmEMuV6G99gsLN0FwbUQU3Dh4FJnbC5JJv
 +nyMQeGCkYDV8ilNgezZgOks9mY=
X-Mailgun-Sending-Ip: 198.61.254.31
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 5fe2d29ddb8e07fa6c7d18c8 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 23 Dec 2020 05:16:13
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9E3DEC433C6; Wed, 23 Dec 2020 05:16:12 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 59070C433CA;
 Wed, 23 Dec 2020 05:16:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 59070C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v3 03/24] wfx: add Makefile/Kconfig
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-4-Jerome.Pouiller@silabs.com>
 <8735zxanox.fsf@codeaurora.org> <9810105.nUPlyArG6x@pc-42>
Date: Wed, 23 Dec 2020 07:16:06 +0200
In-Reply-To: <9810105.nUPlyArG6x@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Tue, 22 Dec 2020 22:19:52 +0100")
Message-ID: <8735zx6r1l.fsf@codeaurora.org>
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
IE9uIFR1ZXNkYXkgMjIgRGVjZW1iZXIgMjAyMCAxNjowMjozOCBDRVQgS2FsbGUgVmFsbyB3cm90
ZToKPj4gSmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVz
Ogo+PiAKPj4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFi
cy5jb20+Cj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21l
LnBvdWlsbGVyQHNpbGFicy5jb20+Cj4+IAo+PiBbLi4uXQo+PiAKPj4gPiArd2Z4LSQoQ09ORklH
X1NQSSkgKz0gYnVzX3NwaS5vCj4+ID4gK3dmeC0kKHN1YnN0IG0seSwkKENPTkZJR19NTUMpKSAr
PSBidXNfc2Rpby5vCj4+IAo+PiBXaHkgdGhpcyBzdWJzdD8gQW5kIHdoeSBvbmx5IGZvciBNTUM/
Cj4KPiBDT05GSUdfU1BJIGlzIGEgYm9vbGVhbiAoeSBvciBlbXB0eSkuIFRoZSBib3RoIHZhbHVl
cyBtYWtlIHNlbnNlcy4KPgo+IENPTkZJR19NTUMgaXMgYSB0cmlzdGF0ZSAoeSwgbSBvciBlbXB0
eSkuIFRoZSBzdWJzdGl0dXRpb24gYWJvdmUKPiBlbnN1cmUgdGhhdCBidXNfc2Rpby5vIHdpbGwg
aW5jbHVkZWQgaW4gd2Z4LmtvIGlmIENPTkZJR19NTUMgaXMgJ20nCj4gKCJ3ZngtJChDT05GSUdf
TU1DKSArPSBidXNfc2Rpby5vIiB3b3VsZG4ndCBtYWtlIHRoZSBqb2IpLgo+Cj4gWW91IG1heSB3
YW50IHRvIGtub3cgd2hhdCBpdCBoYXBwZW5zIGlmIENPTkZJR19NTUM9bSB3aGlsZSBDT05GSUdf
V0ZYPXkuCj4gVGhpcyBsaW5lIGluIEtjb25maWcgcHJldmVudHMgdG8gY29tcGlsZSB3Znggc3Rh
dGljYWxseSBpZiBNTUMgaXMgYQo+IG1vZHVsZToKPiAgICAgICAgZGVwZW5kcyBvbiBNTUMgfHwg
IU1NQyAjIGRvIG5vdCBhbGxvdyBXRlg9eSBpZiBNTUM9bQoKT2ssIHRoYW5rcyBmb3IgZXhwbGFp
bmluZyB0aGlzLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51
eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2
ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
