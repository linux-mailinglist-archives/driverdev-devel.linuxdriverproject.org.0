Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F6A84392
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 07:10:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61B28203B2;
	Wed,  7 Aug 2019 05:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hPGhGpzwkRWU; Wed,  7 Aug 2019 05:10:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5BFE622636;
	Wed,  7 Aug 2019 05:10:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 162F41BF599
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 05:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 128F822624
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 05:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sbpclMujJyQ4 for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 05:10:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 071D922622
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 05:10:45 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x1so40068534wrr.9
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 22:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=J8q3C8XNtyFn5o0cwi/6TaYLXcXbfFKt+Egf2sjlgy4=;
 b=kORicJpztHIAwdM1j6OiXotMjAmnbeuzPVZK1OaRQqPj3TihOURdk3RfNJcrNYn71+
 rkYlRYB8UN8FvSCEU7NhsxslbjiCQZziRQytKjphOWY3pDterZ5KGGg5JrXEVIlSOHYl
 n+cJhGcjrw0vhAqoc/2wyY/qPptwNTsyJtbx/ulhiGkEHKSHXx00c2GlqpDuB1Jq/T4F
 pdyjiC2s65LPItL7nqmur9LPmsu9wFUROtYC+RWRagdcw3lV3E35Fn8Ln3xOo5oUUtO2
 ADawuzcz2reCB0yu9FvBoFKqzXWCsfhbE/Q4FV+6aiBn4BOjUH5DqiO8KMApy2GknrLT
 FECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=J8q3C8XNtyFn5o0cwi/6TaYLXcXbfFKt+Egf2sjlgy4=;
 b=pA/BugxXVpSHr/q76uOanVUmzeioDrxzOvex/vrLU3W52tPIh0k7VLIop4lo9s64rQ
 tFX3Dftob9fzM8kfZXhYnXNx6kYv7XUViGUIYh2cYS2fNrPZ8cjW5NFYqOJDrOZA7y/Z
 XBidGHywCb3HL/FzARaU5O7537AI/Y16w7gnV0oAvN92wuW0kcQ7UCZOBCe25N9TxXYW
 LvR7w+VE2ogZWOcQGXe6TKWvTZa/ZJFRatfDE3JFkd0X27IVgKn+psr5QTDS3dOG93cE
 JVKU9mVV0hlKV4OkplxXx1H6mNfXEc8xGrDm6TcbCKYw+kOVJae/8/+a5GqD6CTef1KE
 rzAw==
X-Gm-Message-State: APjAAAXep01MsJJOH/iqALX3DLPunkD4RQmoT0oXok2wLesRkYlv2tlK
 pP5f8Pl6jNmS3hlOSrvNnfA=
X-Google-Smtp-Source: APXvYqyjCQmPGVso7ydC60Zaa2gys5Ws3aDZ25TP0UeAxXRLDn2hGC0AAUKFdh/ro7Y4q3pZ1dRHLg==
X-Received: by 2002:a5d:4941:: with SMTP id r1mr7822802wrs.225.1565154643044; 
 Tue, 06 Aug 2019 22:10:43 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id o20sm227955236wrh.8.2019.08.06.22.10.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 22:10:41 -0700 (PDT)
Date: Tue, 6 Aug 2019 22:10:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v2] net: mdio-octeon: Fix Kconfig warnings and build errors
Message-ID: <20190807051040.GA117554@archlinux-threadripper>
References: <20190731185023.20954-1-natechancellor@gmail.com>
 <20190803060155.89548-1-natechancellor@gmail.com>
 <20190806.141133.1365654857955536268.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806.141133.1365654857955536268.davem@davemloft.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDI6MTE6MzNQTSAtMDcwMCwgRGF2aWQgTWlsbGVyIHdy
b3RlOgo+IEZyb206IE5hdGhhbiBDaGFuY2VsbG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+
Cj4gRGF0ZTogRnJpLCAgMiBBdWcgMjAxOSAyMzowMTo1NiAtMDcwMAo+IAo+ID4gQWZ0ZXIgY29t
bWl0IDE3MWE5YmFlNjhjNyAoInN0YWdpbmcvb2N0ZW9uOiBBbGxvdyB0ZXN0IGJ1aWxkIG9uCj4g
PiAhTUlQUyIpLCB0aGUgZm9sbG93aW5nIGNvbWJpbmF0aW9uIG9mIGNvbmZpZ3MgY2F1c2UgYSBm
ZXcgS2NvbmZpZwo+ID4gd2FybmluZ3MgYW5kIGJ1aWxkIGVycm9ycyAoZGlzdGlsbGVkIGZyb20g
YXJtIGFsbHllc2NvbmZpZyBhbmQgUmFuZHkncwo+ID4gcmFuZGNvbmZpZyBidWlsZHMpOgo+ID4g
Cj4gPiAgICAgQ09ORklHX05FVERFVklDRVM9eQo+ID4gICAgIENPTkZJR19TVEFHSU5HPXkKPiA+
ICAgICBDT05GSUdfQ09NUElMRV9URVNUPXkKPiA+IAo+ID4gYW5kIENPTkZJR19PQ1RFT05fRVRI
RVJORVQgYXMgZWl0aGVyIGEgbW9kdWxlIG9yIGJ1aWx0LWluLgo+ID4gCj4gPiBXQVJOSU5HOiB1
bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNRElPX09DVEVPTgo+ID4gICBE
ZXBlbmRzIG9uIFtuXTogTkVUREVWSUNFUyBbPXldICYmIE1ESU9fREVWSUNFIFs9eV0gJiYgTURJ
T19CVVMgWz15XQo+ID4gJiYgNjRCSVQgWz1uXSAmJiBIQVNfSU9NRU0gWz15XSAmJiBPRl9NRElP
IFs9bl0KPiA+ICAgU2VsZWN0ZWQgYnkgW3ldOgo+ID4gICAtIE9DVEVPTl9FVEhFUk5FVCBbPXld
ICYmIFNUQUdJTkcgWz15XSAmJiAoQ0FWSVVNX09DVEVPTl9TT0MgfHwKPiA+IENPTVBJTEVfVEVT
VCBbPXldKSAmJiBORVRERVZJQ0VTIFs9eV0KPiA+IAo+ID4gSW4gZmlsZSBpbmNsdWRlZCBmcm9t
IC4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5jOjE0Ogo+ID4gLi4vZHJpdmVycy9uZXQv
cGh5L21kaW8tY2F2aXVtLmg6MTExOjM2OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YK
PiA+IGZ1bmN0aW9uIOKAmHdyaXRlceKAmTsgZGlkIHlvdSBtZWFuIOKAmHdyaXRlbOKAmT8KPiA+
IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ID4gICAxMTEgfCAjZGVm
aW5lIG9jdF9tZGlvX3dyaXRlcSh2YWwsIGFkZHIpIHdyaXRlcSh2YWwsICh2b2lkICopYWRkcikK
PiA+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn4KPiA+
IAo+ID4gQ09ORklHXzY0QklUIGlzIG5vdCBzdHJpY3RseSBuZWNlc3NhcnkgaWYgdGhlIHByb3Bl
ciByZWFkcS93cml0ZXEKPiA+IGRlZmluaXRpb25zIGFyZSBpbmNsdWRlZCBmcm9tIGlvLTY0LW5v
bmF0b21pYy1sby1oaS5oLgo+ID4gCj4gPiBDT05GSUdfT0ZfTURJTyBpcyBub3QgbmVlZGVkIHdo
ZW4gQ09ORklHX0NPTVBJTEVfVEVTVCBpcyBlbmFibGVkIGJlY2F1c2UKPiA+IG9mIGNvbW1pdCBm
OWRjOWFjNTE2MTAgKCJvZi9tZGlvOiBBZGQgZHVtbXkgZnVuY3Rpb25zIGluIG9mX21kaW8uaC4i
KS4KPiA+IAo+ID4gRml4ZXM6IDE3MWE5YmFlNjhjNyAoInN0YWdpbmcvb2N0ZW9uOiBBbGxvdyB0
ZXN0IGJ1aWxkIG9uICFNSVBTIikKPiA+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8
bGtwQGludGVsLmNvbT4KPiA+IFJlcG9ydGVkLWJ5OiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5l
bC5vcmc+Cj4gPiBSZXBvcnRlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5v
cmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxsb3JA
Z21haWwuY29tPgo+IAo+IEFwcGxpZWQgdG8gbmV0LW5leHQuCj4gCj4gUGxlYXNlIG1ha2UgaXQg
Y2xlYXIgd2hhdCB0cmVlIHlvdXIgY2hhbmdlcyBhcmUgdGFyZ2V0dGluZyBpbiB0aGUgZnV0dXJl
LAo+IHRoYW5rIHlvdS4KClNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLCBJJ2xsIGRvIG15IGJlc3Qg
dG8gYWRkIGEgcGF0Y2ggc3VmZml4IGluIHRoZQpmdXR1cmUuCgpUaGFuayB5b3UgZm9yIHBpY2tp
bmcgdGhpcyB1cCEKTmF0aGFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
