Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D8841EDB6
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 14:42:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 382FC4049F;
	Fri,  1 Oct 2021 12:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oMvbgDFVrSEg; Fri,  1 Oct 2021 12:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B92064043A;
	Fri,  1 Oct 2021 12:42:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 666521BF2B6
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 54A8D607DF
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id dEd-ARRFTKI3 for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 12:42:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id 254EA60644
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 12:42:27 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633092149; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=oebx3fcM3g966gWCz22lzF59IX1zMeaSKJn177/dREs=;
 b=mdfDDikMXinr6GADQWB5+K8zWos2giTicdCovgsaqDrYD7QMmJoxzJuQWtm/7cu7aArWsWGa
 1jz5gTMjTLB1bYz8fTTCqanar6PJyD5ZroI/VHMWyaAA8Jfqpgvsutkeo1LXTrbUUp3KS4iL
 IygM9IT5tHPnufofuaXFTd6IwhE=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 6157022b63b1f1865876e65f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 12:42:19
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A10CFC4360D; Fri,  1 Oct 2021 12:42:18 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 782CDC43460;
 Fri,  1 Oct 2021 12:42:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 782CDC43460
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 00/24] wfx: get out from the staging area
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 15:42:13 +0300
In-Reply-To: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:12 +0200")
Message-ID: <87bl48kjbu.fsf@codeaurora.org>
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

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBI
ZWxsbywKPgo+IEkgdGhpbmsgdGhlIHdmeCBkcml2ZXIgaXMgbm93IG1hdHVyZSBlbm91Z2ggdG8g
YmUgYWNjZXB0ZWQgaW4gdGhlCj4gZHJpdmVycy9uZXQvd2lyZWxlc3MgZGlyZWN0b3J5Lgo+Cj4g
VGhlIGZpcm13YXJlIGlzIG5vdyBhIHBhcnQgb2YgdGhlIGxpbnV4LWZpcm13YXJlIHJlcG9zaXRv
cnkgc2luY2UgcmVsYXNlCj4gMjAyMTAzMTVbMV0uIEl0IGhhZCB0YWtlbiBhIGJpdCBvZiB0aW1l
IGJlY2F1c2UgSSBoYXZlIHdvcmtlZCB3aXRoIHRoZSBsZWdhbAo+IGRlcGFydG1lbnQgdG8gc2lt
cGxpZnkgdGhlIHJlZGlzdHJpYnV0aW9uIHRlcm1zIG9mIHRoZSBmaXJtd2FyZS4KPgo+IFsxXTog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZmlybXdhcmUvMjgzMzM1NC5nWHZWZmFDNEk3
QHBjLTQyLwo+Cj4KPiBBcyByZXF1ZXN0ZWQgYnkgS2FsbGVbMl0sIEkgc2VuZCBvbmUgZmlsZSBw
ZXIgcGF0Y2guIEF0IHRoZSBlbmQsIGFsbCB0aGUKPiBwYXRjaGVzIChvciBhdCBsZWFzdCB0aGUg
cGF0Y2hlcyAzIHRvIDI0KSB3aWxsIGJlIHNxdWFzaGVkICh0aGVyZWZvcmUsIEkKPiBkaWRuJ3Qg
Ym90aGVyIHRvIHdyaXRlIHJlYWwgY29tbWl0IG1lc3NhZ2VzKS4KCkkgZGlkIGFub3RoZXIgcmV2
aWV3IG9mIHRoZSBkcml2ZXIgYW5kIGluIGdlbmVyYWwgaXQgbG9va3MgcHJldHR5IGdvb2QuClRo
ZSB1c2Ugb2YgQXBhY2hlIGxpY2Vuc2UsIFBEUyBmaWxlIGZvcm1hdCBhbmQgdGhlIG1pc3Npbmcg
ZmlybXdhcmUKZGlyZWN0b3J5IGFyZSB0aGUgYmlnZ2VzdCBpc3N1ZXMgSSBzYXcuCgo+IHY3Ogo+
ICAgLSBVcGRhdGUgbG9jYXRpb24gb2YgbW1jLXB3cnNlcS1zaW1wbGUudHh0IChSb2IpCj4KPiB2
NjoKPiAgIC0gUmViYXNlIG9uIGxhc3Qgc3RhZ2luZy1uZXh0IChyb3VnaHRseSBzb21ld2hlcmUg
YWZ0ZXIgdGhlIDUuMTUKPiAgICAgbWVyZ2Ugd2luZG93KS4gU28sIHRoaXMgc2VyaWVzIGluY2x1
ZGUgdGhlIHBhdGNoZXMgZnJvbToKPiAgICAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRk
ZXYvMjAyMTA5MTMxMzAyMDMuMTkwMzYyMi0xLUplcm9tZS5Qb3VpbGxlckBzaWxhYnMuY29tLwoK
QlRXLCBpdCB3b3VsZCBiZSBuaWNlIHRvIGtub3cgd2hhdCBjb21taXQgaWQgYXJlIHlvdSB1c2lu
ZyBmcm9tCnN0YWdpbmctbmV4dCwgSSBwcmVmZXIgdG8gYWxzbyBsb29rIGF0IHRoZSBmdWxsIHRy
ZWUgd2hpbGUgSSdtIHJldmlld2luZwp0aGUgcGF0Y2hlcy4KCi0tIApodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2lyZWxl
c3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5n
cGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
