Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED174282B61
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 17:22:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7447420130;
	Sun,  4 Oct 2020 15:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KjfZVXxeGa7G; Sun,  4 Oct 2020 15:22:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4EC042010A;
	Sun,  4 Oct 2020 15:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1F631BF371
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 15:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9724185BA3
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 15:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PQfRH1nJPfEL for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 15:22:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C95EC85899
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 15:22:35 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 34so4080781pgo.13
 for <devel@driverdev.osuosl.org>; Sun, 04 Oct 2020 08:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=pvroqbRx5SZxuMfn0fG0rh4X/fjh+1NFwkBq33dVcTw=;
 b=teHOIbjDcZXuU0nUYWE4sWIOTDMmcgFzJolY1eVD1IqXtyQGdwIYNkjY5LSvLBVIfQ
 9xxL8xeL637nIbZ2soBH425Zyrm4sU9FuhZMB4wdNDMQaoDob+lX8MkI2kSoz9p1hScT
 KIwaDC4pX77y3n1Z2TRwd+4tktfnuc/DzrrdWiOhsEtFgyEBxZYDclGkWs4cRWplRCZP
 9Vyu1dM+Mh3zXcKjk/zSS2tesdI4heh9I0LEwjW7h2Yhp08ei+jQRkRTcv4xAwjrVqft
 CqXwd6MM8zutCWlCX3HPTxOTFA+63brlP0Q8LeDKYgQy3N89QbWpN8eu8bqJL+Gq+iaN
 JxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pvroqbRx5SZxuMfn0fG0rh4X/fjh+1NFwkBq33dVcTw=;
 b=s8/w4tTUxxYOG9mPIOtFvb4bKFO0ffkv3pw21rY+wFAAqB54T8SLUaXCsOqb6AM1T1
 /feHKBFvjBmeS6jl+/RE/YqBb353bnuKifEn7CL1pRJpJy8QGMlipzzLrUbeG0DPjSAw
 xC3wu6avG2ZrLq7+EOcoYQogKW4gwVJAhJmGuDY+Bl1Vdsp2BQhAzShoVOrNNf/nHFm5
 99aqkhQTfI6cRAvD5NH4ENcpC4VaT1E2j0KoXrwFhCDrO2UQUkcX/5gr78+xKavP970a
 l8cxMpI/17BucUBP+GX9JJ/ND7TzDF3N45hFIfgUktx6a/Rq3NdhTdTOLyNVq3d70gYW
 aAmQ==
X-Gm-Message-State: AOAM531NRqpgaKcJqqe2PJSZ+9zmbpuDBJZUw+6cXjTXErhKFUeowtR3
 9/CgYWNWcmo3rT00ybZXeHE=
X-Google-Smtp-Source: ABdhPJxlmLJZr5oGfYIiPaxKycigStTVDD38XMWUV8QGirPUEWNx0KNkJOZKmxNloM2OnZcTwZ2hgQ==
X-Received: by 2002:a63:a546:: with SMTP id r6mr10326072pgu.160.1601824955325; 
 Sun, 04 Oct 2020 08:22:35 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id c12sm9156251pfj.164.2020.10.04.08.22.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 08:22:34 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sun, 4 Oct 2020 23:22:30 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v4] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20201004152230.s2kxna2jl2uzlink@Rk>
References: <20201002235941.77062-1-coiby.xu@gmail.com>
 <20201003055348.GA100061@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201003055348.GA100061@f3>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBPY3QgMDMsIDIwMjAgYXQgMDI6NTM6NDhQTSArMDkwMCwgQmVuamFtaW4gUG9pcmll
ciB3cm90ZToKPk9uIDIwMjAtMTAtMDMgMDc6NTkgKzA4MDAsIENvaWJ5IFh1IHdyb3RlOgo+PiBU
aGlzIGZpeGVzIGNvbW1pdCAwMTA3NjM1ZTE1YWMKPj4gKCJzdGFnaW5nOiBxbGdlOiByZXBsYWNl
IHByX2VyciB3aXRoIG5ldGRldl9lcnIiKSB3aGljaCBpbnRyb2R1Y2VkIGFuCj4+IGJ1aWxkIGJy
ZWFrYWdlIG9mIG1pc3NpbmcgYHN0cnVjdCBxbF9hZGFwdGVyICpxZGV2YCBmb3Igc29tZSBmdW5j
dGlvbnMKPj4gYW5kIGEgd2FybmluZyBvZiB0eXBlIG1pc21hdGNoIHdpdGggZHVtcGluZyBlbmFi
bGVkLCBpLmUuLAo+Pgo+PiAkIG1ha2UgQ0ZMQUdTX01PRFVMRT0iLURRTF9BTExfRFVNUCAtRFFM
X09CX0RVTVAgLURRTF9DQl9EVU1QIFwKPj4gICAgIC1EUUxfSUJfRFVNUCAtRFFMX1JFR19EVU1Q
IC1EUUxfREVWX0RVTVAiIE09ZHJpdmVycy9zdGFnaW5nL3FsZ2UKPj4KPj4gcWxnZV9kYmcuYzog
SW4gZnVuY3Rpb24g4oCYcWxfZHVtcF9vYl9tYWNfcnNw4oCZOgo+PiBxbGdlX2RiZy5jOjIwNTE6
MTM6IGVycm9yOiDigJhxZGV24oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0
aW9uKTsgZGlkIHlvdSBtZWFuIOKAmGNkZXbigJk/Cj4+ICAyMDUxIHwgIG5ldGRldl9lcnIocWRl
di0+bmRldiwgIiVzXG4iLCBfX2Z1bmNfXyk7Cj4+ICAgICAgIHwgICAgICAgICAgICAgXn5+fgo+
PiBxbGdlX2RiZy5jOiBJbiBmdW5jdGlvbiDigJhxbF9kdW1wX3JvdXRpbmdfZW50cmllc+KAmToK
Pj4gcWxnZV9kYmcuYzoxNDM1OjEwOiB3YXJuaW5nOiBmb3JtYXQg4oCYJXPigJkgZXhwZWN0cyBh
cmd1bWVudCBvZiB0eXBlIOKAmGNoYXIgKuKAmSwgYnV0IGFyZ3VtZW50IDMgaGFzIHR5cGUg4oCY
aW504oCZIFstV2Zvcm1hdD1dCj4+ICAxNDM1IHwgICAgICAgICIlczogUm91dGluZyBNYXNrICVk
ID0gMHglLjA4eFxuIiwKPj4gICAgICAgfCAgICAgICAgIH5eCj4+ICAgICAgIHwgICAgICAgICAg
fAo+PiAgICAgICB8ICAgICAgICAgIGNoYXIgKgo+PiAgICAgICB8ICAgICAgICAgJWQKPj4gIDE0
MzYgfCAgICAgICAgaSwgdmFsdWUpOwo+PiAgICAgICB8ICAgICAgICB+Cj4+ICAgICAgIHwgICAg
ICAgIHwKPj4gICAgICAgfCAgICAgICAgaW50Cj4+IHFsZ2VfZGJnLmM6MTQzNTozNzogd2Fybmlu
ZzogZm9ybWF0IOKAmCV44oCZIGV4cGVjdHMgYSBtYXRjaGluZyDigJh1bnNpZ25lZCBpbnTigJkg
YXJndW1lbnQgWy1XZm9ybWF0PV0KPj4gIDE0MzUgfCAgICAgICAgIiVzOiBSb3V0aW5nIE1hc2sg
JWQgPSAweCUuMDh4XG4iLAo+PiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfn5+fl4KPj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
Cj4+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQg
aW50Cj4+Cj4+IE5vdGUgdGhhdCBub3cgcWxfZHVtcF9yeF9yaW5nL3FsX2R1bXBfdHhfcmluZyB3
b24ndCBjaGVjayBpZiB0aGUgcGFzc2VkCj4+IHBhcmFtZXRlciBpcyBhIG51bGwgcG9pbnRlci4K
Pj4KPj4gRml4ZXM6IDAxMDc2MzVlMTVhYyAoInN0YWdpbmc6IHFsZ2U6IHJlcGxhY2UgcHJfZXJy
IHdpdGggbmV0ZGV2X2VyciIpCj4+IFJlcG9ydGVkLWJ5OiBCZW5qYW1pbiBQb2lyaWVyIDxiZW5q
YW1pbi5wb2lyaWVyQGdtYWlsLmNvbT4KPj4gU3VnZ2VzdGVkLWJ5OiBCZW5qYW1pbiBQb2lyaWVy
IDxiZW5qYW1pbi5wb2lyaWVyQGdtYWlsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQ29pYnkgWHUg
PGNvaWJ5Lnh1QGdtYWlsLmNvbT4KPj4gLS0tCj4KPlJldmlld2VkLWJ5OiBCZW5qYW1pbiBQb2ly
aWVyIDxiZW5qYW1pbi5wb2lyaWVyQGdtYWlsLmNvbT4KClRoYW5rIHlvdSEgQnR3LCBJIGd1ZXNz
IHdoZW4gdGhpcyBwYXRjaCBpcyBwaWNrZWQsIHRoZSAiUmV2aWV3ZWQtYnkiIHRhZwp3aWxsIGFs
c28gYmUgaW5jbHVkZWQuIFNvIEkgbmVlZG4ndCB0byBzZW5kIGFub3RoZXIgcGF0Y2gsIGFtIEkg
cmlnaHQ/CgotLQpCZXN0IHJlZ2FyZHMsCkNvaWJ5Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
