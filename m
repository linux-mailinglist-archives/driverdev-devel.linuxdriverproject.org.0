Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D405D6E528
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 13:46:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 172FC86AB6;
	Fri, 19 Jul 2019 11:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pl9Mu6biQ7X6; Fri, 19 Jul 2019 11:46:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5D12867BD;
	Fri, 19 Jul 2019 11:46:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83E291BF39F
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 11:46:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7CCE0875EA
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 11:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXh-ik5hNhrE for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 11:46:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A9A8C87594
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 11:46:45 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id k21so34258299edq.3
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 04:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RjARzg5zR4sNqCAhyFcjLu7rxBT3p+rIlkvUc8rVhiQ=;
 b=VY1552WQZvzoYZD3sBE9lelYE1UUAT8pSls5ltVkFgiiKPvJwyyr/CO1R//xyW5lYd
 fTZcrayyM/nu1HzDZjL/0MXfoZdJ3H/rcaUM+/jNFaLvURUH4S0NwgaS3Ad/DiofeqY+
 aQB36SR+ZQgIq4t4blzSKClgCK6ORqPlKjQPe6rYFVaqPOCZ3sv/wRXxz0BEy9Dm/WuW
 O4p0f+hcDiooDtPMrDzM3iwfJXpVRYxjDjMgWSly++3KQQBmYvHrAoNg4xwJGhvBfUlj
 UTiuQfj7I3D+s+bgBUCpz7wQNB+nbhEZZqwHiC1dQEzji06qmcnbJSPNAhbuLOs0w/lB
 oNow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RjARzg5zR4sNqCAhyFcjLu7rxBT3p+rIlkvUc8rVhiQ=;
 b=daddtnHVJ+RlPPCeT359WsQkHUCE+YoEBHWCgNvAPGM6dv/sr4uX4+v0ZJ6U5pieT7
 4CEB5xkZenLMaUUsE1D8Y+aXAw1fryi3IHK+xjEpsS/UG3nLuVDrf132huaLY/0wBKcy
 uKHUbyxRoB6Us1Rg7pDvsEdMwD9xS459iJTBAwzLTYZewWvcIkbGA37bm+mI5xYBXdXc
 Tq+o7dk852f/tLzlpf62lx/rJXqH/ZzhRQWXRLlJ5us6GNnOscIr5ztx9dBLbR6RUQEq
 pel61loFvUyrgZXMzUl1Px7M93RJcACCWlVMx9BHHQS512xxXCEQJXGpQsTTT9SUYD2j
 cwiw==
X-Gm-Message-State: APjAAAVhi53Cn6LC5Byxeq9T5wtgYFIgkjB1SNgcpgvcmbOK/sQV/Y90
 YIuD8xh0oyembWamHuLOz0aVdCimFDQBXWsChYg=
X-Google-Smtp-Source: APXvYqzFIa0nGMa7OtRKqltr8DL6AJ3i87J6kwCMguH1ncVbWI/3NZw3JX8SKFgbNzycb1Q9eUrYZQPActnDwyvjj0k=
X-Received: by 2002:a05:6402:896:: with SMTP id
 e22mr42009941edy.202.1563536804148; 
 Fri, 19 Jul 2019 04:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190719081005.4598-1-hslester96@gmail.com>
 <8c14743d-efe1-3e3a-0419-bde22f848751@microchip.com>
In-Reply-To: <8c14743d-efe1-3e3a-0419-bde22f848751@microchip.com>
From: Chuhong Yuan <hslester96@gmail.com>
Date: Fri, 19 Jul 2019 19:46:32 +0800
Message-ID: <CANhBUQ3knUV44GiaB-xZMD8F6y8dcZQdznSmpk3E9ZKoakkBRQ@mail.gmail.com>
Subject: Re: [PATCH] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
To: Ajay Singh <Ajay.Kathat@microchip.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Adham Abozaeid <Adham.Abozaeid@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PEFqYXkuS2F0aGF0QG1pY3JvY2hpcC5jb20+IOS6jjIwMTnlubQ35pyIMTnml6XlkajkupQg5LiL
5Y2INzozNOWGmemBk++8mgo+Cj4gT24gNy8xOS8yMDE5IDE6NDAgUE0sIENodWhvbmcgWXVhbiB3
cm90ZToKPiA+Cj4gPiBNZXJnZSB0aGUgY29tYm8gdXNlIG9mIG1lbWNweSBhbmQgbGUzMl90b19j
cHVzLgo+ID4gVXNlIGdldF91bmFsaWduZWRfbGUzMiBpbnN0ZWFkLgo+ID4gVGhpcyBzaW1wbGlm
aWVzIHRoZSBjb2RlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENodWhvbmcgWXVhbiA8aHNsZXN0
ZXI5NkBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3N0YWdpbmcvd2lsYzEwMDAvd2ls
Y193ZmlfY2Znb3BlcmF0aW9ucy5jIHwgMyArLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy93aWxjMTAwMC93aWxjX3dmaV9jZmdvcGVyYXRpb25zLmMgYi9kcml2ZXJzL3N0YWdpbmcv
d2lsYzEwMDAvd2lsY193ZmlfY2Znb3BlcmF0aW9ucy5jCj4gPiBpbmRleCBkNzJmZGQzMzMwNTAu
LjEyZmI0YWRkMDVlYyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy93aWxjMTAwMC93
aWxjX3dmaV9jZmdvcGVyYXRpb25zLmMKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy93aWxjMTAw
MC93aWxjX3dmaV9jZmdvcGVyYXRpb25zLmMKPiA+IEBAIC0xMDM4LDggKzEwMzgsNyBAQCB2b2lk
IHdpbGNfd2ZpX3AycF9yeChzdHJ1Y3Qgd2lsY192aWYgKnZpZiwgdTggKmJ1ZmYsIHUzMiBzaXpl
KQo+ID4gICAgICAgczMyIGZyZXE7Cj4gPiAgICAgICBfX2xlMTYgZmM7Cj4gPgo+ID4gLSAgICAg
bWVtY3B5KCZoZWFkZXIsIChidWZmIC0gSE9TVF9IRFJfT0ZGU0VUKSwgSE9TVF9IRFJfT0ZGU0VU
KTsKPiA+IC0gICAgIGxlMzJfdG9fY3B1cygmaGVhZGVyKTsKPiA+ICsgICAgIGhlYWRlciA9IGdl
dF91bmFsaWduZWRfbGUzMihidWZmIC0gSE9TVF9IRFJfT0ZGU0VUKTsKPiA+ICAgICAgIHBrdF9v
ZmZzZXQgPSBHRVRfUEtUX09GRlNFVChoZWFkZXIpOwo+ID4KPiA+ICAgICAgIGlmIChwa3Rfb2Zm
c2V0ICYgSVNfTUFOQUdNRU1FTlRfQ0FMTEJBQ0spIHsKPiA+Cj4KPiBUaGFua3MgZm9yIHNlbmRp
bmcgdGhlIHBhdGNoZXMuCj4KPiBUaGUgY29kZSBjaGFuZ2UgbG9va3Mgb2theSB0byBtZS4gSnVz
dCBhIG1pbm9yIGNvbW1lbnQsIGF2b2lkIHRoZSB1c2Ugb2YKPiBzYW1lIHN1YmplY3QgbGluZSBm
b3IgZGlmZmVyZW50IHBhdGNoZXMuCgpUaGVzZSB0d28gcGF0Y2hlcyBhcmUgaW4gdGhlIHNhbWUg
c3Vic3lzdGVtIGFuZCBzb2x2ZSB0aGUgc2FtZSBwcm9ibGVtLgpJIHNwbGl0dGVkIHRoZW0gaW50
byB0d28gcGF0Y2hlcyBieSBtaXN0YWtlIHNpbmNlIEkgZGlkIG5vdCBub3RpY2UgdGhlIHByb2Js
ZW1zCmluIHRoZSBzZWNvbmQgcGF0Y2ggd2hlbiBJIHNlbnQgdGhlIGZpcnN0IG9uZS4KU2hvdWxk
IEkgbWVyZ2UgdGhlIHR3byBwYXRjaGVzIGFuZCByZXNlbmQ/Cgo+Cj4gUmVnYXJkcywKPiBBamF5
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
