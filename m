Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DC141EDC2
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 14:45:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 846524074D;
	Fri,  1 Oct 2021 12:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q25tj1PH4tuW; Fri,  1 Oct 2021 12:45:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA63240699;
	Fri,  1 Oct 2021 12:45:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDE7D1BF2B6
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id DB49184429
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id QFwXgRdC1JuQ for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 12:45:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id 1B59F84426
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 12:45:20 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633092324; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=DxUzotX+Y7gO/nEKkP180xLqp5Xbdp3BDVDGIp9TVHI=;
 b=go1MPaYD65sSnmSfspBNxzWX40EGVVlagHXtxUj96iu4l9zovRwR0+hYAM6D0aPSE4Xra2v1
 PDqpe88sHb9SWMKvtoGcIC9Mz5HNKt8Az0N2aTF5sQhK9LJjRZrx/pH9AtRExpE49JhimWQG
 gCHyAfA415u0IkH5MLORoLDI/sY=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 615702dba5a9bab6e886931d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 12:45:15
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 19B50C4360D; Fri,  1 Oct 2021 12:45:15 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A3539C4338F;
 Fri,  1 Oct 2021 12:45:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org A3539C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 12/24] wfx: add hif_api_*.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-13-Jerome.Pouiller@silabs.com>
 <875yuhkm4c.fsf@codeaurora.org> <2600267.GQK6fj20dd@pc-42>
Date: Fri, 01 Oct 2021 15:45:05 +0300
In-Reply-To: <2600267.GQK6fj20dd@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Fri, 01 Oct 2021 13:52:52 +0200")
Message-ID: <877dewkj72.fsf@codeaurora.org>
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
IE9uIEZyaWRheSAxIE9jdG9iZXIgMjAyMSAxMzo0MTo1NSBDRVNUIEthbGxlIFZhbG8gd3JvdGU6
Cj4+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyaXRlczoK
Pj4gCj4+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMu
Y29tPgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPgo+PiAKPj4gWy4uLl0KPj4gCj4+ID4gLS0tIC9kZXYvbnVsbAo+
PiA+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaGlmX2FwaV9jbWQuaAo+
PiA+IEBAIC0wLDAgKzEsNTU1IEBACj4+ID4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBB
cGFjaGUtMi4wICovCj4+IAo+PiBJIGRvbid0IGhvdyBJIG1pc3NlZCB0aGlzIGVhcmxpZXI6Cj4+
IAo+PiBoaWZfYXBpX2NtZC5oOi8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBBcGFjaGUtMi4w
ICovCj4+IGhpZl9hcGlfZ2VuZXJhbC5oOi8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBBcGFj
aGUtMi4wICovCj4+IGhpZl9hcGlfbWliLmg6LyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEFw
YWNoZS0yLjAgKi8KPj4gCj4+IEFwYWNoZS0yLjAgbGljZW5zZSBpcyBhIGJsb2NrZXIgZm9yIG1l
LCBzZWUgTElDRU5TRVMvZHVhbC9BcGFjaGUtMi4wLgo+Cj4gT2suIEl0IGlzIG5vdCBhIHByb2Js
ZW0gaGVyZS4gSSBoYXZlIHRoZSBhdXRob3Jpc2F0aW9uIHRvIGNoYW5nZSBpdCBpbgo+IEdQTHYy
LW9ubHkuCgpHcmVhdCwgdGhhbmtzIQoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5l
bC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
