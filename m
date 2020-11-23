Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A94EC2C03D3
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 12:09:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F20C86765;
	Mon, 23 Nov 2020 11:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N+jqVIOg2AnT; Mon, 23 Nov 2020 11:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A017486769;
	Mon, 23 Nov 2020 11:09:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30F5E1BF47A
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 11:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 18DA02002D
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 11:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1NcxyDAEdeLL for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 11:09:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C7E020009
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 11:09:39 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id s9so17476931ljo.11
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 03:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HjhWcAaLBjKIfTeObnhdOKRy227KwdAp+UqnwppLEWI=;
 b=WHelm+4QW3NjS5hvpThLZGiJxH5KsGlwbrRwZby2wckI/my8pTg1phIaEVYb5x3nnf
 HEkYvOiUAJmXgZnqtSXVyRbMM4ZJ55iBpMuPvtwJSeS8GvMiFcja1PeVAHJ/btpbpSte
 38U4fZ83Jqww1DP6RKVdhfR4hA3xYVOqDDax7sdr59HG59roaCv5Mui48v/LMDWKNYin
 W/E8Zp9fi/qP1wlba8m2I3h7wVWQDhbCRdlE97WIRVZ4vU/kHOc9zsZTTAcdl7XrlxFp
 W8NKttWDUTzB6sFWOa674LGXhTBnf6RhvDfm4t4PGp6FYefLP9q26r7HW4mMtDgv5B5J
 KYCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HjhWcAaLBjKIfTeObnhdOKRy227KwdAp+UqnwppLEWI=;
 b=XjHGlGNNwxkx/CvTQIWQ0fRmw8nv8n/28mYfwOzdQqF6idEk2k83SVqU0zvILa+Jz3
 UYPUtD1R2THINs9warjKR1XPNX3DFLQafOiRIFsFNx7owVEZ1ne9KRQ0bxV6VGK/04d2
 UGSsCtj5qA7/OvFY0bSjkHssd8A9+CJax4s39XDzLg4VykGDq+FFLKFomDX0R3z1j4Xf
 TrvZuxC6vzKK3RfZu2VDAj8cKUY7tYW5lhMy8RT4efGXzgveNEoGt+WByKgy6/Jal3TU
 GMN66LkMyroJYDq5+cgeU04RXDfGHek291WucpvAP65oo1hZVGiWFXKC4mTJX+hubdXo
 +oiw==
X-Gm-Message-State: AOAM533urto9kLMcHAIxIfbR2krWLSId+YAiYAegPgqQZpIljz4bUIBw
 P609yPbDuWG0XkarPLtilmk=
X-Google-Smtp-Source: ABdhPJyOFvVIdsi0jiEe2T330ZoRH2zbRtblSjL0rkMfbu56kP8aihxZt4/W61FVuc6ZGdm5iYBUgQ==
X-Received: by 2002:a2e:924e:: with SMTP id v14mr13723829ljg.264.1606129777498; 
 Mon, 23 Nov 2020 03:09:37 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id h4sm1339738lfk.224.2020.11.23.03.09.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Nov 2020 03:09:36 -0800 (PST)
Subject: Re: [PATCH v5 2/4] staging: media: Introduce NVIDIA Tegra video
 decoder driver
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
References: <cover.1513038011.git.digetx@gmail.com>
 <3d565db80f8dccafd14224924305243b37b75a07.1513038011.git.digetx@gmail.com>
 <CAAEAJfBZD0u6MDxcp3See-agzyCSJS7dKpwK28LMJwPvE9DLtQ@mail.gmail.com>
 <5665b221-04d7-6be9-2377-8006b9563d4b@gmail.com>
 <CAAEAJfAdGeFK7DNY3QzRZEsZx+PGbQtxyyOPwawmMsx2JByt8g@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <8372dd41-64b9-64e1-960d-7b20717d5c1e@gmail.com>
Date: Mon, 23 Nov 2020 14:09:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <CAAEAJfAdGeFK7DNY3QzRZEsZx+PGbQtxyyOPwawmMsx2JByt8g@mail.gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, devicetree <devicetree@vger.kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Stephen Warren <swarren@wwwdotorg.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Vladimir Zapolskiy <vz@mleia.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjMuMTEuMjAyMCAwNjowNywgRXplcXVpZWwgR2FyY2lhINC/0LjRiNC10YI6Cj4gT24gU2F0LCAy
MSBOb3YgMjAyMCBhdCAyMzowMSwgRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPiB3
cm90ZToKPj4KPj4gMjIuMTEuMjAyMCAwNDowMiwgRXplcXVpZWwgR2FyY2lhINC/0LjRiNC10YI6
Cj4+PiBIaSBEbWl0cnksCj4+Pgo+PiAuLi4KPj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvdGVncmEtdmRlL1RPRE8KPj4+PiBAQCAtMCwwICsxLDQgQEAKPj4+PiArVE9ETzoKPj4+PiAr
ICAgICAgIC0gSW1wbGVtZW50IFY0TDIgQVBJIG9uY2UgaXQgZ2FpbnMgc3VwcG9ydCBmb3Igc3Rh
dGVsZXNzIGRlY29kZXJzLgo+Pj4+ICsKPj4+PiArQ29udGFjdDogRG1pdHJ5IE9zaXBlbmtvIDxk
aWdldHhAZ21haWwuY29tPgo+Pj4KPj4+IFRoZSBBUEkgZm9yIEgyNjQgc3RhdGVsZXNzIGRlY29k
aW5nIGlzIHJlYWR5Lgo+Pj4gU2VlIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzExLzE4Lzc5
NS4KPj4KPj4gSGVsbG8gRXplcXVpZWwsCj4+Cj4+IFRoYW5rIHlvdSBmb3IgdGhlIG5vdGlmaWNh
dGlvbiEgTXkgbGFzdCBhdHRlbXB0IGF0IGltcGxlbWVudGluZyBWNEwgQVBJCj4+IHN1cHBvcnQg
d2FzIGFib3V0IGEgeWVhciBhZ28gYW5kIGl0IHN0b3BwZWQgb25jZSBJIHJlYWxpemVkIHRoYXQg
dGhlcmUKPj4gaXMgbm8gdXNlcnNwYWNlIHdoaWNoIHVzZXMgdGhhdCBBUEkuIEZGTVBFRyBhbmQg
Y2hyb21pdW0gYnJvd3NlciBoYWQKPj4gc29tZSBraW5kIG9mIFY0TCBzdXBwb3J0LCBidXQgaXQg
YWxsIHdhcyBvcmllbnRlZCBhdCBkb3duc3RyZWFtIGRyaXZlcgo+PiBzdGFja3MsIGFuZCB0aHVz
LCBub3QgdXNhYmxlLiBEbyB5b3Uga25vdyB3aGF0IGlzIHRoZSBjdXJyZW50IHN0YXR1cz8KPj4K
PiAKPiBUaGUgYnVsayBvZiB0aGUgQVBJLCB3aGljaCByZWxpZXMgb24gdGhlIHN0YXRlbGVzcyBk
ZWNvZGVyIGludGVyZmFjZSBbMV0sCj4gYW5kIEgyNjQgc3RhdGVsZXNzIFY0TDIgY29udHJvbHMg
aGFzIGJlZW4gcmVhZHkgZm9yIHNvbWUgdGltZSBub3csCj4gYW5kIHRoZXJlIGFyZSB2YXJpb3Vz
IGltcGxlbWVudGF0aW9ucyBzdXBwb3J0aW5nIGl0Lgo+IAo+IENocm9taXVtIHN1cHBvcnRzIGl0
IFsyXSwgYW5kIEkndmUgdGVzdGVkIGl0IG9uIGNocm9tZWJvb2tzLAo+IHRocm91Z2ggY2hyb21l
b3MgYnVpbGRzLiBXZSBoYXZlbid0IHRyaWVkIGEgbm9uLWNocm9tZW9zIGJ1aWxkLAo+IGFuZCBJ
IHdvdWxkIHNheSBpdCdzIHF1aXRlIHNvbWUgd29yay4KPiAKPiBHU3RyZWFtZXIgc3VwcG9ydCBp
cyBhdmFpbGFibGUgYXMgd2VsbC4gU2VlIFszXSB3aGljaCBzaG91bGQKPiB3b3JrIGZvciB0aGUg
bGF0ZXN0IEgyNjQgY29udHJvbHMgKHRoZSBvbmVzIGJlaW5nIG1vdmVkIG91dCBvZiBzdGFnaW5n
KS4KPiAKPiBMaWJyZUVMRUMgZGV2ZWxvcGVycyBtYWludGFpbiBhbiBGZm1wZWcgYnJhbmNoIFs0
XSwgSSBleHBlY3QgaXQgd2lsbAo+IGJlIHVwZGF0ZWQgZm9yIHRoZSBsYXRlc3QgSDI2NCBjb250
cm9scyBzb29uLCBhbmQgaG9wZWZ1bGx5IG1lcmdlZAo+IGluIG1haW5saW5lIEZmbXBlZy4KPiAK
PiBHU3RyZWFtZXIgYW5kIEZmbXBlZyBhcmUgcmVsYXRpdmVseSBzdHJhaWdodGZvcndhcmQgdG8g
YnVpbGQgYW5kIHRlc3QuCj4gCj4gVGhhbmtzLAo+IEV6ZXF1aWVsCj4gCj4gWzFdIGh0dHBzOi8v
d3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2Rl
di1zdGF0ZWxlc3MtZGVjb2Rlci5odG1sCj4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9jaHJvbWl1
bS9jaHJvbWl1bS90cmVlL21hc3Rlci9tZWRpYS9ncHUvdjRsMgo+IFszXSBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZXplcXVpZWxnYXJjaWEvZ3N0LXBsdWdpbnMtYmFkLy0vdHJlZS9o
MjY0X3N0YWJsZV91YXBpCj4gWzRdIGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vRkZtcGVnL3Ry
ZWUvdjRsMi1yZXF1ZXN0LWh3YWNjZWwtNC4zLgoKQWxyaWdodCwgdGhhbmsgeW91LgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
