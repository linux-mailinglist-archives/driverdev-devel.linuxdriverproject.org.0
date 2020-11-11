Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7079D2AE5EE
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 02:38:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A30E42E148;
	Wed, 11 Nov 2020 01:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JKCILeDNIyJx; Wed, 11 Nov 2020 01:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C4865204AF;
	Wed, 11 Nov 2020 01:38:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EEC751BF369
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 01:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E7EAE204AF
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 01:38:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VFUxdyvyz9F1 for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 01:38:26 +0000 (UTC)
X-Greylist: delayed 00:29:51 by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 0C51520480
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 01:38:25 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id me8so502211ejb.10
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 17:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hHQDiEVFp1foYy6daRs4fHFD9ayYaszDLVuF2Z51ya8=;
 b=Lovjln1fIbkD2LOWfwf5p5B1YNXCK0mWG+9fGH4sigwtycevhDKQ0AeODjSfHWpjwF
 iNdy65rI1Wq5x2Grg8/Relh95qlXkU51w/ZD0lb9LhW7+fZEozkHk34DrT0UMCUN6cZK
 iPllHOzKkEliSAK+mJhJhzW+6hAXS8kRfEc/mBC9gPXCg/l/b8iy2GV7cFhZDAUD+UIi
 j4prnHj/aTGgJC/9VBDvxk8HE9lsb0hdMkmXEc2OhmWjr10S6kulM4D/D/k2NonVfPgX
 1Uj1X6kTPhq9mHhJF+/r4mwzp3aPzJFUKDSUdlBWYLIeWryBNUUdb8Mdv+M7VDq8KMqv
 Mbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hHQDiEVFp1foYy6daRs4fHFD9ayYaszDLVuF2Z51ya8=;
 b=KE2Q2aStFurv2/njqtpjusL5s3g30q7f1y+Ba2UHtsYmEvhmYujXx4o2jAuV2GbiK1
 PIeSX+WtZv8u4qWqxVjwESB1jw2Oqh94fnABPdGMl9MH/FOrumH449TRgYfnWUxZnmNu
 6MENmx0ux/kOcAJ8Lq+4qU2QPn8HjR0JDegH4zl948+3wZsl++8qChDrcatAF6VEeTxC
 H39hawUSZWghYCnllDIYfsGPVpM7DAcCZsismKrphhk4u0A3GlPRhlDIm2xJc5/rBh3O
 bdEvMIJ01cOatqo6Nyn40fTvTxTXZbdv2lDoY73KsRmQxauIbGtPnlYGCZ4C7JTQRLfN
 3Fdw==
X-Gm-Message-State: AOAM531duw5BqauebukZNPupI7hMiMAOWdz1t1P9HALLX3DZdSMmc/4m
 OYOlKPKN+67rYNrRtL5FVVnxAPscEcQK3XaMbsN2jgEOx1Hcy2Gl
X-Google-Smtp-Source: ABdhPJxTkNCrHxkNrKMGfx/redHh8XOwE0W/+nPr1awBqj+Z+Er5yh4soUAWZNDAv2tGIUavyTgUj5FavxbQfUNMpTU=
X-Received: by 2002:a17:906:3541:: with SMTP id
 s1mr23454310eja.413.1605056913762; 
 Tue, 10 Nov 2020 17:08:33 -0800 (PST)
MIME-Version: 1.0
References: <20201109162244.16531-1-linkmauve@linkmauve.fr>
In-Reply-To: <20201109162244.16531-1-linkmauve@linkmauve.fr>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 10 Nov 2020 22:08:21 -0300
Message-ID: <CAAEAJfDhQpZYRMQoQRy=2AUSQFpmy2cQ4y=2sczWgkDp03dYEw@mail.gmail.com>
Subject: Re: [RESEND PATCH 0/2] media: uapi: Expose VP8 probability lengths as
 defines
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRW1tYW51ZWwsCgpUaGFua3MgZm9yIHRoZSBwYXRjaC4KCk9uIE1vbiwgOSBOb3YgMjAyMCBh
dCAxNTozNywgRW1tYW51ZWwgR2lsIFBleXJvdCA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4gd3Jv
dGU6Cj4KPiBUaGVzZSB2YWx1ZXMgd2lsbCBiZSB1c2VkIGJ5IHZhcmlvdXMgZHJpdmVycyBpbXBs
ZW1lbnRpbmcgdGhlIFZQOAo+IHN0YXRlbGVzcyBBUEkuCj4KPiBUaGlzIGhhZCBiZWVuIHN1Z2dl
c3RlZCBieSBFemVxdWllbCBHYXJjaWEgZm9yIHRoZSBDZWRydXMgVlA4IGRyaXZlci4KPgo+IFRo
ZSBvbmx5IGRyaXZlciB1c2luZyB0aGlzIEFQSSAodW50aWwgbm93KSBoYXMgYWxzbyBiZWVuIHVw
ZGF0ZWQgdG8gdXNlCj4gdGhlc2UgbmV3IGRlZmluZXMuCj4KPiBUaGlzIGlzIGEgcmVzZW5kIGJl
Y2F1c2UgSSBmb3Jnb3QgdG8gaW5jbHVkZSBtb3N0IG1haW50YWluZXJzLCBzb3JyeSBmb3IKPiB0
aGF0LiAgSXTigJlzIG15IHZlcnkgZmlyc3QgcGF0Y2ggdG8gdGhlIGtlcm5lbCwgSSBkaWRu4oCZ
dCBrbm93IGFib3V0Cj4gc2NyaXB0cy9nZXRfbWFpbnRhaW5lcnMucGwKPgoKSSBoYXZlbid0IHZh
bGlkYXRlZCB0aGVzZSB0d28gcGF0Y2hlcywgYnV0IG9uIGEgZmlyc3QgbG9vaywKaXQgc2VlbXMg
aXQncyBhIGxvdy1oYW5naW5nIGZydWl0IG5pY2UgY2xlYW51cC4gVGhhbmtzIGZvciB0aGF0IQoK
U2luY2UgaXQgc2VlbXMgeW91IGFyZSBsb29raW5nIGZvciBpbnRlcmVzdGluZyB0aGluZ3MgdG8g
Y29udHJpYnV0ZSwKbm90ZSB0aGF0IHRoZSB2cDgtY3RybHMuaCBoZWFkZXIgaXMgbGFja2luZyBz
b21lIG5pY2UgZG9jdW1lbnRhdGlvbgpvbiBlYWNoIHN0cnVjdHVyZS4KClRoaXMgc2hvdWxkIGJl
IGRvbmUgYnkgbG9va2luZyBhdCB0aGUgVlA4IHN5bnRheCBzcGVjIGFuZCBkb2N1bWVudGluZwp0
aGluZ3MgYXBwcm9wcmlhdGVseS4gU2VlIGhvdyBpdCdzIGRvbmUgZm9yIEguMjY0IGFuZCBWUDk6
CgpodHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhL3BhdGNo
LzIwMjAwOTI4MjAxNDMzLjMyNzA2OC0xLWV6ZXF1aWVsQGNvbGxhYm9yYS5jb20vCmh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8yMDIwMTEw
MjE5MDU1MS4xMjIzMzg5LTMtYWRyaWFuLnJhdGl1QGNvbGxhYm9yYS5jb20vCgpUaGFua3MsCkV6
ZXF1aWVsCgo+IEVtbWFudWVsIEdpbCBQZXlyb3QgKDIpOgo+ICAgbWVkaWE6IHVhcGk6IEV4cG9z
ZSBwcm9iYWJpbGl0eSBsZW5ndGhzIGFzIGRlZmluZXMKPiAgIG1lZGlhOiBoYW50cm86IFVzZSBW
UDggbGVuZ3RocyBkZWZpbmVkIGluIHVhcGkKPgo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2hhbnRyb192cDguYyB8IDQgKystLQo+ICBpbmNsdWRlL21lZGlhL3ZwOC1jdHJscy5oICAg
ICAgICAgICAgICAgICB8IDYgKysrKy0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjI5LjIKPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
