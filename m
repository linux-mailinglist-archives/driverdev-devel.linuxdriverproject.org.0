Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C982D9579
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 10:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C8348750F;
	Mon, 14 Dec 2020 09:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEaMyt3ZNCS4; Mon, 14 Dec 2020 09:48:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06674874F2;
	Mon, 14 Dec 2020 09:48:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62E741BF29C
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 09:48:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 571BE874F7
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 09:48:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qM6eEHO9Hqwt for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 09:48:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 83631874F2
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 09:48:34 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id l11so28582166lfg.0
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 01:48:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=XI8TdlR3KcMv59VM3giX3zxtKyG7BK96h7ee6Dtc+Hc=;
 b=QVoIvbacGv8ry40WGMBi+CnRtVQINP5MJEtDyILuVmDonoeXlUpuNAdp7RKmvqsPf3
 PVSk2VeRPve+zPE0q6v/PVHOLg7ukJtNHmrLa6TNKoD2Fgf7BSB7hR9J03IbGod6NGw6
 7X3N3h406Dhw8ZF4dFHNr7SUfOSXcWGTxxelaLmR0yAh/N443Gx/HTJfURhsJm3uxkf1
 1IDOZ0alj04EOVf89SEUIS0whuM3tNv3j4lLyS8PJ3hNYuWvsmJS3eVZQTzoQ/rqdjmw
 OAVm6UvUBF8EQfj26R3FOdUrYG5Lqv1zUZbeRf2NMv7f75qLrL9KIMLaL50OUecVeWU4
 Wvaw==
X-Gm-Message-State: AOAM533hUtyfH9TgV453yg8e199K/hv8V1jHMxLsxKuxkNTLbfBhKQq4
 Dc+4QXbhXTQqqUutsplPrZs=
X-Google-Smtp-Source: ABdhPJzoXnESclP7EEY5c7fTHL1+1OzuylVaGV8TahwEqlVO46WsRCD6UF4zYmlvyqmYFwYCQk0Iqw==
X-Received: by 2002:a2e:4c11:: with SMTP id z17mr8151164lja.364.1607939312667; 
 Mon, 14 Dec 2020 01:48:32 -0800 (PST)
Received: from xi.terra (c-b3cbe455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.203.179])
 by smtp.gmail.com with ESMTPSA id f19sm1795161ljm.7.2020.12.14.01.48.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Dec 2020 01:48:31 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1kokSx-0006f4-S3; Mon, 14 Dec 2020 10:48:27 +0100
Date: Mon, 14 Dec 2020 10:48:27 +0100
From: Johan Hovold <johan@kernel.org>
To: "wanghai (M)" <wanghai38@huawei.com>
Subject: Re: [PATCH] staging: greybus: audio: Fix possible leak free widgets
 in gbaudio_dapm_free_controls
Message-ID: <X9c06wvYreO2h8uP@localhost>
References: <20201205103827.31244-1-wanghai38@huawei.com>
 <X89IxvbYWjuyaQDT@localhost>
 <ed57715b-c524-4726-3eaf-434af96d2d92@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed57715b-c524-4726-3eaf-434af96d2d92@huawei.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vaibhav.sr@gmail.com,
 gregkh@linuxfoundation.org, Johan Hovold <johan@kernel.org>,
 aibhav.sr@gmail.com, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBEZWMgMTEsIDIwMjAgYXQgMDg6Mjk6MjJQTSArMDgwMCwgd2FuZ2hhaSAoTSkgd3Jv
dGU6Cj4gCj4g5ZyoIDIwMjAvMTIvOCAxNzozNSwgSm9oYW4gSG92b2xkIOWGmemBkzoKPiA+IE9u
IFNhdCwgRGVjIDA1LCAyMDIwIGF0IDA2OjM4OjI3UE0gKzA4MDAsIFdhbmcgSGFpIHdyb3RlOgo+
ID4+IEluIGdiYXVkaW9fZGFwbV9mcmVlX2NvbnRyb2xzKCksIGlmIG9uZSBvZiB0aGUgd2lkZ2V0
cyBpcyBub3QgZm91bmQsIGFuIGVycm9yCj4gPj4gd2lsbCBiZSByZXR1cm5lZCBkaXJlY3RseSwg
d2hpY2ggd2lsbCBjYXVzZSB0aGUgcmVzdCB0byBiZSB1bmFibGUgdG8gYmUgZnJlZWQsCj4gPj4g
cmVzdWx0aW5nIGluIGxlYWsuCj4gPj4KPiA+PiBUaGlzIHBhdGNoIGZpeGVzIHRoZSBidWcuIElm
IGlmIG9uZSBvZiB0aGVtIGlzIG5vdCBmb3VuZCwganVzdCBza2lwIGFuZCBmcmVlIHRoZSBvdGhl
cnMuCj4gPiBBcGFydCBmcm9tIHRoZSB0eXBvLCBwbGVhc2UgYnJlYWsgeW91ciBsaW5lcyBhdCA3
MiBjb2x1bW5zIG9yIHNvIChub3QKPiA+IG5lZWRlZCBmb3IgdGhlIEZpeGVzIHRhZykuCj4KPiBU
aGFua3MgZm9yIHJldmlldyzCoCBEbyBJIG5lZWQgdG8gc2VuZCBhIHYyIHBhdGNoIHRvIGNoYW5n
ZSB0aGUgY29tbWl0IG1zZz8KCkknbSBub3Qgc3VyZSB5b3VyIG1haWwgcmVhY2hlZCB0aGUgbGlz
dHMgc2luY2UgaXQgY29udGFpbnMgSFRNTCwgYnV0IHRvCmFuc3dlciB5b3VyIHF1ZXN0aW9uOiBQ
bGVhc2UgZG8gcmVzZW5kLiBJZiB5b3UgY2FuIG1ha2UgdGhlIG1haW50YWluZXJzJwpsaWZlIGFu
eSBlYXNpZXIgdGhhdCdzIGFsd2F5cyBhIGdvb2QgaWRlYS4KCllvdSBzaG91bGQgaW5jbHVkZSB0
aGUgUmV2aWV3ZWQtYnkgdGFncyB5b3UndmUgZ290dGVuIHNvIGZhciB3aGVuCnJlc2VuZGluZyBh
cyBsb25nIGFzIHlvdSBvbmx5IHVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UuCgpKb2hhbgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
