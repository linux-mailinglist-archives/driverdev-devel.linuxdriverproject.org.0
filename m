Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA62F2CEC55
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 11:40:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F52B87898;
	Fri,  4 Dec 2020 10:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k8-FDa5wb_Li; Fri,  4 Dec 2020 10:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58F5987470;
	Fri,  4 Dec 2020 10:40:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22FC31BF391
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 10:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F5BB87C51
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 10:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0kvASzGjkEOE for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 10:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24A5387C4E
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 10:39:59 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id r18so6076562ljc.2
 for <devel@driverdev.osuosl.org>; Fri, 04 Dec 2020 02:39:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=hlZCJEKzokNwCxy9PppGO+4osNv7sekOt95QGYGMFIY=;
 b=Euj0Lza02dZf9QKfO9NZPmttrzD5xQe6Ta2CE8Y39XnmCStTbJtNwVcgIqQ2G0OIh/
 iFT5iYD00DpxR1oKgLU1vC1ojq8pR8GmXbOLPuSk58sgB6nvoX/fA+xFy8EJdS4G3m60
 3mPzMEdNUntBXZz85Zpd2PkjjooswMRYHAnddd3X+lnSU0dXHpWJ9nUF+QAR2EUg3eLI
 LhsKnjYNVOCufOH4F/0FyXmWhnlYgRdrnFS+jXloFtbZL4mityFx1I8aERdfJGXKfloX
 6b97wWVI/W2zp9Xa1XmW0GnVjYl60RcA4ztncCGdWrvvWStDSCJVj4PaszbuvLH43XYF
 MP+w==
X-Gm-Message-State: AOAM53245ywWMf4rocRcf27lp8dPG0PXxexxFOgze16J9q5vEv6xGBrk
 r0NE31friDDWNaCd+msqh4E=
X-Google-Smtp-Source: ABdhPJwJfv10aOeyJIlJZY7U4xVm/2/Apb5jMujh/Ugx1ulLYSPkB2FbOrnNq0jrlcThClHnr5QLnw==
X-Received: by 2002:a05:651c:323:: with SMTP id
 b3mr3029571ljp.452.1607078397416; 
 Fri, 04 Dec 2020 02:39:57 -0800 (PST)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id m16sm1515838lfa.57.2020.12.04.02.39.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 02:39:56 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1kl8Vq-0005Ys-Fa; Fri, 04 Dec 2020 11:40:30 +0100
Date: Fri, 4 Dec 2020 11:40:30 +0100
From: Johan Hovold <johan@kernel.org>
To: "wanghai (M)" <wanghai38@huawei.com>
Subject: Re: [PATCH] staging: greybus: audio: Add missing unlock in
 gbaudio_dapm_free_controls()
Message-ID: <X8oSHkQZFHCv+Fza@localhost>
References: <20201204021350.28182-1-wanghai38@huawei.com>
 <X8n2CL58pQ/077rQ@localhost>
 <d95dac95-09d0-66bb-4f3b-5ffa154be174@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d95dac95-09d0-66bb-4f3b-5ffa154be174@huawei.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 gregkh@linuxfoundation.org, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBEZWMgMDQsIDIwMjAgYXQgMDU6MTk6MjVQTSArMDgwMCwgd2FuZ2hhaSAoTSkgd3Jv
dGU6Cj4gCj4g5ZyoIDIwMjAvMTIvNCAxNjo0MCwgSm9oYW4gSG92b2xkIOWGmemBkzoKPiA+IE9u
IEZyaSwgRGVjIDA0LCAyMDIwIGF0IDEwOjEzOjUwQU0gKzA4MDAsIFdhbmcgSGFpIHdyb3RlOgo+
ID4+IEFkZCB0aGUgbWlzc2luZyB1bmxvY2sgYmVmb3JlIHJldHVybiBmcm9tIGZ1bmN0aW9uCj4g
Pj4gZ2JhdWRpb19kYXBtX2ZyZWVfY29udHJvbHMoKSBpbiB0aGUgZXJyb3IgaGFuZGxpbmcgY2Fz
ZS4KPiA+Pgo+ID4+IEZpeGVzOiA1MTBlMzQwZWZlMGMgKCJzdGFnaW5nOiBncmV5YnVzOiBhdWRp
bzogQWRkIGhlbHBlciBBUElzIGZvciBkeW5hbWljIGF1ZGlvIG1vZHVsZSIpCj4gPj4gUmVwb3J0
ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgo+ID4+IFNpZ25lZC1vZmYtYnk6
IFdhbmcgSGFpIDx3YW5naGFpMzhAaHVhd2VpLmNvbT4KPiA+PiAtLS0KPiA+PiAgIGRyaXZlcnMv
c3RhZ2luZy9ncmV5YnVzL2F1ZGlvX2hlbHBlci5jIHwgMSArCj4gPj4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
Z3JleWJ1cy9hdWRpb19oZWxwZXIuYyBiL2RyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2F1ZGlvX2hl
bHBlci5jCj4gPj4gaW5kZXggMjM3NTMxYmE2MGYzLi4yOTM2NzVkYmVhMTAgMTAwNjQ0Cj4gPj4g
LS0tIGEvZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvYXVkaW9faGVscGVyLmMKPiA+PiArKysgYi9k
cml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9hdWRpb19oZWxwZXIuYwo+ID4+IEBAIC0xMzUsNiArMTM1
LDcgQEAgaW50IGdiYXVkaW9fZGFwbV9mcmVlX2NvbnRyb2xzKHN0cnVjdCBzbmRfc29jX2RhcG1f
Y29udGV4dCAqZGFwbSwKPiA+PiAgIAkJaWYgKCF3KSB7Cj4gPj4gICAJCQlkZXZfZXJyKGRhcG0t
PmRldiwgIiVzOiB3aWRnZXQgbm90IGZvdW5kXG4iLAo+ID4+ICAgCQkJCXdpZGdldC0+bmFtZSk7
Cj4gPj4gKwkJCW11dGV4X3VubG9jaygmZGFwbS0+Y2FyZC0+ZGFwbV9tdXRleCk7Cj4gPj4gICAJ
CQlyZXR1cm4gLUVJTlZBTDsKPiA+PiAgIAkJfQo+ID4+ICAgCQl3aWRnZXQrKzsKPiA+IFRoaXMg
c3VwZXJmaWNpYWxseSBsb29rcyBjb3JyZWN0LCBidXQgdGhlcmUgc2VlbXMgdG8gYmUgYW5vdGhl
ciBidWcgaW4KPiA+IHRoaXMgZnVuY3Rpb24uIEl0IGNhbiBiZSB1c2VkIGZyZWUgYW4gYXJyYXkg
b2Ygd2lkZ2V0cywgYnV0IGlmIG9uZSBvZgo+ID4gdGhlbSBpc24ndCBmb3VuZCB3ZSBqdXN0IGxl
YWsgdGhlIHJlc3QuIFBlcmhhcHMgdGhhdCByZXR1cm4gc2hvdWxkCj4gPiByYXRoZXIgYmUgIndp
ZGdldCsrOyBjb250aW51ZTsiLgo+ID4KPiBJIHRoaW5rIHRoaXMgaXMgYSBnb29kIGlkZWEsIHNo
b3VsZCBJIHNlbmQgYSB2MiBwYXRjaD8KCkxldCdzIGp1c3Qgd2FpdCBhIGJpdCBhbmQgc2VlIHdo
YXQgVmFpYmhhdiBvciBNYXJrIHNheXMgZmlyc3QuCgpKb2hhbgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
